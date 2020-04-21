/**
 * 文件名：SysDicNameController.java 版本信息： 日期：2018年5月16日 Copyright 足下 Corporation 2018 版权所有
 */
package org.danyuan.application.softm.dic.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.softm.dic.po.SysDicKeyList;
import org.danyuan.application.softm.dic.po.SysDicName;
import org.danyuan.application.softm.dic.service.SysDicNameService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


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
public class SysDicNameController {
	//
	private static final Logger	logger	= LoggerFactory.getLogger(SysDicNameController.class);
	//
	@Autowired
	private SysDicNameService	sysDicNameService;

	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<SysDicName> page(@RequestBody Pagination<SysDicName> vo) {
		logger.info("page", SysDicNameController.class);

		return sysDicNameService.page(vo);
	}

	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/findAll", method = RequestMethod.GET)
	public List<SysDicName> findAll(SysDicName info) {
		logger.info("page", SysDicNameController.class);
		return sysDicNameService.findAll(info);
	}

	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/findOne", method = RequestMethod.POST)
	public SysDicName findOne(SysDicName info) {
		logger.info("findOne", SysDicNameController.class);
		return sysDicNameService.findOne(info);
	}

	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public String save(@RequestBody SysDicName info) {
		logger.info("save", SysDicNameController.class);
		if (info.getUuid() == null || "".equals(info.getUuid())) {
			info.setUuid(UUID.randomUUID().toString());
		}
		sysDicNameService.save(info);
		return "1";
	}

	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/saveAll", method = RequestMethod.POST)
	public String save(Pagination<SysDicName> vo) {
		logger.info("save", SysDicNameController.class);
		sysDicNameService.saveAll(vo.getList());
		return "1";
	}

	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(@RequestBody Pagination<SysDicName> vo) {
		logger.info("delete", SysDicNameController.class);
		sysDicNameService.deleteAll(vo.getList());
		return "1";
	}

	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/deleteAll", method = RequestMethod.POST)
	public String delete(SysDicName info) {
		logger.info("delete", SysDicNameController.class);

		sysDicNameService.delete(info);
		return "1";
	}

	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@RequestMapping(path = "/trunc", method = RequestMethod.POST)
	public String trunc() {
		logger.info("page", SysDicNameController.class);
		sysDicNameService.trunc();
		return "1";
	}

	@RequestMapping(path = "/checkCode", method = RequestMethod.POST)
	public Map<String, Boolean> checkCode(String code) {
		logger.info("checkCode", SysDicNameController.class);
		boolean boo = sysDicNameService.checkCode(code);
		Map<String, Boolean> map = new HashMap<>();
		map.put("valid", boo);
		return map;
	}

	@RequestMapping(path = "/findkeyList", method = RequestMethod.POST)
	public List<SysDicKeyList> findkeyList(@RequestBody SysDicName info) {
		logger.info("findkeyList", SysDicNameController.class);
		List<SysDicKeyList> list = sysDicNameService.findkeyList(info);
		return list;
	}

}
