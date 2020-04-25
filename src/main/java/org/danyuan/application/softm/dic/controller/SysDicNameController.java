/**
 * 文件名：SysDicNameController.java 版本信息： 日期：2018年5月16日 Copyright 足下 Corporation 2018 版权所有
 */
package org.danyuan.application.softm.dic.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.softm.dic.po.SysDicKeyList;
import org.danyuan.application.softm.dic.po.SysDicName;
import org.danyuan.application.softm.dic.service.SysDicNameService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * 文件名 ： SysDicNameController.java
 * 包 名 ： com.shumeng.application.softm.dic.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年5月16日 上午9:35:38
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysDicName")
@Api(value = "/SysDicName", description = "字典名称数据")
public class SysDicNameController extends BaseControllerImpl<SysDicName> implements BaseController<SysDicName> {
	//
	private static final Logger	logger	= LoggerFactory.getLogger(SysDicNameController.class);
	//
	@Autowired
	private SysDicNameService	sysDicNameService;
	
	@ApiOperation(value = "检查代码重复", notes = "")
	@RequestMapping(path = "/checkCode", method = RequestMethod.POST)
	public Map<String, Boolean> checkCode(String code) {
		logger.info("checkCode", SysDicNameController.class);
		boolean boo = sysDicNameService.checkCode(code);
		Map<String, Boolean> map = new HashMap<>();
		map.put("valid", boo);
		return map;
	}
	
	@ApiOperation(value = "根据代码查列表值", notes = "")
	@RequestMapping(path = "/findkeyList", method = RequestMethod.POST)
	public List<SysDicKeyList> findkeyList(@RequestBody SysDicName info) {
		logger.info("findkeyList", SysDicNameController.class);
		List<SysDicKeyList> list = sysDicNameService.findkeyList(info);
		return list;
	}
	
	@GetMapping("/detail/{uuid}")
	public ModelAndView name(@PathVariable("uuid") String uuid) {
		logger.info("detail", SysDicNameController.class);
		ModelAndView modelAndView = new ModelAndView("softm/dic/sysdicnamedetail");
		SysDicName info = new SysDicName();
		info.setUuid(uuid);
		modelAndView.addObject("sysDicName", sysDicNameService.findOne(info));
		return modelAndView;
	}
	
}
