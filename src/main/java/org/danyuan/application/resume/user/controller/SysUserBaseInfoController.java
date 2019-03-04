package org.danyuan.application.resume.user.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.resume.user.po.SysUserBaseInfo;
import org.danyuan.application.resume.user.service.SysUserBaseInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @文件名 SysUserBaseInfoController.java
 * @包名 org.danyuan.application.resume.user.controller
 * @描述 controller层
 * @时间 2019年03月04日 14:46:05
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysUserBaseInfo")
public class SysUserBaseInfoController extends BaseControllerImpl<SysUserBaseInfo> implements BaseController<SysUserBaseInfo> {

	@Autowired
	SysUserBaseInfoService sysUserBaseInfoService;

}
