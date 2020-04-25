/**
 * 文件名：SysDicKeyListController.java 版本信息： 日期：2018年5月16日 Copyright 足下 Corporation 2018 版权所有
 */
package org.danyuan.application.softm.dic.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.softm.dic.po.SysDicKeyList;
import org.danyuan.application.softm.dic.service.SysDicKeyListService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import io.swagger.annotations.Api;

/**
 * 文件名 ： SysDicKeyListController.java
 * 包 名 ： com.shumeng.application.softm.dic.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年5月16日 上午9:40:18
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysDicKeyList")
@Api(value = "/SysDicKeyList", description = "字典数据")
public class SysDicKeyListController extends BaseControllerImpl<SysDicKeyList> implements BaseController<SysDicKeyList> {
	private static final Logger	logger	= LoggerFactory.getLogger(SysDicKeyListController.class);
	
	@Autowired
	SysDicKeyListService		sysDicKeyListService;
	
	@GetMapping("/detail/{uuid}")
	public ModelAndView name(@PathVariable("uuid") String uuid) {
		logger.info("detail", SysDicKeyListController.class);
		ModelAndView modelAndView = new ModelAndView("softm/dic/sysdickeylistdetail");
		SysDicKeyList info = new SysDicKeyList();
		info.setUuid(uuid);
		modelAndView.addObject("sysDicKeyList", sysDicKeyListService.findOne(info));
		return modelAndView;
	}
	
}
