/**
 * 文件名：SysPlantChartDimensionService.java 版本信息： 日期：2018年5月22日 Copyright 足下 Corporation 2018 版权所有
 */
package org.danyuan.application.dbms.chart.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.dbms.chart.dao.SysDbmsChartDimensionDao;
import org.danyuan.application.dbms.chart.po.SysDbmsChartDimension;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysPlantChartDimensionService.java
 * 包 名 ： com.shumeng.application.application.plant.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年5月22日 下午2:39:55
 * 版 本 ： V1.0
 */
@Service
public class SysDbmsChartDimensionService extends BaseServiceImpl<SysDbmsChartDimension> implements BaseService<SysDbmsChartDimension> {
	
	@Autowired
	SysDbmsChartDimensionDao sysDbmsChartDimensionDao;
	
	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#findOne(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public SysDbmsChartDimension findOne(SysDbmsChartDimension info) {
		Example<SysDbmsChartDimension> example = Example.of(info);
		Optional<SysDbmsChartDimension> dimension = sysDbmsChartDimensionDao.findOne(example);
		if (dimension.isPresent()) {
			return dimension.get();
		}
		return null;
	}
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#findAll(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public List<SysDbmsChartDimension> findAll(SysDbmsChartDimension info) {
		Example<SysDbmsChartDimension> example = Example.of(info);
		Order order = new Order(Direction.ASC, "dimeOrder");
		Sort sort = Sort.by(order);
		return sysDbmsChartDimensionDao.findAll(example, sort);
	}
	
	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param pageNumber
	 * 参 数 ： @param pageSize
	 * 参 数 ： @param info
	 * 参 数 ： @param map
	 * 参 数 ： @param order
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#page(int, int, java.lang.Object, java.util.Map, org.springframework.data.domain.Sort.Order[])
	 * 作 者 ： Administrator
	 */
	
	@Override
	public Page<SysDbmsChartDimension> page(Pagination<SysDbmsChartDimension> vo) {
		List<Order> orders = new ArrayList<>();
		if (vo.getSortName() != null) {
			orders = vo.getOrders();
		} else {
			Order order = new Order(Direction.ASC, "createTime");
			orders.add(order);
		}
		if (vo.getInfo() == null) {
			vo.setInfo(new SysDbmsChartDimension());
		}
		
		Example<SysDbmsChartDimension> example = Example.of(vo.getInfo());
		Sort sort = Sort.by(orders);
		PageRequest request = PageRequest.of(vo.getPageNumber() - 1, vo.getPageSize(), sort);
		return sysDbmsChartDimensionDao.findAll(example, request);
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#save(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void saveAll(List<SysDbmsChartDimension> list) {
		sysDbmsChartDimensionDao.saveAll(list);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#delete(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(SysDbmsChartDimension info) {
		sysDbmsChartDimensionDao.delete(info);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#delete(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void deleteAll(List<SysDbmsChartDimension> list) {
		sysDbmsChartDimensionDao.deleteAll(list);
	}
	
	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ：
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#trunc()
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void trunc() {
		sysDbmsChartDimensionDao.deleteAllInBatch();
	}
	
	/**
	 * 方法名： updBefor
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param task
	 * 参 数： @return
	 * 返 回： SysPlantChartDimension
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysDbmsChartDimension updBefor(SysDbmsChartDimension task) {
		return null;
	}
	
	/**
	 * 方法名： findAllDime
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param info
	 * 参 数： @return
	 * 返 回： List<SysPlantChartDimension>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public List<SysDbmsChartDimension> findAllDime() {
		// Example<SysPlantChartDimension> example = Example.of(info);
		// Order order = new Order(Direction.ASC, "dimeOrder");
		// Sort sort = new Sort(order);
		return sysDbmsChartDimensionDao.findAllDime();
	}
	
	/**
	 * 方法名： changeGroup
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param info
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void changeGroup(SysDbmsChartDimension info) {
		sysDbmsChartDimensionDao.changeGroup(info.getUuid(), info.getGroupUuid());
	}
	
}
