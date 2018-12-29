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
import org.danyuan.application.dbms.chart.po.SysDbmsChartDimension;
import org.danyuan.application.dbms.chart.po.SysDbmsChartDimensionData;
import org.danyuan.application.dbms.chart.service.SysDbmsChartDimensionDataService;
import org.danyuan.application.dbms.chart.service.SysDbmsChartDimensionService;
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
@RequestMapping("/sysPlantChartDimension")
public class SysDbmsChartDimensionController {
	private static final Logger			logger	= LoggerFactory.getLogger(SysDbmsChartDimensionController.class);
	@Autowired
	SysDbmsChartDimensionService		sysDbmsChartDimensionService;
	@Autowired
	SysDbmsChartDimensionDataService	sysDbmsChartDimensionDataService;
	
	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<SysDbmsChartDimension> page(Pagination<SysDbmsChartDimension> vo) {
		logger.info("page", SysDbmsChartDimensionController.class);
		
		return sysDbmsChartDimensionService.page(vo);
	}
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/findAll", method = RequestMethod.POST)
	public List<SysDbmsChartDimension> findAll(@RequestBody SysDbmsChartDimension info) {
		logger.info("findAll", SysDbmsChartDimensionController.class);
		return sysDbmsChartDimensionService.findAll(info);
	}
	
	/**
	 * 方法名 ： findAllDime
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/findAllDime", method = RequestMethod.GET)
	public ModelAndView findAllDime(HttpServletRequest request) {
		logger.info("findAllDime", SysDbmsChartDimensionController.class);
		if (request.getParameter("uuid") == null || "null".equals(request.getParameter("uuid"))) {
			List<SysDbmsChartDimension> list = sysDbmsChartDimensionService.findAllDime();
			
			if (list.size() == 0) {
				ModelAndView view = new ModelAndView("plant/chart/chart");
				return view;
			} else {
				ModelAndView view = new ModelAndView("plant/chart/build");
				view.addObject("sysPlantChartDimensionList", list);
				return view;
			}
		} else {
			SysDbmsChartDimension dime = new SysDbmsChartDimension();
			dime.setGroupUuid(request.getParameter("uuid"));
			List<SysDbmsChartDimension> list = sysDbmsChartDimensionService.findAll(dime);
			if (list.size() == 0 && "null".equals(request.getParameter("uuid"))) {
				ModelAndView view = new ModelAndView("plant/chart/chart");
				return view;
			} else {
				ModelAndView view = new ModelAndView("plant/chart/build");
				view.addObject("sysPlantChartDimensionList", list);
				return view;
			}
		}
	}
	
	@RequestMapping(path = "/showAllDime", method = RequestMethod.GET)
	public ModelAndView showAllDime(HttpServletRequest request) {
		logger.info("findAllDime", SysDbmsChartDimensionController.class);
		SysDbmsChartDimension dime = new SysDbmsChartDimension();
		dime.setGroupUuid(request.getParameter("uuid"));
		List<SysDbmsChartDimension> list = sysDbmsChartDimensionService.findAll(dime);
		ModelAndView view = new ModelAndView("plant/chart/show");
		view.addObject("sysPlantChartDimensionList", list);
		return view;
	}
	
	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/findOne", method = RequestMethod.POST)
	public SysDbmsChartDimension findOne(SysDbmsChartDimension info) {
		logger.info("findOne", SysDbmsChartDimensionController.class);
		return sysDbmsChartDimensionService.findOne(info);
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public Map<String, String> save(@RequestBody SysDbmsChartDimension info) {
		logger.info("save", SysDbmsChartDimensionController.class);
		if (info.getUuid() == null || "".equals(info.getUuid())) {
			info.setUuid(UUID.randomUUID().toString());
		}
		sysDbmsChartDimensionService.save(info);
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
	public String save(@RequestBody Pagination<SysDbmsChartDimension> vo) {
		logger.info("save", SysDbmsChartDimensionController.class);
		sysDbmsChartDimensionService.saveAll(vo.getList());
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
	public String delete(@RequestBody Pagination<SysDbmsChartDimension> vo) {
		logger.info("delete", SysDbmsChartDimensionController.class);
		sysDbmsChartDimensionService.deleteAll(vo.getList());
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
	public Map<String, String> delete(@RequestBody SysDbmsChartDimension info) {
		logger.info("delete", SysDbmsChartDimensionController.class);
		sysDbmsChartDimensionService.delete(info);
		Map<String, String> map = new HashMap<>();
		map.put("uuid", info.getUuid());
		return map;
	}
	
	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/trunc", method = RequestMethod.POST)
	public String trunc() {
		logger.info("trunc", SysDbmsChartDimensionController.class);
		sysDbmsChartDimensionService.trunc();
		return "1";
	}
	
	@RequestMapping(path = "/updBefor", method = RequestMethod.GET)
	public ModelAndView updBefor(HttpServletRequest request) {
		logger.info("updBefor", SysDbmsChartDimensionController.class);
		ModelAndView view = new ModelAndView("plant/chart/add");
		SysDbmsChartDimension task = new SysDbmsChartDimension();
		task.setUuid(request.getParameter("uuid"));
		task = sysDbmsChartDimensionService.findOne(task);
		view.addObject("sysPlantChartDimension", task);
		
		if (task == null) {
			view.addObject("sysPlantChartDimensionDataList", null);
		} else {
			SysDbmsChartDimensionData data = new SysDbmsChartDimensionData();
			data.setDimeUuid(task.getUuid());
			List<SysDbmsChartDimensionData> list = sysDbmsChartDimensionDataService.findAll(data);
			
			view.addObject("sysPlantChartDimensionDataList", list);
		}
		return view;
	}
	
	@RequestMapping(path = "/addBefor", method = RequestMethod.GET)
	public ModelAndView addBefor(HttpServletRequest request) {
		logger.info("addBefor", SysDbmsChartDimensionController.class);
		ModelAndView view = new ModelAndView("plant/chart/add");
		String uuid = request.getParameter("uuid");
		if (uuid == null) {
			SysDbmsChartDimension task = new SysDbmsChartDimension();
			view.addObject("sysPlantChartDimension", task);
			return view;
		} else {
			SysDbmsChartDimension task = new SysDbmsChartDimension();
			task.setUuid(uuid);
			task = sysDbmsChartDimensionService.findOne(task);
			view.addObject("sysPlantChartDimension", task);
			return view;
		}
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/changeGroup", method = RequestMethod.POST)
	public Map<String, String> changeGroup(@RequestBody SysDbmsChartDimension info) {
		logger.info("changeGroup", SysDbmsChartDimensionController.class);
		sysDbmsChartDimensionService.changeGroup(info);
		Map<String, String> map = new HashMap<>();
		map.put("uuid", info.getUuid());
		return map;
	}
	
}
