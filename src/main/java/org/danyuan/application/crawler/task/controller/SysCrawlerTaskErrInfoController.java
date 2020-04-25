package org.danyuan.application.crawler.task.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.crawler.task.po.SysCrawlerTaskErrInfo;
import org.danyuan.application.crawler.task.service.SysCrawlerTaskErrInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @文件名 SysCrawlerTaskErrInfoController.java
 * @包名 org.danyuan.application.crawler.task.controller
 * @描述 controller层
 * @时间 2020年04月25日 11:27:02
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysCrawlerTaskErrInfo")
public class SysCrawlerTaskErrInfoController extends BaseControllerImpl<SysCrawlerTaskErrInfo> implements BaseController<SysCrawlerTaskErrInfo> {
	
	private static final Logger		logger	= LoggerFactory.getLogger(SysCrawlerTaskErrInfoController.class);
	
	@Autowired
	SysCrawlerTaskErrInfoService	sysCrawlerTaskErrInfoService;
	
	@GetMapping("/detail/{uuid}")
	public ModelAndView name(@PathVariable("uuid") String uuid) {
		logger.info("detail", SysCrawlerTaskErrInfoController.class);
		ModelAndView modelAndView = new ModelAndView("crawler/task/syscrawlertaskerrinfodetail");
		SysCrawlerTaskErrInfo info = new SysCrawlerTaskErrInfo();
		info.setUuid(uuid);
		modelAndView.addObject("sysCrawlerTaskErrInfo", sysCrawlerTaskErrInfoService.findOne(info));
		return modelAndView;
	}
	
}
