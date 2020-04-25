package org.danyuan.application.softm.sysmenu.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.softm.sysmenu.po.SysSystemInfo;
import org.danyuan.application.softm.sysmenu.service.SysSystemInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 文件名 ： SysSystemController.java
 * 包 名 ： tk.ainiyue.admin.system.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:00:14
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysSystem")
public class SysSystemController extends BaseControllerImpl<SysSystemInfo> implements BaseController<SysSystemInfo> {
	
	//
	private static final Logger logger = LoggerFactory.getLogger(SysMenuController.class);
	
	//
	@Autowired
	private SysSystemInfoService sysSystemInfoService;
	
}
