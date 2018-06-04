/**
 * 文件名：SysPlantChartDimensionService.java
 *
 * 版本信息：
 * 日期：2018年5月22日
 * Copyright 足下 Corporation 2018
 * 版权所有
 */
package tk.ainiyue.danyuan.application.dbms.chart.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.common.base.BaseService;
import tk.ainiyue.danyuan.application.dbms.chart.dao.SysPlantChartDimensionDao;
import tk.ainiyue.danyuan.application.dbms.chart.po.SysPlantChartDimension;

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
public class SysPlantChartDimensionService implements BaseService<SysPlantChartDimension> {

	@Autowired
	SysPlantChartDimensionDao sysPlantChartDimensionDao;

	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#findOne(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public SysPlantChartDimension findOne(SysPlantChartDimension info) {
		Example<SysPlantChartDimension> example = Example.of(info);
		return sysPlantChartDimensionDao.findOne(example);
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
	public List<SysPlantChartDimension> findAll(SysPlantChartDimension info) {
		Example<SysPlantChartDimension> example = Example.of(info);
		Order order = new Order(Direction.ASC, "dimeOrder");
		Sort sort = new Sort(order);
		return sysPlantChartDimensionDao.findAll(example, sort);
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
	public Page<SysPlantChartDimension> page(int pageNumber, int pageSize, SysPlantChartDimension info, Map<String, String> map, Order... order) {
		Example<SysPlantChartDimension> example = Example.of(info);
		Sort sort = new Sort(order);
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		return sysPlantChartDimensionDao.findAll(example, request);
	}

	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#save(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void save(SysPlantChartDimension info) {
		sysPlantChartDimensionDao.save(info);
		
	}

	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#save(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void save(List<SysPlantChartDimension> list) {
		sysPlantChartDimensionDao.save(list);
	}

	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#delete(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(SysPlantChartDimension info) {
		sysPlantChartDimensionDao.delete(info);
	}

	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#delete(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(List<SysPlantChartDimension> list) {
		sysPlantChartDimensionDao.delete(list);
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
		sysPlantChartDimensionDao.deleteAllInBatch();
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
	public SysPlantChartDimension updBefor(SysPlantChartDimension task) {
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
	public List<SysPlantChartDimension> findAllDime() {
		// Example<SysPlantChartDimension> example = Example.of(info);
		// Order order = new Order(Direction.ASC, "dimeOrder");
		// Sort sort = new Sort(order);
		return sysPlantChartDimensionDao.findAllDime();
	}

	/**
	 * 方法名： changeGroup
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param info
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void changeGroup(SysPlantChartDimension info) {
		sysPlantChartDimensionDao.changeGroup(info.getUuid(), info.getGroupUuid());
	}
	
}
