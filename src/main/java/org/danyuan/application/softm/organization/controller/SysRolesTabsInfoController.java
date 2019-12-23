package org.danyuan.application.softm.organization.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.softm.organization.po.SysRolesTabsInfo;
import org.danyuan.application.softm.organization.service.SysRolesTabsInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @文件名 SysRolesTabsInfoController.java
 * @包名 org.danyuan.application.softm.organization.controller
 * @描述 controller层
 * @时间 2019年12月23日 15:17:58
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysRolesTabsInfo")
public class SysRolesTabsInfoController extends BaseControllerImpl<SysRolesTabsInfo> implements BaseController<SysRolesTabsInfo> {
	
	@Autowired
	SysRolesTabsInfoService sysRolesTabsInfoService;
	
}
