package org.danyuan.application.resume.modal.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.resume.modal.po.SysModalInfo;
import org.danyuan.application.resume.modal.service.SysModalInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @文件名 SysModalInfoController.java
 * @包名 org.danyuan.application.resume.modal.controller
 * @描述 controller层
 * @时间 2020年04月25日 16:38:08
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysModalInfo")
public class SysModalInfoController extends BaseControllerImpl<SysModalInfo> implements BaseController<SysModalInfo> {
	
	private static final Logger	logger	= LoggerFactory.getLogger(SysModalInfoController.class);
	
	@Autowired
	SysModalInfoService			sysModalInfoService;
	
	@GetMapping("/detail/{uuid}")
	public ModelAndView name(@PathVariable("uuid") String uuid) {
		logger.info("detail", SysModalInfoController.class);
		ModelAndView modelAndView = new ModelAndView("resume/modal/sysmodalinfodetail");
		SysModalInfo info = new SysModalInfo();
		info.setUuid(uuid);
		modelAndView.addObject("sysModalInfo", sysModalInfoService.findOne(info));
		return modelAndView;
	}
	
}
