/**
 * 文件名：SysPlantBindConfController.java 版本信息： 日期：2018年5月18日 Copyright 足下 Corporation 2018 版权所有
 */
package org.danyuan.application.dbms.echarts.controller;

import java.util.List;
import java.util.UUID;

import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.dbms.echarts.po.SysPlantBindConf;
import org.danyuan.application.dbms.echarts.service.SysPlantBindConfService;
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
 * 文件名 ： SysPlantBindConfController.java
 * 包 名 ： com.shumeng.application.application.plant.controller
 * 描 述 ： 标讯信息
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年5月18日 下午4:15:00
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysPlantBindConf")
@Api(value = "/SysPlantBindConf", description = "平台标讯管理")
public class SysPlantBindConfController {
	//
	private static final Logger	logger	= LoggerFactory.getLogger(SysPlantBindConfController.class);
	@Autowired
	SysPlantBindConfService		sysPlantBindConfService;
	
	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	
	@ApiOperation(value = "分页查询全部信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<SysPlantBindConf> page(@RequestBody Pagination<SysPlantBindConf> vo) {
		logger.info("page", SysPlantBindConfController.class);
		return sysPlantBindConfService.page(vo);
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
	public List<SysPlantBindConf> findAll() {
		logger.info("findAll", SysPlantBindConfController.class);
		return sysPlantBindConfService.findAll(new SysPlantBindConf());
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
	public SysPlantBindConf findOne(@RequestBody SysPlantBindConf info) {
		logger.info("findOne", SysPlantBindConfController.class);
		return sysPlantBindConfService.findOne(info);
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
	public String save(@RequestBody SysPlantBindConf info) {
		logger.info("save", SysPlantBindConfController.class);
		if (info.getUuid() == null || "".equals(info.getUuid())) {
			info.setUuid(UUID.randomUUID().toString());
		}
		sysPlantBindConfService.save(info);
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
	public String save(@RequestBody Pagination<SysPlantBindConf> vo) {
		logger.info("save", SysPlantBindConfController.class);
		sysPlantBindConfService.saveAll(vo.getList());
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
	public String delete(@RequestBody Pagination<SysPlantBindConf> vo) {
		logger.info("delete", SysPlantBindConfController.class);
		sysPlantBindConfService.deleteAll(vo.getList());
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
	public String delete(@RequestBody SysPlantBindConf info) {
		logger.info("delete", SysPlantBindConfController.class);
		sysPlantBindConfService.delete(info);
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
		logger.info("trunc", SysPlantBindConfController.class);
		sysPlantBindConfService.trunc();
		return "1";
	}
	
}
