package org.danyuan.application.crawler.task.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.crawler.task.po.SysCrawlerTaskInfo;
import org.danyuan.application.crawler.task.service.SysCrawlerTaskInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * 文件名 ： SysCrawlerTaskInfoController.java
 * 包 名 ： org.danyuan.application.crawler.task.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2018年11月2日 上午6:22:40
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysCrawlerTaskInfo")
public class SysCrawlerTaskInfoController extends BaseControllerImpl<SysCrawlerTaskInfo> implements BaseController<SysCrawlerTaskInfo> {
	
	private static final Logger	logger	= LoggerFactory.getLogger(SysCrawlerTaskInfoController.class);
	
	@Autowired
	SysCrawlerTaskInfoService	sysCrawlerTaskInfoService;
	
	@RequestMapping(path = "/config/{uuid}", method = RequestMethod.GET)
	public ModelAndView config(@PathVariable("uuid") String uuid) {
		logger.info("config", SysCrawlerTaskInfoController.class);
		ModelAndView view = new ModelAndView("crawler/task/config");
		SysCrawlerTaskInfo task = new SysCrawlerTaskInfo();
		task.setUuid(uuid);
		task = sysCrawlerTaskInfoService.findOne(task);
		view.addObject("task", task);
		return view;
	}
	
//	@RequestMapping("/start/run")
//	public void run(@RequestBody Pagination<SysCrawlerTaskInfo> vo) throws ParseException, IOException {
//		sysCrawlerTaskInfoService.run(vo.getList());
//	}
}
