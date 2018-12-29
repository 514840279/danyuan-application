/**
 * 文件名：SysPlantChartDimensionGroupService.java 版本信息： 日期：2018年5月22日 Copyright 足下 Corporation 2018 版权所有
 */
package org.danyuan.application.dbms.chart.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.dbms.chart.dao.SysDbmsChartDimensionGroupDao;
import org.danyuan.application.dbms.chart.po.SysDbmsChartDimensionGroup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

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
public class SysDbmsChartDimensionGroupService extends BaseServiceImpl<SysDbmsChartDimensionGroup> implements BaseService<SysDbmsChartDimensionGroup> {
	
	@Autowired
	SysDbmsChartDimensionGroupDao sysDbmsChartDimensionGroupDao;
	
	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#findOne(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public SysDbmsChartDimensionGroup findOne(SysDbmsChartDimensionGroup info) {
		System.err.println(info.toString());
		Example<SysDbmsChartDimensionGroup> example = Example.of(info);
		Optional<SysDbmsChartDimensionGroup> group = sysDbmsChartDimensionGroupDao.findOne(example);
		if (group.isPresent()) {
			return group.get();
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
	public List<SysDbmsChartDimensionGroup> findAll(SysDbmsChartDimensionGroup info) {
		Example<SysDbmsChartDimensionGroup> example = Example.of(info);
		return sysDbmsChartDimensionGroupDao.findAll(example);
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
	public Page<SysDbmsChartDimensionGroup> page(Pagination<SysDbmsChartDimensionGroup> vo) {
		List<Order> orders = new ArrayList<>();
		if (vo.getSortName() != null) {
			orders = vo.getOrders();
		} else {
			Order order = new Order(Direction.ASC, "createTime");
			orders.add(order);
		}
		if (vo.getInfo() == null) {
			vo.setInfo(new SysDbmsChartDimensionGroup());
		}
		
		Sort sort = Sort.by(orders);
		PageRequest request = PageRequest.of(vo.getPageNumber() - 1, vo.getPageSize(), sort);
		return sysDbmsChartDimensionGroupDao.findAll(new Specification<SysDbmsChartDimensionGroup>() {
			
			/**
			 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
			 */
			private static final long serialVersionUID = 1L;
			
			@Override
			public Predicate toPredicate(Root<SysDbmsChartDimensionGroup> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				return cb.like(root.get("title"), "%" + vo.getInfo().getTitle() + "%");
			}
		}, request);
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#save(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void saveAll(List<SysDbmsChartDimensionGroup> list) {
		sysDbmsChartDimensionGroupDao.saveAll(list);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#delete(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(SysDbmsChartDimensionGroup info) {
		sysDbmsChartDimensionGroupDao.delete(info);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#delete(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void deleteAll(List<SysDbmsChartDimensionGroup> list) {
		sysDbmsChartDimensionGroupDao.deleteAll(list);
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
		sysDbmsChartDimensionGroupDao.deleteAllInBatch();
	}
	
}
