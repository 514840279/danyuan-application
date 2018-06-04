/**
 * 文件名：SysPlantChartDimensionDataDataController.java
 *
 * 版本信息：
 * 日期：2018年5月22日
 * Copyright 足下 Corporation 2018
 * 版权所有
 */
package tk.ainiyue.danyuan.application.dbms.chart.controller;

import java.util.List;
import java.util.UUID;

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

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.common.base.Pagination;
import tk.ainiyue.danyuan.application.dbms.chart.po.SysPlantChartDimensionData;
import tk.ainiyue.danyuan.application.dbms.chart.service.SysPlantChartDimensionDataService;

/**
 * 文件名 ： SysPlantChartDimensionDataDataController.java
 * 包 名 ： com.shumeng.application.application.plant.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年5月22日 下午2:58:59
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysPlantChartDimensionData")
@Api(value = "/SysPlantChartDimensionData", description = "平台管理")
public class SysPlantChartDimensionDataController {
	private static final Logger			logger	= LoggerFactory.getLogger(SysPlantChartDimensionDataController.class);
	@Autowired
	SysPlantChartDimensionDataService	sysPlantChartDimensionDataService;
	
	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "分页查询全部信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<SysPlantChartDimensionData> page(Pagination<SysPlantChartDimensionData> vo) {
		logger.info("page", SysPlantChartDimensionDataController.class);
		Order order = new Order(Direction.ASC, "createTime");
		if (vo.getSortName() != null) {
			order = new Order(vo.getOrder(), vo.getSortName());
		}
		if (vo.getInfo() == null) {
			vo.setInfo(new SysPlantChartDimensionData());
		}
		return sysPlantChartDimensionDataService.page(vo.getPageNumber(), vo.getPageSize(), vo.getInfo(), vo.getMap(), order);
		
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
	public List<SysPlantChartDimensionData> findAll(@RequestBody SysPlantChartDimensionData info) {
		logger.info("findAll", SysPlantChartDimensionDataController.class);
		return sysPlantChartDimensionDataService.findAll(info);
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
	public SysPlantChartDimensionData findOne(SysPlantChartDimensionData info) {
		logger.info("findOne", SysPlantChartDimensionDataController.class);
		return sysPlantChartDimensionDataService.findOne(info);
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
	public String save(@RequestBody SysPlantChartDimensionData info) {
		logger.info("save", SysPlantChartDimensionDataController.class);
		if (info.getUuid() == null || "".equals(info.getUuid())) {
			info.setUuid(UUID.randomUUID().toString());
		}
		sysPlantChartDimensionDataService.save(info);
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
	public String save(@RequestBody Pagination<SysPlantChartDimensionData> vo) {
		logger.info("save", SysPlantChartDimensionDataController.class);
		sysPlantChartDimensionDataService.save(vo.getList());
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
	public String delete(@RequestBody Pagination<SysPlantChartDimensionData> vo) {
		for (SysPlantChartDimensionData data : vo.getList()) {
			System.err.println(data.toString());
		}
		logger.info("delete", SysPlantChartDimensionDataController.class);
		sysPlantChartDimensionDataService.delete(vo.getList());
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
	public String delete(@RequestBody SysPlantChartDimensionData info) {
		logger.info("delete", SysPlantChartDimensionDataController.class);
		sysPlantChartDimensionDataService.delete(info);
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
		logger.info("trunc", SysPlantChartDimensionDataController.class);
		sysPlantChartDimensionDataService.trunc();
		return "1";
	}
}
