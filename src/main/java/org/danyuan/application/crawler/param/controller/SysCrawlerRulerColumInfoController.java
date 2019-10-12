package org.danyuan.application.crawler.param.controller;

import java.util.List;
import java.util.UUID;

import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.crawler.param.po.SysCrawlerRulerColumInfo;
import org.danyuan.application.crawler.param.po.SysCrawlerRulerInfo;
import org.danyuan.application.crawler.param.service.SysCrawlerRulerColumInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 文件名 ： SysCrawlerRulerColumInfoController.java
 * 包 名 ： org.danyuan.application.crawler.param.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2018年11月1日 下午9:19:01
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysCrawlerRulerColumInfo")
public class SysCrawlerRulerColumInfoController {
	
	@Autowired
	SysCrawlerRulerColumInfoService sysCrawlerRulerColumInfoService;
	
	@RequestMapping("/findParent")
	public List<SysCrawlerRulerColumInfo> findParent(@RequestBody SysCrawlerRulerInfo info) {
		System.err.println(info.toString());
		return sysCrawlerRulerColumInfoService.findParent(info);
	}
	
	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseController#page(org.danyuan.application.common.base.Pagination)
	 * 作 者 ： wang
	 */
	@RequestMapping("/page")
	public Page<SysCrawlerRulerColumInfo> page(@RequestBody Pagination<SysCrawlerRulerColumInfo> vo) {
		return sysCrawlerRulerColumInfoService.page(vo);
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
	public List<SysCrawlerRulerColumInfo> findAll(@RequestBody SysCrawlerRulerColumInfo info) {
		return sysCrawlerRulerColumInfoService.findAll(info);
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
	public SysCrawlerRulerColumInfo findOne(@RequestBody SysCrawlerRulerColumInfo info) {
		return sysCrawlerRulerColumInfoService.findOne(info);
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
	public String save(@RequestBody SysCrawlerRulerColumInfo info) {
		if (info.getUuid() == null) {
			info.setUuid(UUID.randomUUID().toString());
		}
		sysCrawlerRulerColumInfoService.save(info);
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
	public String save(@RequestBody Pagination<SysCrawlerRulerColumInfo> vo) {
		sysCrawlerRulerColumInfoService.saveAll(vo.getList());
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
	public String delete(@RequestBody Pagination<SysCrawlerRulerColumInfo> vo) {
		sysCrawlerRulerColumInfoService.deleteAll(vo.getList());
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
	public String delete(@RequestBody SysCrawlerRulerColumInfo info) {
		sysCrawlerRulerColumInfoService.delete(info);
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
		sysCrawlerRulerColumInfoService.trunc();
		return "1";
	}
	
}
