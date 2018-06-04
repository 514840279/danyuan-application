/**
 * 文件名：SysPlantChartDimensionController.java
 *
 * 版本信息：
 * 日期：2018年5月22日
 * Copyright 足下 Corporation 2018
 * 版权所有
 */
package tk.ainiyue.danyuan.application.dbms.chart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
import tk.ainiyue.danyuan.application.crawler.task.controller.TaskController;
import tk.ainiyue.danyuan.application.dbms.chart.po.SysPlantChartDimension;
import tk.ainiyue.danyuan.application.dbms.chart.po.SysPlantChartDimensionData;
import tk.ainiyue.danyuan.application.dbms.chart.service.SysPlantChartDimensionDataService;
import tk.ainiyue.danyuan.application.dbms.chart.service.SysPlantChartDimensionService;

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
@Api(value = "/SysPlantChartDimension", description = "平台管理")
public class SysPlantChartDimensionController {
	private static final Logger			logger	= LoggerFactory.getLogger(SysPlantChartDimensionController.class);
	@Autowired
	SysPlantChartDimensionService		sysPlantChartDimensionService;
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
	public Page<SysPlantChartDimension> page(Pagination<SysPlantChartDimension> vo) {
		logger.info("page", SysPlantChartDimensionController.class);
		Order order = new Order(Direction.ASC, "createTime");
		if (vo.getSortName() != null) {
			order = new Order(vo.getOrder(), vo.getSortName());
		}
		if (vo.getInfo() == null) {
			vo.setInfo(new SysPlantChartDimension());
		}
		return sysPlantChartDimensionService.page(vo.getPageNumber(), vo.getPageSize(), vo.getInfo(), vo.getMap(), order);
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
	public List<SysPlantChartDimension> findAll(@RequestBody SysPlantChartDimension info) {
		logger.info("findAll", SysPlantChartDimensionController.class);
		return sysPlantChartDimensionService.findAll(info);
	}
	
	/**
	 * 方法名 ： findAllDime
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "查询全部信息", notes = "")
	@RequestMapping(path = "/findAllDime", method = RequestMethod.GET)
	public ModelAndView findAllDime(HttpServletRequest request) {
		logger.info("findAllDime", SysPlantChartDimensionController.class);
		if (request.getParameter("uuid") == null || "null".equals(request.getParameter("uuid"))) {
			List<SysPlantChartDimension> list = sysPlantChartDimensionService.findAllDime();
			
			if (list.size() == 0) {
				ModelAndView view = new ModelAndView("plant/chart/chart");
				return view;
			} else {
				ModelAndView view = new ModelAndView("plant/chart/build");
				view.addObject("sysPlantChartDimensionList", list);
				return view;
			}
		} else {
			SysPlantChartDimension dime = new SysPlantChartDimension();
			dime.setGroupUuid(request.getParameter("uuid"));
			List<SysPlantChartDimension> list = sysPlantChartDimensionService.findAll(dime);
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

	@ApiOperation(value = "查询全部信息", notes = "")
	@RequestMapping(path = "/showAllDime", method = RequestMethod.GET)
	public ModelAndView showAllDime(HttpServletRequest request) {
		logger.info("findAllDime", SysPlantChartDimensionController.class);
		SysPlantChartDimension dime = new SysPlantChartDimension();
		dime.setGroupUuid(request.getParameter("uuid"));
		List<SysPlantChartDimension> list = sysPlantChartDimensionService.findAll(dime);
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
	@ApiOperation(value = "查询信息", notes = "")
	@RequestMapping(path = "/findOne", method = RequestMethod.POST)
	public SysPlantChartDimension findOne(SysPlantChartDimension info) {
		logger.info("findOne", SysPlantChartDimensionController.class);
		return sysPlantChartDimensionService.findOne(info);
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
	public Map<String, String> save(@RequestBody SysPlantChartDimension info) {
		logger.info("save", SysPlantChartDimensionController.class);
		if (info.getUuid() == null || "".equals(info.getUuid())) {
			info.setUuid(UUID.randomUUID().toString());
		}
		sysPlantChartDimensionService.save(info);
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
	@ApiOperation(value = "批量保存信息", notes = "")
	@RequestMapping(path = "/saveAll", method = RequestMethod.POST)
	public String save(@RequestBody Pagination<SysPlantChartDimension> vo) {
		logger.info("save", SysPlantChartDimensionController.class);
		sysPlantChartDimensionService.save(vo.getList());
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
	public String delete(@RequestBody Pagination<SysPlantChartDimension> vo) {
		logger.info("delete", SysPlantChartDimensionController.class);
		sysPlantChartDimensionService.delete(vo.getList());
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
	public Map<String, String> delete(@RequestBody SysPlantChartDimension info) {
		logger.info("delete", SysPlantChartDimensionController.class);
		sysPlantChartDimensionService.delete(info);
		Map<String, String> map = new HashMap<String, String>();
		map.put("uuid", info.getUuid());
		return map;
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
		logger.info("trunc", SysPlantChartDimensionController.class);
		sysPlantChartDimensionService.trunc();
		return "1";
	}

	@ApiOperation(hidden = true, value = "/updBefor")
	@RequestMapping(path = "/updBefor", method = RequestMethod.GET)
	public ModelAndView updBefor(HttpServletRequest request) {
		logger.info("updBefor", SysPlantChartDimensionController.class);
		ModelAndView view = new ModelAndView("plant/chart/add");
		SysPlantChartDimension task = new SysPlantChartDimension();
		task.setUuid(request.getParameter("uuid"));
		task = sysPlantChartDimensionService.findOne(task);
		view.addObject("sysPlantChartDimension", task);

		if (task == null) {
			view.addObject("sysPlantChartDimensionDataList", null);
		} else {
			SysPlantChartDimensionData data = new SysPlantChartDimensionData();
			data.setDimeUuid(task.getUuid());
			List<SysPlantChartDimensionData> list = sysPlantChartDimensionDataService.findAll(data);

			view.addObject("sysPlantChartDimensionDataList", list);
		}
		return view;
	}
	
	@ApiOperation(hidden = true, value = "/addBefor")
	@RequestMapping(path = "/addBefor", method = RequestMethod.GET)
	public ModelAndView addBefor(HttpServletRequest request) {
		logger.info("addBefor", TaskController.class);
		ModelAndView view = new ModelAndView("plant/chart/add");
		String uuid = request.getParameter("uuid");
		if (uuid == null) {
			SysPlantChartDimension task = new SysPlantChartDimension();
			view.addObject("sysPlantChartDimension", task);
			return view;
		} else {
			SysPlantChartDimension task = new SysPlantChartDimension();
			task.setUuid(uuid);
			task = sysPlantChartDimensionService.findOne(task);
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
	@ApiOperation(value = "修改分组", notes = "")
	@RequestMapping(path = "/changeGroup", method = RequestMethod.POST)
	public Map<String, String> changeGroup(@RequestBody SysPlantChartDimension info) {
		logger.info("changeGroup", SysPlantChartDimensionController.class);
		sysPlantChartDimensionService.changeGroup(info);
		Map<String, String> map = new HashMap<String, String>();
		map.put("uuid", info.getUuid());
		return map;
	}

}
