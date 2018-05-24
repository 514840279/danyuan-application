/**
 * 文件名：TaskRuleService.java 版本信息： 日期：2018年5月8日 Copyright 足下 Corporation 2018 版权所有
 */
package tk.ainiyue.danyuan.application.crawler.task.service;

import java.util.ArrayList;
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
import tk.ainiyue.danyuan.application.crawler.task.dao.TaskRuleDao;
import tk.ainiyue.danyuan.application.crawler.task.po.TaskRule;

/**
 * 文件名 ： TaskRuleService.java
 * 包 名 ： com.shumeng.application.application.crawler.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年5月8日 上午10:09:19
 * 版 本 ： V1.0
 */
@Service
public class TaskRuleService implements BaseService<TaskRule> {
	
	@Autowired
	TaskRuleDao taskRuleDao;
	
	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#findOne(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public TaskRule findOne(TaskRule info) {
		Example<TaskRule> ex = Example.of(info);
		return taskRuleDao.findOne(ex);
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
	public List<TaskRule> findAll(TaskRule info) {
		return taskRuleDao.findAll();
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
	public Page<TaskRule> page(int pageNumber, int pageSize, TaskRule info, Map<String, String> map, Order... order) {
		System.err.println(info.toString());
		// Example<Task> example = Example.of(info);
		Sort sort = new Sort(order);
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		Page<TaskRule> page = taskRuleDao.findAll(new Specification<TaskRule>() {
			
			@Override
			public Predicate toPredicate(Root<TaskRule> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> list = new ArrayList<>();
				// for (String st : map.keySet()) {
				// list.add(cb.equal(root.get(st).as(String.class), map.get(st)));
				// }
				System.err.println(root.get("id").get("id").as(String.class));
				list.add(cb.equal(root.get("id").get("id").as(String.class), info.getId().getId()));
				return cb.and(list.toArray(new Predicate[list.size()]));
			}
		}, request);
		return page;
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#save(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void save(TaskRule info) {
		
		taskRuleDao.save(info);
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#save(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void save(List<TaskRule> list) {
		taskRuleDao.save(list);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#delete(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(TaskRule info) {
		taskRuleDao.delete(info);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#delete(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(List<TaskRule> list) {
		taskRuleDao.delete(list);
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
		taskRuleDao.deleteAllInBatch();
	}
	
}
