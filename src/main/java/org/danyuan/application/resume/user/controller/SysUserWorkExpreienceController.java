package org.danyuan.application.resume.user.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.resume.user.po.SysUserWorkExpreience;
import org.danyuan.application.resume.user.service.SysUserWorkExpreienceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @文件名 SysUserWorkExpreienceController.java
 * @包名 org.danyuan.application.resume.user.controller
 * @描述 controller层
 * @时间 2019年02月28日 17:42:26
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysUserWorkExpreience")
public class SysUserWorkExpreienceController extends BaseControllerImpl<SysUserWorkExpreience> implements BaseController<SysUserWorkExpreience> {

	@Autowired
	SysUserWorkExpreienceService sysUserWorkExpreienceService;

}
