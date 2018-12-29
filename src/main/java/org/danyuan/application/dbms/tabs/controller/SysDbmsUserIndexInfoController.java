package org.danyuan.application.dbms.tabs.controller;

import java.util.List;

import org.danyuan.application.dbms.tabs.po.SysDbmsUserIndexInfo;
import org.danyuan.application.dbms.tabs.service.SysDbmsUserIndexInfoService;
import org.danyuan.application.dbms.tabs.vo.SysDbmsUserIndexInfoVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * 文件名 ： SysDbmsUserIndexInfoController.java
 * 包 名 ： com.shumeng.application.zhcx.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年3月8日 下午1:40:42
 * 版 本 ： V1.0
 */

@RestController
@RequestMapping("/sysDbmsUserIndexInfo")
public class SysDbmsUserIndexInfoController {
	//
	private static final Logger	logger	= LoggerFactory.getLogger(SysDbmsUserIndexInfoController.class);
	
	@Autowired
	SysDbmsUserIndexInfoService	sysDbmsUserIndexInfoService;
	
	@RequestMapping(path = "/findAll", method = RequestMethod.POST)
	public List<SysDbmsUserIndexInfo> findAll() {
		logger.info("findAll", SysDbmsUserIndexInfoController.class);
		return sysDbmsUserIndexInfoService.findAll();
		
	}
	
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<SysDbmsUserIndexInfo> page(@RequestBody SysDbmsUserIndexInfoVo vo) {
		logger.info("page", SysDbmsUserIndexInfoController.class);
		SysDbmsUserIndexInfo col = new SysDbmsUserIndexInfo();
		return sysDbmsUserIndexInfoService.page(vo.getPageNumber(), vo.getPageSize(), col);
	}
	
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public String save(@RequestBody SysDbmsUserIndexInfo info) {
		logger.info("save", SysDbmsUserIndexInfoController.class);
		sysDbmsUserIndexInfoService.save(info);
		return "1";
	}
	
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(@RequestBody SysDbmsUserIndexInfoVo vo) {
		logger.info("delete", SysDbmsUserIndexInfoController.class);
		sysDbmsUserIndexInfoService.delete(vo.getList());
		return "1";
	}
	
}
