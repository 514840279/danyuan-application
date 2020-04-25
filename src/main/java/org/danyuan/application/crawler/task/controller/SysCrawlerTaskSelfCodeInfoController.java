package org.danyuan.application.crawler.task.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.crawler.task.po.SysCrawlerTaskSelfCodeInfo;
import org.danyuan.application.crawler.task.service.SysCrawlerTaskSelfCodeInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @文件名 SysCrawlerTaskSelfCodeInfoController.java
 * @包名 org.danyuan.application.crawler.task.controller
 * @描述 controller层
 * @时间 2020年04月25日 11:27:03
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysCrawlerTaskSelfCodeInfo")
public class SysCrawlerTaskSelfCodeInfoController extends BaseControllerImpl<SysCrawlerTaskSelfCodeInfo> implements BaseController<SysCrawlerTaskSelfCodeInfo> {
	
	private static final Logger			logger	= LoggerFactory.getLogger(SysCrawlerTaskSelfCodeInfoController.class);
	
	@Autowired
	SysCrawlerTaskSelfCodeInfoService	sysCrawlerTaskSelfCodeInfoService;
	
	@GetMapping("/detail/{uuid}")
	public ModelAndView name(@PathVariable("uuid") String uuid) {
		logger.info("detail", SysCrawlerTaskSelfCodeInfoController.class);
		ModelAndView modelAndView = new ModelAndView("crawler/task/syscrawlertaskselfcodeinfodetail");
		SysCrawlerTaskSelfCodeInfo info = new SysCrawlerTaskSelfCodeInfo();
		info.setUuid(uuid);
		modelAndView.addObject("sysCrawlerTaskSelfCodeInfo", sysCrawlerTaskSelfCodeInfoService.findOne(info));
		return modelAndView;
	}
	
}
