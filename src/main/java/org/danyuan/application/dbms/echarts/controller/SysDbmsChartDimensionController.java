package org.danyuan.application.dbms.echarts.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.dbms.echarts.po.SysDbmsChartDimension;
import org.danyuan.application.dbms.echarts.po.SysDbmsChartDimensionData;
import org.danyuan.application.dbms.echarts.service.SysDbmsChartDimensionDataService;
import org.danyuan.application.dbms.echarts.service.SysDbmsChartDimensionService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @文件名 SysDbmsChartDimensionController.java
 * @包名 org.danyuan.application.dbms.echarts.controller
 * @描述 controller层
 * @时间 2020年04月25日 12:15:42
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysDbmsChartDimension")
public class SysDbmsChartDimensionController extends BaseControllerImpl<SysDbmsChartDimension> implements BaseController<SysDbmsChartDimension> {
	
	private static final Logger			logger	= LoggerFactory.getLogger(SysDbmsChartDimensionController.class);
	
	@Autowired
	SysDbmsChartDimensionService		sysDbmsChartDimensionService;
	
	@Autowired
	SysDbmsChartDimensionDataService	sysDbmsChartDimensionDataService;
	
	@GetMapping("/detail/{uuid}")
	public ModelAndView name(@PathVariable("uuid") String uuid) {
		logger.info("detail", SysDbmsChartDimensionController.class);
		ModelAndView modelAndView = new ModelAndView("dbms/echarts/sysdbmschartdimensiondetail");
		SysDbmsChartDimension info = new SysDbmsChartDimension();
		info.setUuid(uuid);
		modelAndView.addObject("sysDbmsChartDimension", sysDbmsChartDimensionService.findOne(info));
		return modelAndView;
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
		if (request.getParameter("uuid") == null || "".equals(request.getParameter("uuid"))) {
			List<SysDbmsChartDimension> list = sysDbmsChartDimensionService.findAllDime();
			
			if (list.size() == 0) {
				ModelAndView view = new ModelAndView("echarts/chart");
				return view;
			} else {
				ModelAndView view = new ModelAndView("echarts/build");
				view.addObject("sysPlantChartDimensionList", list);
				return view;
			}
		} else {
			SysDbmsChartDimension dime = new SysDbmsChartDimension();
			dime.setGroupUuid(request.getParameter("uuid"));
			List<SysDbmsChartDimension> list = sysDbmsChartDimensionService.findAll(dime);
			if (list.size() == 0 && "null".equals(request.getParameter("uuid"))) {
				ModelAndView view = new ModelAndView("echarts/chart");
				return view;
			} else {
				ModelAndView view = new ModelAndView("echarts/build");
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
		ModelAndView view = new ModelAndView("echarts/show");
		view.addObject("sysPlantChartDimensionList", list);
		return view;
	}
	
	@RequestMapping(path = "/updBefor", method = RequestMethod.GET)
	public ModelAndView updBefor(HttpServletRequest request) {
		logger.info("updBefor", SysDbmsChartDimensionController.class);
		ModelAndView view = new ModelAndView("echarts/add");
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
		ModelAndView view = new ModelAndView("echarts/add");
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
