package org.danyuan.application.dbms.tabs.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsMergeInfo;
import org.danyuan.application.dbms.tabs.service.SysDbmsTabsMergeInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
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

	@Autowired
	SysDbmsTabsMergeInfoService sysDbmsTabsMergeInfoService;

	@GetMapping("/detail/{uuid}")
	public ModelAndView name(@PathVariable("uuid") String uuid) {
		ModelAndView modelAndView = new ModelAndView("dbms/tabs/sysdbmstabsmergeinfodetail");
		SysDbmsTabsMergeInfo info = new SysDbmsTabsMergeInfo();
		info.setUuid(uuid);
		modelAndView.addObject("sysDbmsTabsMergeInfo", sysDbmsTabsMergeInfoService.findOne(info));
		return modelAndView;
	}

}
