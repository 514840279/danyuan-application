package org.danyuan.application.share.file.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.share.file.po.SysShareFileInfo;
import org.danyuan.application.share.file.service.SysShareFileInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @文件名 SysShareFileInfoController.java
 * @包名 org.danyuan.application.share.file.controller
 * @描述 controller层
 * @时间 2019年03月27日 17:28:55
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysShareFileInfo")
public class SysShareFileInfoController extends BaseControllerImpl<SysShareFileInfo> implements BaseController<SysShareFileInfo> {
	
	private static final Logger	logger	= LoggerFactory.getLogger(SysShareFileInfoController.class);
	
	@Autowired
	SysShareFileInfoService		sysShareFileInfoService;
	
	@RequestMapping("/search")
	public Page<SysShareFileInfo> search(@RequestBody Pagination<SysShareFileInfo> info) {
		
		return sysShareFileInfoService.search(info);
	}
	
	@RequestMapping(path = "/fileinfo/{uuid}", method = RequestMethod.GET)
	public ModelAndView fileinfo(@PathVariable("uuid") String uuid) {
		logger.info("fileinfo", SysShareFileInfoController.class);
		ModelAndView view = new ModelAndView("share/file/info");
		view.addObject("file", sysShareFileInfoService.findById(uuid));
		return view;
	}
	
	@GetMapping("/detail/{uuid}")
	public ModelAndView name(@PathVariable("uuid") String uuid) {
		logger.info("detail", SysShareFileInfoController.class);
		ModelAndView modelAndView = new ModelAndView("share/file/syssharefileinfodetail");
		SysShareFileInfo info = new SysShareFileInfo();
		info.setUuid(uuid);
		modelAndView.addObject("sysShareFileInfo", sysShareFileInfoService.findOne(info));
		return modelAndView;
	}
	
}
