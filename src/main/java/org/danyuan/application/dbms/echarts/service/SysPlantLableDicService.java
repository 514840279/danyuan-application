/**
 * 文件名：SysPlantLableDicService.java
 *
 * 版本信息：
 * 日期：2018年6月13日
 * Copyright 足下 Corporation 2018
 * 版权所有
 */
package org.danyuan.application.dbms.echarts.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.dbms.echarts.dao.SysPlantLableDicDao;
import org.danyuan.application.dbms.echarts.po.SysPlantLableDic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysPlantLableDicService.java
 * 包 名 ： com.shumeng.application.application.plant.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年6月13日 下午2:19:21
 * 版 本 ： V1.0
 */
@Service
public class SysPlantLableDicService extends BaseServiceImpl<SysPlantLableDic> implements BaseService<SysPlantLableDic> {

	@Autowired
	SysPlantLableDicDao sysPlantLableDicDao;
	
	/**
	 * 方法名： findAllByParentId
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param info
	 * 参 数： @return
	 * 返 回： List<SysPlantLableDic>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public List<SysPlantLableDic> findAllByParentId(SysPlantLableDic info) {
		Order order = new Order(Direction.ASC, "keyOrder");
		Sort sort = Sort.by(order);
		return sysPlantLableDicDao.findAll(new Specification<SysPlantLableDic>() {
			/**
			 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
			 */
			private static final long serialVersionUID = 1L;
			
			@Override
			public Predicate toPredicate(Root<SysPlantLableDic> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> list = new ArrayList<>();
				if (info.getTypeUuid() != null) {
					list.add(cb.equal(root.get("typeUuid").as(String.class), info.getTypeUuid()));
				}
				if (info.getParentId() == null) {
					list.add(cb.isNull(root.get("parentId").as(String.class)));
				} else {
					list.add(cb.equal(root.get("parentId").as(String.class), info.getParentId()));

				}
				return cb.and(list.toArray(new Predicate[list.size()]));
			}
		}, sort);
	}
	
}
