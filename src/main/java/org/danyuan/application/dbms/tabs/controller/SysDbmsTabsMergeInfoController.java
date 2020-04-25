package org.danyuan.application.dbms.tabs.controller;

import java.util.List;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.common.base.BaseResult;
import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.common.base.ResultUtil;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsColsInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsMergeInfo;
import org.danyuan.application.dbms.tabs.service.SysDbmsTabsMergeInfoService;
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
 * @文件名 SysDbmsTabsMergeInfoController.java
 * @包名 org.danyuan.application.dbms.tabs.controller
 * @描述 controller层
 * @时间 2020年01月03日 15:42:38
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysDbmsTabsMergeInfo")
public class SysDbmsTabsMergeInfoController extends BaseControllerImpl<SysDbmsTabsMergeInfo> implements BaseController<SysDbmsTabsMergeInfo> {
	
	private static final Logger	logger	= LoggerFactory.getLogger(SysDbmsTabsMergeInfoController.class);
	
	@Autowired
	SysDbmsTabsMergeInfoService	sysDbmsTabsMergeInfoService;
	
	@GetMapping("/detail/{uuid}")
	public ModelAndView name(@PathVariable("uuid") String uuid) {
		ModelAndView modelAndView = new ModelAndView("dbms/tabs/sysdbmstabsmergeinfodetail");
		SysDbmsTabsMergeInfo info = new SysDbmsTabsMergeInfo();
		info.setUuid(uuid);
		modelAndView.addObject("sysDbmsTabsMergeInfo", sysDbmsTabsMergeInfoService.findOne(info));
		return modelAndView;
	}
	
	@RequestMapping(path = "/page1", method = RequestMethod.POST)
	public List<SysDbmsTabsColsInfo> page1(@RequestBody Pagination<SysDbmsTabsMergeInfo> vo) {
		logger.info("page1", SysDbmsTabsMergeInfoController.class);
		return sysDbmsTabsMergeInfoService.page1(vo);
	}
	
	@RequestMapping(path = "/page2", method = RequestMethod.POST)
	public List<SysDbmsTabsColsInfo> page2(@RequestBody Pagination<SysDbmsTabsMergeInfo> vo) {
		logger.info("page2", SysDbmsTabsMergeInfoController.class);
		return sysDbmsTabsMergeInfoService.page2(vo);
	}
	
	@RequestMapping(path = "/merge", method = RequestMethod.POST)
	public String merge(@RequestBody Pagination<SysDbmsTabsMergeInfo> vo) {
		logger.info("merge", SysDbmsTabsMergeInfoController.class);
		return sysDbmsTabsMergeInfoService.merge(vo);
	}
	
	@RequestMapping(path = "/loadSql", method = RequestMethod.POST)
	public BaseResult<String> loadSql(@RequestBody SysDbmsTabsMergeInfo vo) {
		logger.info("loadSql", SysDbmsTabsMergeInfoController.class);
		return ResultUtil.success(sysDbmsTabsMergeInfoService.loadSql(vo));
	}
	
}
