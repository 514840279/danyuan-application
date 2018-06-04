/**
 * 文件名：SysPlantChartDimensionGroupService.java
 *
 * 版本信息：
 * 日期：2018年5月22日
 * Copyright 足下 Corporation 2018
 * 版权所有
 */
package tk.ainiyue.danyuan.application.dbms.chart.service;

import java.util.List;
import java.util.Map;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Order;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.common.base.BaseService;
import tk.ainiyue.danyuan.application.dbms.chart.dao.SysPlantChartDimensionGroupDao;
import tk.ainiyue.danyuan.application.dbms.chart.po.SysPlantChartDimensionGroup;

/**
 * 文件名 ： SysPlantChartDimensionGroupService.java
 * 包 名 ： com.shumeng.application.application.plant.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年5月22日 下午2:29:54
 * 版 本 ： V1.0
 */
@Service
public class SysPlantChartDimensionGroupService implements BaseService<SysPlantChartDimensionGroup> {
	
	@Autowired
	SysPlantChartDimensionGroupDao sysPlantChartDimensionGroupDao;
	
	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#findOne(java.lang.Object)
	 * 作 者 ： Administrator
	 */

	@Override
	public SysPlantChartDimensionGroup findOne(SysPlantChartDimensionGroup info) {
		System.err.println(info.toString());
		Example<SysPlantChartDimensionGroup> example = Example.of(info);
		return sysPlantChartDimensionGroupDao.findOne(example);
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
	public List<SysPlantChartDimensionGroup> findAll(SysPlantChartDimensionGroup info) {
		Example<SysPlantChartDimensionGroup> example = Example.of(info);
		return sysPlantChartDimensionGroupDao.findAll(example);
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
	public Page<SysPlantChartDimensionGroup> page(int pageNumber, int pageSize, SysPlantChartDimensionGroup info, Map<String, String> map, Order... order) {
		// Example<SysPlantChartDimensionGroup> example = Example.of(info);
		Sort sort = new Sort(order);
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		return sysPlantChartDimensionGroupDao.findAll(new Specification<SysPlantChartDimensionGroup>() {
			
			@Override
			public Predicate toPredicate(Root<SysPlantChartDimensionGroup> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				// TODO Auto-generated method stub

				return cb.like(root.get("title"), "%" + info.getTitle() + "%");
			}
		}, request);
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#save(java.lang.Object)
	 * 作 者 ： Administrator
	 */

	@Override
	public void save(SysPlantChartDimensionGroup info) {
		sysPlantChartDimensionGroupDao.save(info);
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#save(java.util.List)
	 * 作 者 ： Administrator
	 */

	@Override
	public void save(List<SysPlantChartDimensionGroup> list) {
		sysPlantChartDimensionGroupDao.save(list);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#delete(java.lang.Object)
	 * 作 者 ： Administrator
	 */

	@Override
	public void delete(SysPlantChartDimensionGroup info) {
		sysPlantChartDimensionGroupDao.delete(info);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#delete(java.util.List)
	 * 作 者 ： Administrator
	 */

	@Override
	public void delete(List<SysPlantChartDimensionGroup> list) {
		sysPlantChartDimensionGroupDao.delete(list);
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
		sysPlantChartDimensionGroupDao.deleteAllInBatch();
	}

}
