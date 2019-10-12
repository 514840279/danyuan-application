package org.danyuan.application.resume.user.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.resume.user.po.SysUserProject;
import org.danyuan.application.resume.user.service.SysUserProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @文件名 SysUserProjectController.java
 * @包名 org.danyuan.application.resume.user.controller
 * @描述 controller层
 * @时间 2019年03月04日 11:09:42
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysUserProject")
public class SysUserProjectController extends BaseControllerImpl<SysUserProject> implements BaseController<SysUserProject> {

	@Autowired
	SysUserProjectService sysUserProjectService;

}
