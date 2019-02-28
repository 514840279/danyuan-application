package org.danyuan.application.resume.user.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.resume.user.po.SysUserEvaluate;
import org.danyuan.application.resume.user.service.SysUserEvaluateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @文件名 SysUserEvaluateController.java
 * @包名 org.danyuan.application.resume.user.controller
 * @描述 controller层
 * @时间 2019年02月28日 17:42:26
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysUserEvaluate")
public class SysUserEvaluateController extends BaseControllerImpl<SysUserEvaluate> implements BaseController<SysUserEvaluate> {

	@Autowired
	SysUserEvaluateService sysUserEvaluateService;

}
