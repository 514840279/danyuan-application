package org.danyuan.application.crawler.config.controller;

import org.danyuan.application.crawler.config.service.SysRuleInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @文件名 CrawlerController.java
 * @包名 org.danyuan.application.crawler.config.controller
 * @描述 TODO(用一句话描述该文件做什么)
 * @时间 2019年7月19日 上午11:53:13
 * @author Administrator
 * @版本 V1.0
 */
@RestController
@RequestMapping("/crawler")
public class CrawlerController {

	@Autowired
	SysRuleInfoService sysRuleInfoService;

//	@RequestMapping("/ruler/config/{taskId}")
//	public ModelAndView cogPageView(@PathVariable("taskId") String taskid) {
//		ModelAndView view = new ModelAndView("crawler/rule/config");
//		SysRuleInfo info = new SysRuleInfo();
//		info.setUuid(taskid);
//		view.addObject("ruler", sysRuleInfoService.findOne(info));
//		return view;
//
//	}
	
	@RequestMapping(path = { "/ruler/pageList/{uuid}" })
	public ModelAndView pageList(@PathVariable("uuid") String uuid) {
		ModelAndView view = new ModelAndView("crawler/rule/pageList");
		view.addObject("uuid", uuid);
		return view;

	}

	@RequestMapping("/ruler/pageDetail/{uuid}")
	public ModelAndView pageDetail(@PathVariable("uuid") String uuid) {
		ModelAndView view = new ModelAndView("crawler/rule/pageDetail");
		view.addObject("uuid", uuid);
		return view;

	}

	@RequestMapping("/ruler/pageDict/{uuid}")
	public ModelAndView pageDict(@PathVariable("uuid") String uuid) {
		ModelAndView view = new ModelAndView("crawler/rule/pageDict");
		view.addObject("uuid", uuid);
		return view;

	}
	
//	@RequestMapping("/ruler/save")
//	public void save(@RequestBody SysRuleInfo info) {
//		sysRuleInfoService.save(info);
//	}

}
