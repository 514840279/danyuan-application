package org.danyuan.application.resume.user.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.resume.user.po.SysUserLanguage;
import org.danyuan.application.resume.user.service.SysUserLanguageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @文件名 SysUserLanguageController.java
 * @包名 org.danyuan.application.resume.user.controller
 * @描述 controller层
 * @时间 2020年02月22日 11:06:05
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysUserLanguage")
public class SysUserLanguageController extends BaseControllerImpl<SysUserLanguage> implements BaseController<SysUserLanguage> {

	@Autowired
	SysUserLanguageService sysUserLanguageService;

	@GetMapping("/detail/{uuid}")
	public ModelAndView name(@PathVariable("uuid") String uuid) {
		ModelAndView modelAndView = new ModelAndView("resume/user/sysuserlanguagedetail");
		SysUserLanguage info = new SysUserLanguage();
		info.setUuid(uuid);
		modelAndView.addObject("sysUserLanguage", sysUserLanguageService.findOne(info));
		return modelAndView;
	}

}
