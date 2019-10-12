package org.danyuan.application.crawler.param.controller;

import java.io.IOException;

import org.apache.http.ParseException;
import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.crawler.param.po.SysCrawlerRulerInfo;
import org.danyuan.application.crawler.param.service.SysCrawlerRulerInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * 文件名 ： SysCrawlerRulerInfoController.java
 * 包 名 ： org.danyuan.application.crawler.param.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2018年11月1日 下午9:32:32
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysCrawlerRulerInfo")
public class SysCrawlerRulerInfoController extends BaseControllerImpl<SysCrawlerRulerInfo> implements BaseController<SysCrawlerRulerInfo> {
	private static final Logger	logger	= LoggerFactory.getLogger(SysCrawlerRulerInfoController.class);
	@Autowired
	SysCrawlerRulerInfoService	sysCrawlerRulerInfoService;
	
	@RequestMapping(path = "/index/{uuid}", method = RequestMethod.GET)
	public ModelAndView config(@PathVariable("uuid") String uuid) {
		logger.info("index", SysCrawlerRulerInfoController.class);
		ModelAndView view = new ModelAndView("crawler/ruler/index");
		view.addObject("taskUuid", uuid);
		return view;
	}

	@RequestMapping("/start")
	public String start(@RequestBody Pagination<SysCrawlerRulerInfo> vo) throws ParseException, IOException {
		return sysCrawlerRulerInfoService.start(vo.getList());
	}
	
	@RequestMapping("/stop")
	public String stop(@RequestBody Pagination<SysCrawlerRulerInfo> vo) {
		return sysCrawlerRulerInfoService.stop(vo.getList());
	}

}
