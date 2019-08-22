package org.danyuan.application.crawler.config.controller;

import java.io.IOException;

import org.apache.http.ParseException;
import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.crawler.config.service.SysRuleInfoService;
import org.danyuan.application.crawler.task.po.SysCrawlerTaskInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
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
	
	@RequestMapping("/startTask")
	public String startTask(@RequestBody Pagination<SysCrawlerTaskInfo> vo) throws ParseException, IOException {
		return sysRuleInfoService.startTask(vo.getList(), 1);
	}

	@RequestMapping("/stopTask")
	public String stopTask(@RequestBody Pagination<SysCrawlerTaskInfo> vo) throws ParseException, IOException {
		return sysRuleInfoService.startTask(vo.getList(), 0);
	}

}
