/**
 * 文件名：SysPlantLableConfController.java
 *
 * 版本信息：
 * 日期：2018年5月18日
 * Copyright 足下 Corporation 2018
 * 版权所有
 */
package org.danyuan.application.dbms.echarts.controller;

import java.util.List;
import java.util.UUID;

import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.dbms.echarts.po.SysPlantLableConf;
import org.danyuan.application.dbms.echarts.service.SysPlantLableConfService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * 文件名 ： SysPlantLableConfController.java
 * 包 名 ： com.shumeng.application.application.plant.controller
 * 描 述 ： 平台分析纬度管理
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年5月18日 下午4:15:23
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysPlantLableConf")
@Api(value = "/SysPlantLableConf", description = "平台分析纬度管理")
public class SysPlantLableConfController {
	private static final Logger	logger	= LoggerFactory.getLogger(SysPlantLableConfController.class);
	@Autowired
	SysPlantLableConfService	sysPlantLableConfService;

	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "查询全部信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<SysPlantLableConf> page(@RequestBody Pagination<SysPlantLableConf> vo) {
		logger.info("page", SysPlantLableConfController.class);
		return sysPlantLableConfService.page(vo);
	}

	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "查询全部信息", notes = "")
	@RequestMapping(path = "/findAll", method = RequestMethod.POST)
	public List<SysPlantLableConf> findAll(@RequestBody SysPlantLableConf info) {
		logger.info("findAll", SysPlantLableConfController.class);
		return sysPlantLableConfService.findAll(info);
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
	public SysPlantLableConf findOne(@RequestBody SysPlantLableConf info) {
		logger.info("findOne", SysPlantLableConfController.class);
		return sysPlantLableConfService.findOne(info);
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
	public String save(@RequestBody SysPlantLableConf info) {
		logger.info("save", SysPlantLableConfController.class);
		if (info.getUuid() == null || "".equals(info.getUuid())) {
			info.setUuid(UUID.randomUUID().toString());
		}
		sysPlantLableConfService.save(info);
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
	public String save(@RequestBody Pagination<SysPlantLableConf> vo) {
		logger.info("save", SysPlantLableConfController.class);
		sysPlantLableConfService.saveAll(vo.getList());
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
	public String delete(@RequestBody Pagination<SysPlantLableConf> vo) {
		logger.info("delete", SysPlantLableConfController.class);
		sysPlantLableConfService.deleteAll(vo.getList());
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
	public String delete(@RequestBody SysPlantLableConf info) {
		logger.info("delete", SysPlantLableConfController.class);
		sysPlantLableConfService.delete(info);
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
		logger.info("trunc", SysPlantLableConfController.class);
		sysPlantLableConfService.trunc();
		return "1";
	}

}
