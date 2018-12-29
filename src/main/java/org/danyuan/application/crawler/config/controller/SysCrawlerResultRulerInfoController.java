package org.danyuan.application.crawler.config.controller;

import java.util.List;

import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.crawler.config.po.SysCrawlerResultRulerInfo;
import org.danyuan.application.crawler.config.service.SysCrawlerResultRulerInfoService;
import org.danyuan.application.crawler.config.vo.SysCrawlerResultRulerVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 文件名 ： SysCrawlerResultRulerInfoController.java
 * 包 名 ： org.danyuan.application.crawler.config.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2018年11月1日 下午8:47:11
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysCrawlerResultRulerInfo")
public class SysCrawlerResultRulerInfoController {
	
	@Autowired
	SysCrawlerResultRulerInfoService sysCrawlerResultRulerInfo;
	
	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseController#page(org.danyuan.application.common.base.Pagination)
	 * 作 者 ： wang
	 */
	@RequestMapping("/page")
	public Page<SysCrawlerResultRulerInfo> page(@RequestBody Pagination<SysCrawlerResultRulerInfo> vo) {
		return sysCrawlerResultRulerInfo.page(vo);
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
	public List<SysCrawlerResultRulerInfo> findAll(@RequestBody SysCrawlerResultRulerInfo info) {
		return sysCrawlerResultRulerInfo.findAll(info);
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
	public SysCrawlerResultRulerInfo findOne(@RequestBody SysCrawlerResultRulerInfo info) {
		return sysCrawlerResultRulerInfo.findOne(info);
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
	public String save(@RequestBody SysCrawlerResultRulerInfo info) {
		sysCrawlerResultRulerInfo.save(info);
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
	public String save(@RequestBody Pagination<SysCrawlerResultRulerInfo> vo) {
		sysCrawlerResultRulerInfo.saveAll(vo.getList());
		return "1";
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
		return sysCrawlerResultRulerInfo.saveResultRulerInfo(vo);
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
	public String delete(@RequestBody Pagination<SysCrawlerResultRulerInfo> vo) {
		sysCrawlerResultRulerInfo.deleteAll(vo.getList());
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
	@RequestMapping("/delte")
	public String delete(@RequestBody SysCrawlerResultRulerInfo info) {
		sysCrawlerResultRulerInfo.delete(info);
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
		sysCrawlerResultRulerInfo.trunc();
		return "1";
	}
	
}
