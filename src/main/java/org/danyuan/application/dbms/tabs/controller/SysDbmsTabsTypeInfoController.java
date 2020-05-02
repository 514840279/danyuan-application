package org.danyuan.application.dbms.tabs.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsTypeInfo;
import org.danyuan.application.dbms.tabs.service.SysDbmsTabsTypeInfoService;
import org.danyuan.application.dbms.tabs.vo.SysDbmsTabsTypeInfoVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * 文件名 ： SysDbmsTabsTypeInfoController.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.type.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:58:03
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysDbmsTabsTypeInfo")
public class SysDbmsTabsTypeInfoController extends BaseControllerImpl<SysDbmsTabsTypeInfo> implements BaseController<SysDbmsTabsTypeInfo> {
	//
	private static final Logger			logger	= LoggerFactory.getLogger(SysDbmsTabsTypeInfoController.class);
	//
	@Autowired
	private SysDbmsTabsTypeInfoService	sysDbmsTabsTypeInfoService;
	
	@RequestMapping(path = "/sysTableTypeDeleteAll", method = RequestMethod.POST)
	@ResponseBody
	public String sysTableTypeDeleteAll(@RequestBody SysDbmsTabsTypeInfoVo vo) {
		logger.info("sysTableTypeDeleteAll", SysDbmsTabsTypeInfoController.class);
		try {
			sysDbmsTabsTypeInfoService.deleteAll(vo.getList());
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
	
	@GetMapping("/detail/{uuid}")
	public ModelAndView name(@PathVariable("uuid") String uuid) {
		logger.info("detail", SysDbmsTabsTypeInfo.class);
		ModelAndView modelAndView = new ModelAndView("dbms/tabs/sysdbmstabstypeinfodetail");
		SysDbmsTabsTypeInfo info = new SysDbmsTabsTypeInfo();
		info.setUuid(uuid);
		modelAndView.addObject("sysDbmsTabsTypeInfo", sysDbmsTabsTypeInfoService.findOne(info));
		return modelAndView;
	}
	
}
