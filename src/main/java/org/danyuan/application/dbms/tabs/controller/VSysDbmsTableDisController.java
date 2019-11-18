package org.danyuan.application.dbms.tabs.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.dbms.tabs.po.VSysDbmsTableDis;
import org.danyuan.application.dbms.tabs.service.VSysDbmsTableDisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @文件名 VSysDbmsTableDisController.java
 * @包名 org.danyuan.application.dbms.tabs.controller
 * @描述 controller层
 * @时间 2019年11月18日 13:19:27
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/vSysDbmsTableDis")
public class VSysDbmsTableDisController extends BaseControllerImpl<VSysDbmsTableDis> implements BaseController<VSysDbmsTableDis> {
	
	@Autowired
	VSysDbmsTableDisService vSysDbmsTableDisService;
	
	@GetMapping("/detail/{uuid}")
	public ModelAndView name(@PathVariable("uuid") String uuid) {
		ModelAndView modelAndView = new ModelAndView("dbms/tabs/vsysdbmstabledisdetail");
		VSysDbmsTableDis info = new VSysDbmsTableDis();
		info.setUuid(uuid);
		modelAndView.addObject("vSysDbmsTableDis", vSysDbmsTableDisService.findOne(info));
		return modelAndView;
	}
	
	@RequestMapping("runsql")
	public String runsql(@RequestBody VSysDbmsTableDis sVSysDbmsTableDis) {
		return vSysDbmsTableDisService.runsql(sVSysDbmsTableDis);
	}

}
