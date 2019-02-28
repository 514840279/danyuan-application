package org.danyuan.application.resume.modal.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.resume.modal.po.SysModalInfo;
import org.danyuan.application.resume.modal.service.SysModalInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @文件名 SysModalInfoController.java
 * @包名 org.danyuan.application.resume.modal.controller
 * @描述 controller层
 * @时间 2019年02月28日 17:42:26
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysModalInfo")
public class SysModalInfoController extends BaseControllerImpl<SysModalInfo> implements BaseController<SysModalInfo> {

	@Autowired
	SysModalInfoService sysModalInfoService;

}
