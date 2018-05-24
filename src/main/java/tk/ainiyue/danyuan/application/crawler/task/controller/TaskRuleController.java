/**
 * 文件名：TaskRuleController.java 版本信息： 日期：2018年5月8日 Copyright 足下 Corporation 2018 版权所有
 */
package tk.ainiyue.danyuan.application.crawler.task.controller;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.common.base.Pagination;
import tk.ainiyue.danyuan.application.crawler.task.po.TaskRule;
import tk.ainiyue.danyuan.application.crawler.task.po.TaskRulePK;
import tk.ainiyue.danyuan.application.crawler.task.service.TaskRuleService;

/**
 * 文件名 ： TaskRuleController.java
 * 包 名 ： com.shumeng.application.application.crawler.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年5月8日 上午10:18:53
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/taskRule")
@Api(value = "/TaskRuleController", description = "爬虫任务")
public class TaskRuleController {
	//
	private static final Logger	logger	= LoggerFactory.getLogger(TaskRuleController.class);
	
	@Autowired
	TaskRuleService				taskRuleService;
	
	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseController#page(com.shumeng.application.common.base.Pagination)
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "查询全部信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<TaskRule> page(@RequestBody Pagination<TaskRule> vo) {
		logger.info("page", TaskController.class);
		Order order = new Order(Direction.DESC, "updateTime");
		if (vo.getSortName() != null) {
			order = new Order(vo.getOrder(), vo.getSortName());
		}
		return taskRuleService.page(vo.getPageNumber().intValue(), vo.getPageSize().intValue(), vo.getInfo(), vo.getMap(), order);
		
	}
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseController#findAll(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	public List<TaskRule> findAll(TaskRule info) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseController#findOne(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	public String findOne(TaskRule info) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseController#save(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "新建信息", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public String save(@RequestBody TaskRule info) {
		if (info.getId().getRuleId() == null) {
			info.getId().setRuleId(UUID.randomUUID().toString());
		}
		taskRuleService.save(info);
		return "1";
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseController#save(com.shumeng.application.common.base.Pagination)
	 * 作 者 ： Administrator
	 */
	
	public String save(Pagination<TaskRule> vo) {
		
		return null;
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseController#delete(com.shumeng.application.common.base.Pagination)
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "删除信息", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(@RequestBody Pagination<TaskRule> vo) {
		taskRuleService.delete(vo.getList());
		return "1";
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseController#delete(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	public String delete(TaskRule info) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseController#trunc()
	 * 作 者 ： Administrator
	 */
	
	public String trunc() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@ApiOperation(hidden = true, value = "/addBefor")
	@RequestMapping(path = "/addBefor", method = RequestMethod.GET)
	public ModelAndView addBefor(HttpServletRequest request) {
		logger.info("addBefor", TaskController.class);
		ModelAndView view = new ModelAndView("crawler/ruleadd");
		TaskRule tr = new TaskRule();
		TaskRulePK pk = new TaskRulePK();
		pk.setId(request.getParameter("id"));
		tr.setId(pk);
		view.addObject("taskRule", tr);
		return view;
	}
	
	@ApiOperation(hidden = true, value = "/addBefor")
	@RequestMapping(path = "/updBefor", method = RequestMethod.GET)
	public ModelAndView updBefor(HttpServletRequest request) {
		logger.info("updBefor", TaskController.class);
		ModelAndView view = new ModelAndView("crawler/ruleadd");
		TaskRule tr = new TaskRule();
		TaskRulePK pk = new TaskRulePK();
		pk.setId(request.getParameter("id"));
		pk.setRuleId(request.getParameter("ruleId"));
		tr.setId(pk);
		tr = taskRuleService.findOne(tr);
		view.addObject("taskRule", tr);
		return view;
	}
	
}
