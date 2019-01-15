/**
 * 文件名：SysPlantLableDicController.java
 *
 * 版本信息：
 * 日期：2018年6月13日
 * Copyright 足下 Corporation 2018
 * 版权所有
 */
package org.danyuan.application.dbms.echarts.controller;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.dbms.echarts.po.SysPlantLableDic;
import org.danyuan.application.dbms.echarts.service.SysPlantLableDicService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * 文件名 ： SysPlantLableDicController.java
 * 包 名 ： com.shumeng.application.application.plant.controller
 * 描 述 ： 平台分析标签管理
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年6月13日 下午2:28:06
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysPlantLableDic")
@Api(value = "/SysPlantLableDic", description = "平台分析标签管理")
public class SysPlantLableDicController {
	private static final Logger	logger	= LoggerFactory.getLogger(SysPlantLableDicController.class);
	@Autowired
	SysPlantLableDicService		sysPlantLableDicService;

	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "查询全部信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<SysPlantLableDic> page(@RequestBody Pagination<SysPlantLableDic> vo) {
		logger.info("page", SysPlantLableDicController.class);
		return sysPlantLableDicService.page(vo);

	}

	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "查询全部信息", notes = "")
	@RequestMapping(path = "/findAll", method = { RequestMethod.POST, RequestMethod.GET })
	public List<SysPlantLableDic> findAll(@RequestBody SysPlantLableDic info) {
		logger.info("findAll", SysPlantLableDicController.class);
		return sysPlantLableDicService.findAll(info);
	}

	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "查询全部信息", notes = "")
	@RequestMapping(path = "/findAllByParentId", method = { RequestMethod.POST, RequestMethod.GET })
	public List<SysPlantLableDic> findAllByParentId(@RequestBody SysPlantLableDic info) {
		System.err.println(info.toString());
		logger.info("findAllByParentId", SysPlantLableDicController.class);
		return sysPlantLableDicService.findAllByParentId(info);
	}

	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "查询信息", notes = "")
	@RequestMapping(path = "/findOne", method = RequestMethod.POST)
	public SysPlantLableDic findOne(@RequestBody SysPlantLableDic info) {
		logger.info("findOne", SysPlantLableDicController.class);
		return sysPlantLableDicService.findOne(info);
	}

	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "保存信息", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public String save(@RequestBody SysPlantLableDic info) {
		logger.info("save", SysPlantLableDicController.class);
		if (info.getUuid() == null || "".equals(info.getUuid())) {
			info.setUuid(UUID.randomUUID().toString());
		}
		sysPlantLableDicService.save(info);
		return "1";
	}

	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "批量保存信息", notes = "")
	@RequestMapping(path = "/saveAll", method = RequestMethod.POST)
	public String save(@RequestBody Pagination<SysPlantLableDic> vo) {
		logger.info("save", SysPlantLableDicController.class);
		sysPlantLableDicService.saveAll(vo.getList());
		return "1";
	}

	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "批量删除信息", notes = "")
	@RequestMapping(path = "/deleteAll", method = RequestMethod.POST)
	public String delete(@RequestBody Pagination<SysPlantLableDic> vo) {
		logger.info("delete", SysPlantLableDicController.class);
		sysPlantLableDicService.deleteAll(vo.getList());
		return "1";
	}

	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "删除信息", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(@RequestBody SysPlantLableDic info) {
		logger.info("delete", SysPlantLableDicController.class);
		sysPlantLableDicService.delete(info);
		return "1";
	}

	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "清空表", notes = "")
	@RequestMapping(path = "/trunc", method = RequestMethod.POST)
	public String trunc() {
		logger.info("trunc", SysPlantLableDicController.class);
		sysPlantLableDicService.trunc();
		return "1";
	}

	@ApiOperation(hidden = true, value = "/addBefor")
	@RequestMapping(path = "/addBefor", method = RequestMethod.GET)
	public ModelAndView addBefor(HttpServletRequest request) {
		logger.info("addBefor", SysPlantLableDicController.class);
		ModelAndView view = new ModelAndView("plant/lable/add");
		String uuid = request.getParameter("uuid");
		if (uuid == null) {
			SysPlantLableDic task = new SysPlantLableDic();
			view.addObject("sysPlantLableDic", task);
			return view;
		} else {
			SysPlantLableDic task = new SysPlantLableDic();
			task.setUuid(uuid);
			task = sysPlantLableDicService.findOne(task);
			view.addObject("sysPlantLableDic", task);
			return view;
		}
	}

}
