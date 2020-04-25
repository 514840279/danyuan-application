package org.danyuan.application.file.upload.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.file.upload.po.SysFileUploadInfo;
import org.danyuan.application.file.upload.service.SysFileUploadInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @文件名 SysFileUploadInfoController.java
 * @包名 org.danyuan.application.file.upload.controller
 * @描述 controller层
 * @时间 2020年04月25日 16:38:22
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysFileUploadInfo")
public class SysFileUploadInfoController extends BaseControllerImpl<SysFileUploadInfo> implements BaseController<SysFileUploadInfo> {
	
	private static final Logger	logger	= LoggerFactory.getLogger(SysFileUploadInfoController.class);
	
	@Autowired
	SysFileUploadInfoService	sysFileUploadInfoService;
	
	@GetMapping("/detail/{uuid}")
	public ModelAndView name(@PathVariable("uuid") String uuid) {
		logger.info("detail", SysFileUploadInfoController.class);
		ModelAndView modelAndView = new ModelAndView("file/upload/sysfileuploadinfodetail");
		SysFileUploadInfo info = new SysFileUploadInfo();
		info.setUuid(uuid);
		modelAndView.addObject("sysFileUploadInfo", sysFileUploadInfoService.findOne(info));
		return modelAndView;
	}
	
}
