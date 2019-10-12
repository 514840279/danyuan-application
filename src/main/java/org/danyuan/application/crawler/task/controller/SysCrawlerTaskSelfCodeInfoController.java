package org.danyuan.application.crawler.task.controller;

import java.util.List;

import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.crawler.task.po.SysCrawlerTaskSelfCodeInfo;
import org.danyuan.application.crawler.task.service.SysCrawlerTaskSelfCodeInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 文件名 ： SysCrawlerTaskSelfCodeInfoController.java
 * 包 名 ： org.danyuan.application.crawler.task.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2018年11月2日 上午6:23:34
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysCrawlerTaskSelfCodeInfo")
public class SysCrawlerTaskSelfCodeInfoController {
	
	@Autowired
	SysCrawlerTaskSelfCodeInfoService sysCrawlerTaskSelfCodeInfoService;
	
	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseController#page(org.danyuan.application.common.base.Pagination)
	 * 作 者 ： wang
	 */
	@RequestMapping("/page")
	public Page<SysCrawlerTaskSelfCodeInfo> page(@RequestBody Pagination<SysCrawlerTaskSelfCodeInfo> vo) {
		return sysCrawlerTaskSelfCodeInfoService.page(vo);
	}
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseController#findAll(java.lang.Object)
	 * 作 者 ： wang
	 */
	@RequestMapping("/findAll")
	public List<SysCrawlerTaskSelfCodeInfo> findAll(@RequestBody SysCrawlerTaskSelfCodeInfo info) {
		return sysCrawlerTaskSelfCodeInfoService.findAll(info);
	}
	
	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseController#findOne(java.lang.Object)
	 * 作 者 ： wang
	 */
	@RequestMapping("/findOne")
	public SysCrawlerTaskSelfCodeInfo findOne(@RequestBody SysCrawlerTaskSelfCodeInfo info) {
		return sysCrawlerTaskSelfCodeInfoService.findOne(info);
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseController#save(java.lang.Object)
	 * 作 者 ： wang
	 */
	@RequestMapping("/save")
	public String save(@RequestBody SysCrawlerTaskSelfCodeInfo info) {
		sysCrawlerTaskSelfCodeInfoService.save(info);
		return "1";
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseController#save(org.danyuan.application.common.base.Pagination)
	 * 作 者 ： wang
	 */
	@RequestMapping("/saveAll")
	public String save(@RequestBody Pagination<SysCrawlerTaskSelfCodeInfo> vo) {
		sysCrawlerTaskSelfCodeInfoService.saveAll(vo.getList());
		return "1";
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseController#delete(org.danyuan.application.common.base.Pagination)
	 * 作 者 ： wang
	 */
	@RequestMapping("/deleteAll")
	public String delete(@RequestBody Pagination<SysCrawlerTaskSelfCodeInfo> vo) {
		sysCrawlerTaskSelfCodeInfoService.deleteAll(vo.getList());
		return "1";
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseController#delete(java.lang.Object)
	 * 作 者 ： wang
	 */
	@RequestMapping("/delete")
	public String delete(@RequestBody SysCrawlerTaskSelfCodeInfo info) {
		sysCrawlerTaskSelfCodeInfoService.delete(info);
		return "1";
	}
	
	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseController#trunc()
	 * 作 者 ： wang
	 */
	@RequestMapping("/trunc")
	public String trunc() {
		sysCrawlerTaskSelfCodeInfoService.trunc();
		return "1";
	}
	
}
