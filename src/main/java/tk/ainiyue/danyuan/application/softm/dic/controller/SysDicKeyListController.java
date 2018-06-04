/**
 * 文件名：SysDicKeyListController.java
 *
 * 版本信息：
 * 日期：2018年5月16日
 * Copyright 足下 Corporation 2018
 * 版权所有
 */
package tk.ainiyue.danyuan.application.softm.dic.controller;

import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.common.base.Pagination;
import tk.ainiyue.danyuan.application.softm.dic.po.SysDicKeyList;
import tk.ainiyue.danyuan.application.softm.dic.service.SysDicKeyListService;

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
public class SysDicKeyListController {

	//
	private static final Logger		logger	= LoggerFactory.getLogger(SysDicKeyListController.class);
	//
	@Autowired
	private SysDicKeyListService	sysDicKeyListService;

	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "查询全部信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<SysDicKeyList> page(@RequestBody Pagination<SysDicKeyList> vo) {
		logger.info("page", SysDicKeyListController.class);
		Order order = new Order(Direction.ASC, "keyOrder");
		if (vo.getSortName() != null) {
			order = new Order(vo.getOrder(), vo.getSortName());
		}
		if (vo.getInfo() == null) {
			vo.setInfo(new SysDicKeyList());
		}
		return sysDicKeyListService.page(vo.getPageNumber(), vo.getPageSize(), vo.getInfo(), vo.getMap(), order);
	}

	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "查询全部信息", notes = "")
	@RequestMapping(path = "/findAll", method = RequestMethod.POST)
	public List<SysDicKeyList> findAll(@RequestBody SysDicKeyList info) {
		logger.info("findAll", SysDicKeyListController.class);
		return sysDicKeyListService.findAll(info);
	}

	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "查询信息", notes = "")
	@RequestMapping(path = "/findOne", method = RequestMethod.POST)
	public SysDicKeyList findOne(SysDicKeyList info) {
		logger.info("findOne", SysDicKeyListController.class);
		return sysDicKeyListService.findOne(info);
	}

	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "保存信息", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public String save(@RequestBody SysDicKeyList info) {
		logger.info("save", SysDicKeyListController.class);
		if (info.getUuid() == null || "".equals(info.getUuid())) {
			info.setUuid(UUID.randomUUID().toString());
		}
		sysDicKeyListService.save(info);
		return "1";
	}

	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "保存全部信息", notes = "")
	@RequestMapping(path = "/saveAll", method = RequestMethod.POST)
	public String save(Pagination<SysDicKeyList> vo) {
		logger.info("save", SysDicKeyListController.class);
		sysDicKeyListService.save(vo.getList());
		return "1";
	}

	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "删除全部信息", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(@RequestBody Pagination<SysDicKeyList> vo) {
		logger.info("delete", SysDicKeyListController.class);
		sysDicKeyListService.delete(vo.getList());
		return "1";
	}

	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "删除信息", notes = "")
	@RequestMapping(path = "/deleteAll", method = RequestMethod.POST)
	public String delete(SysDicKeyList info) {
		logger.info("delete", SysDicKeyListController.class);
		sysDicKeyListService.delete(info);
		return "1";
	}

	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 作 者 ： Administrator
	 */
	@ApiOperation(value = "清空表", notes = "")
	@RequestMapping(path = "/trunc", method = RequestMethod.POST)
	public String trunc() {
		logger.info("delete", SysDicKeyListController.class);
		sysDicKeyListService.trunc();
		return "1";
	}

}
