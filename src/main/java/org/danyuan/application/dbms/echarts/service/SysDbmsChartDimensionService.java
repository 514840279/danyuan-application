package org.danyuan.application.dbms.echarts.service;

import java.util.ArrayList;
import java.util.List;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.dbms.echarts.dao.SysDbmsChartDimensionDao;
import org.danyuan.application.dbms.echarts.po.SysDbmsChartDimension;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

/**
 * @文件名 SysDbmsChartDimensionService.java
 * @包名 org.danyuan.application.dbms.echarts.service
 * @描述 service层
 * @时间 2020年04月25日 12:15:42
 * @author test
 * @版本 V1.0
 */
@Service
public class SysDbmsChartDimensionService extends BaseServiceImpl<SysDbmsChartDimension> implements BaseService<SysDbmsChartDimension> {
	@Autowired
	SysDbmsChartDimensionDao sysDbmsChartDimensionDao;
	
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
			Order order;
			if (vo.getSortOrder().equals("desc")) {
				order = Order.desc(vo.getSortName());
			} else {
				order = Order.asc(vo.getSortName());
			}
			orders.add(order);
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
