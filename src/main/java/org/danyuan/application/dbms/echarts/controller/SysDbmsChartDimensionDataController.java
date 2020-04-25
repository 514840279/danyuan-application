package org.danyuan.application.dbms.echarts.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.dbms.echarts.po.SysDbmsChartDimensionData;
import org.danyuan.application.dbms.echarts.service.SysDbmsChartDimensionDataService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @文件名 SysDbmsChartDimensionDataController.java
 * @包名 org.danyuan.application.dbms.echarts.controller
 * @描述 controller层
 * @时间 2020年04月25日 12:15:43
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysDbmsChartDimensionData")
public class SysDbmsChartDimensionDataController extends BaseControllerImpl<SysDbmsChartDimensionData> implements BaseController<SysDbmsChartDimensionData> {
	
	private static final Logger			logger	= LoggerFactory.getLogger(SysDbmsChartDimensionDataController.class);
	
	@Autowired
	SysDbmsChartDimensionDataService	sysDbmsChartDimensionDataService;
	
	@GetMapping("/detail/{uuid}")
	public ModelAndView name(@PathVariable("uuid") String uuid) {
		logger.info("detail", SysDbmsChartDimensionDataController.class);
		ModelAndView modelAndView = new ModelAndView("dbms/echarts/sysdbmschartdimensiondatadetail");
		SysDbmsChartDimensionData info = new SysDbmsChartDimensionData();
		info.setUuid(uuid);
		modelAndView.addObject("sysDbmsChartDimensionData", sysDbmsChartDimensionDataService.findOne(info));
		return modelAndView;
	}
	
}
