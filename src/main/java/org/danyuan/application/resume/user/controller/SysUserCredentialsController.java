package org.danyuan.application.resume.user.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.resume.user.po.SysUserCredentials;
import org.danyuan.application.resume.user.service.SysUserCredentialsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @文件名 SysUserCredentialsController.java
 * @包名 org.danyuan.application.resume.user.controller
 * @描述 controller层
 * @时间 2020年02月22日 11:05:59
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysUserCredentials")
public class SysUserCredentialsController extends BaseControllerImpl<SysUserCredentials> implements BaseController<SysUserCredentials> {

	@Autowired
	SysUserCredentialsService sysUserCredentialsService;

	@GetMapping("/detail/{uuid}")
	public ModelAndView name(@PathVariable("uuid") String uuid) {
		ModelAndView modelAndView = new ModelAndView("resume/user/sysusercredentialsdetail");
		SysUserCredentials info = new SysUserCredentials();
		info.setUuid(uuid);
		modelAndView.addObject("sysUserCredentials", sysUserCredentialsService.findOne(info));
		return modelAndView;
	}

}
