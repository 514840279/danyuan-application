package org.danyuan.application.crawler.task.controller;

import java.util.List;
import java.util.UUID;

import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.crawler.task.po.SysCrawlerTaskInfo;
import org.danyuan.application.crawler.task.service.SysCrawlerTaskInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
public class SysCrawlerTaskInfoController {
	
	private static final Logger	logger	= LoggerFactory.getLogger(SysCrawlerTaskInfoController.class);
	
	@Autowired
	SysCrawlerTaskInfoService	sysCrawlerTaskInfoService;
	
	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseController#page(org.danyuan.application.common.base.Pagination)
	 * 作 者 ： wang
	 */
	@RequestMapping("/page")
	public Page<SysCrawlerTaskInfo> page(@RequestBody Pagination<SysCrawlerTaskInfo> vo) {
		logger.info("page", SysCrawlerTaskInfoController.class);
		if ("".equals(vo.getInfo().getTaskName())) {
			vo.getInfo().setTaskName(null);
		}
		return sysCrawlerTaskInfoService.page(vo);
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
	public List<SysCrawlerTaskInfo> findAll(@RequestBody SysCrawlerTaskInfo info) {
		logger.info("findAll", SysCrawlerTaskInfoController.class);
		return sysCrawlerTaskInfoService.findAll(info);
	}
	
	@RequestMapping("/findUrlType")
	public List<String> findUrlType() {
		logger.info("findUrlType", SysCrawlerTaskInfoController.class);
		return sysCrawlerTaskInfoService.findUrlType();
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
	public SysCrawlerTaskInfo findOne(@RequestBody SysCrawlerTaskInfo info) {
		logger.info("findOne", SysCrawlerTaskInfoController.class);
		return sysCrawlerTaskInfoService.findOne(info);
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
	public String save(@RequestBody SysCrawlerTaskInfo info) {
		logger.info("save", SysCrawlerTaskInfoController.class);
		if (info.getUuid() == null || "".equals(info.getUuid())) {
			info.setUuid(UUID.randomUUID().toString());
			info.setDeleteFlag(0);
		}
		sysCrawlerTaskInfoService.save(info);
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
	public String save(@RequestBody Pagination<SysCrawlerTaskInfo> vo) {
		logger.info("saveAll", SysCrawlerTaskInfoController.class);
		sysCrawlerTaskInfoService.saveAll(vo.getList());
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
	public String delete(@RequestBody Pagination<SysCrawlerTaskInfo> vo) {
		logger.info("deleteAll", SysCrawlerTaskInfoController.class);
		sysCrawlerTaskInfoService.deleteAll(vo.getList());
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
	public String delete(@RequestBody SysCrawlerTaskInfo info) {
		logger.info("delete", SysCrawlerTaskInfoController.class);
		sysCrawlerTaskInfoService.delete(info);
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
		logger.info("trunc", SysCrawlerTaskInfoController.class);
		sysCrawlerTaskInfoService.trunc();
		return null;
	}
	
}
