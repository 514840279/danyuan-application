/**
 * 文件名：SysPlanStatisticsChartController.java
 *
 * 版本信息：
 * 日期：2018年5月21日
 * Copyright 足下 Corporation 2018
 * 版权所有
 */
package tk.ainiyue.danyuan.application.dbms.chart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.dbms.chart.po.SysPlantChartDimension;
import tk.ainiyue.danyuan.application.dbms.chart.po.SysPlantChartDimensionData;
import tk.ainiyue.danyuan.application.dbms.chart.service.SysPlantChartDimensionDataService;
import tk.ainiyue.danyuan.application.dbms.chart.service.SysPlantChartDimensionService;

/**
 * 文件名 ： SysPlanStatisticsChartController.java
 * 包 名 ： com.shumeng.application.application.plant.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年5月21日 下午3:52:22
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysPlanStatisticsChart")
@Api(value = "/SysPlanStatisticsChart", description = "平台管理")
public class SysPlanStatisticsChartController {
	//
	private static final Logger			logger	= LoggerFactory.getLogger(SysPlanStatisticsChartController.class);
	
	@Autowired
	SysPlantChartDimensionService		sysPlantChartDimensionService;
	@Autowired
	SysPlantChartDimensionDataService	sysPlantChartDimensionDataService;

	@Autowired
	JdbcTemplate						secondaryJdbcTemplate;

	@ApiOperation(value = "构建图形数据", notes = "")
	@RequestMapping(path = "/build", method = RequestMethod.POST)
	public Map<String, Object> build(@RequestBody SysPlantChartDimension info) {
		logger.info("build", SysPlanStatisticsChartController.class);
		info = sysPlantChartDimensionService.findOne(info);
		SysPlantChartDimensionData sysPlantChartDimensionData = new SysPlantChartDimensionData();
		sysPlantChartDimensionData.setDimeUuid(info.getUuid());
		List<SysPlantChartDimensionData> list = sysPlantChartDimensionDataService.findAll(sysPlantChartDimensionData);
		Map<String, Object> map = new HashMap<>();
		switch (info.getChartType()) {
			case "pie":
			case "rompie":
			case "nanpie":
				// 饼图
				buildPie(map, info, list);
				break;
			case "bar":
			case "tbar":
			case "line":
				// 柱图、线图
				buildBarOrLine(map, info, list);
				break;
			case "map":
				// 地图
				buildMap(map, info, list);
				break;
			case "tree":
				// 树图
				buildTree(map, info, list);
				break;
			case "sunburst":
				// 旭日图
				buildSunburst(map, info, list);
				break;
			default:
				break;
		}

		return map;

	}
	
	/**
	 * @param list
	 * 方法名： buildSunburst
	 * 功 能： 旭日图
	 * 参 数： @param map
	 * 参 数： @param info
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildSunburst(Map<String, Object> map, SysPlantChartDimension info, List<SysPlantChartDimensionData> list) {
		
		map.put("series_data", "");
	}
	
	/**
	 * @param list
	 * 方法名： buildTree
	 * 功 能： 树图
	 * 参 数： @param map
	 * 参 数： @param info
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildTree(Map<String, Object> map, SysPlantChartDimension info, List<SysPlantChartDimensionData> list) {

	}
	
	/**
	 * @param list
	 * 方法名： buildMap
	 * 功 能： 地图
	 * 参 数： @param map
	 * 参 数： @param info
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildMap(Map<String, Object> map, SysPlantChartDimension info, List<SysPlantChartDimensionData> list) {

	}
	
	/**
	 * 方法名： buildBarOrLine
	 * 功 能： 柱图或线图
	 * 参 数： @param map
	 * 参 数： @param info
	 * @param list
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildBarOrLine(Map<String, Object> map, SysPlantChartDimension info, List<SysPlantChartDimensionData> list) {
		
	}
	
	/**
	 * @param list
	 * 方法名： buildPie
	 * 功 能： 饼图
	 * 参 数： @param map
	 * 参 数： @param info
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildPie(Map<String, Object> map, SysPlantChartDimension info, List<SysPlantChartDimensionData> list) {
		
	}
}
