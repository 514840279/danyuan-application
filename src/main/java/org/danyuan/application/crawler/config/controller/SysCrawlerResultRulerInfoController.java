package org.danyuan.application.crawler.config.controller;

import java.util.List;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.crawler.config.po.SysCrawlerResultRulerInfo;
import org.danyuan.application.crawler.config.service.SysCrawlerResultRulerInfoService;
import org.danyuan.application.crawler.config.vo.SysCrawlerResultRulerVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @文件名 SysCrawlerResultRulerInfoController.java
 * @包名 org.danyuan.application.crawler.config.controller
 * @描述 controller层
 * @时间 2020年04月25日 08:00:23
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysCrawlerResultRulerInfo")
public class SysCrawlerResultRulerInfoController extends BaseControllerImpl<SysCrawlerResultRulerInfo> implements BaseController<SysCrawlerResultRulerInfo> {
	
	@Autowired
	SysCrawlerResultRulerInfoService sysCrawlerResultRulerInfoService;
	
	@GetMapping("/detail/{uuid}")
	public ModelAndView name(@PathVariable("uuid") String uuid) {
		ModelAndView modelAndView = new ModelAndView("crawler/config/syscrawlerresultrulerinfodetail");
		SysCrawlerResultRulerInfo info = new SysCrawlerResultRulerInfo();
		info.setUuid(uuid);
		modelAndView.addObject("sysCrawlerResultRulerInfo", sysCrawlerResultRulerInfoService.findOne(info));
		return modelAndView;
	}
	
	/**
	 * 方法名 ： saveResultRulerInfo
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseController#save(org.danyuan.application.common.base.Pagination)
	 * 作 者 ： wang
	 */
	@RequestMapping("/saveResultRulerInfo")
	public List<SysCrawlerResultRulerInfo> saveResultRulerInfo(@RequestBody SysCrawlerResultRulerVo vo) {
		return sysCrawlerResultRulerInfoService.saveResultRulerInfo(vo);
	}
}
