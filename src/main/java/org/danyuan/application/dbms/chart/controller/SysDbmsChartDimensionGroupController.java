/**
 * 文件名：SysPlantChartDimensionController.java 版本信息： 日期：2018年5月22日 Copyright 足下 Corporation 2018 版权所有
 */
package org.danyuan.application.dbms.chart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.dbms.chart.po.SysDbmsChartDimensionGroup;
import org.danyuan.application.dbms.chart.service.SysDbmsChartDimensionGroupService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * 文件名 ： SysPlantChartDimensionController.java
 * 包 名 ： com.shumeng.application.application.plant.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年5月22日 下午2:48:38
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysPlantChartDimensionGroup")
public class SysDbmsChartDimensionGroupController {
	private static final Logger			logger	= LoggerFactory.getLogger(SysDbmsChartDimensionGroupController.class);
	@Autowired
	SysDbmsChartDimensionGroupService	sysDbmsChartDimensionGroupService;
	
	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<SysDbmsChartDimensionGroup> page(@RequestBody Pagination<SysDbmsChartDimensionGroup> vo) {
		logger.info("page", SysDbmsChartDimensionGroupController.class);
		
		return sysDbmsChartDimensionGroupService.page(vo);
	}
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/findAll", method = RequestMethod.POST)
	public List<SysDbmsChartDimensionGroup> findAll(@RequestBody SysDbmsChartDimensionGroup info) {
		logger.info("findAll", SysDbmsChartDimensionGroupController.class);
		return sysDbmsChartDimensionGroupService.findAll(info);
	}
	
	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/findOne", method = RequestMethod.POST)
	public SysDbmsChartDimensionGroup findOne(@RequestBody SysDbmsChartDimensionGroup info) {
		logger.info("findOne", SysDbmsChartDimensionGroupController.class);
		return sysDbmsChartDimensionGroupService.findOne(info);
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public Map<String, String> save(@RequestBody SysDbmsChartDimensionGroup info) {
		logger.info("save", SysDbmsChartDimensionGroupController.class);
		if (info.getUuid() == null || "".equals(info.getUuid())) {
			info.setUuid(UUID.randomUUID().toString());
		}
		sysDbmsChartDimensionGroupService.save(info);
		Map<String, String> map = new HashMap<>();
		map.put("uuid", info.getUuid());
		return map;
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/saveAll", method = RequestMethod.POST)
	public String save(@RequestBody Pagination<SysDbmsChartDimensionGroup> vo) {
		logger.info("save", SysDbmsChartDimensionGroupController.class);
		sysDbmsChartDimensionGroupService.saveAll(vo.getList());
		return "1";
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/deleteAll", method = RequestMethod.POST)
	public String delete(@RequestBody Pagination<SysDbmsChartDimensionGroup> vo) {
		logger.info("delete", SysDbmsChartDimensionGroupController.class);
		sysDbmsChartDimensionGroupService.deleteAll(vo.getList());
		return "1";
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(@RequestBody SysDbmsChartDimensionGroup info) {
		logger.info("delete", SysDbmsChartDimensionGroupController.class);
		sysDbmsChartDimensionGroupService.delete(info);
		return "1";
	}
	
	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/trunc", method = RequestMethod.POST)
	public String trunc() {
		logger.info("trunc", SysDbmsChartDimensionGroupController.class);
		sysDbmsChartDimensionGroupService.trunc();
		return "1";
	}
	
	@RequestMapping(path = "/addBefor", method = RequestMethod.GET)
	public ModelAndView addBefor(HttpServletRequest request) {
		logger.info("addBefor", SysDbmsChartDimensionGroupController.class);
		ModelAndView view = new ModelAndView("plant/group/add");
		SysDbmsChartDimensionGroup group = new SysDbmsChartDimensionGroup();
		group.setUuid(request.getParameter("uuid"));
		if (group.getUuid() == null || "".equals(group.getUuid())) {
			view.addObject("sysPlantChartDimensionGroup", group);
		} else {
			group = sysDbmsChartDimensionGroupService.findOne(group);
			view.addObject("sysPlantChartDimensionGroup", group);
		}
		System.err.println(group.toString());
		return view;
	}
	
}
