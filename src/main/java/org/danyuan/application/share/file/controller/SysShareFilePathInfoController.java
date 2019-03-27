package org.danyuan.application.share.file.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.share.file.po.SysShareFilePathInfo;
import org.danyuan.application.share.file.service.SysShareFilePathInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @文件名 SysShareFilePathInfoController.java
 * @包名 org.danyuan.application.share.file.controller
 * @描述 controller层
 * @时间 2019年03月27日 17:28:55
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysShareFilePathInfo")
public class SysShareFilePathInfoController extends BaseControllerImpl<SysShareFilePathInfo> implements BaseController<SysShareFilePathInfo> {

	@Autowired
	SysShareFilePathInfoService sysShareFilePathInfoService;

}
