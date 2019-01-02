package org.danyuan.application.dbms.chart.controller;

import java.util.UUID;

import org.danyuan.application.dbms.chart.po.SysChartRelationshipType;
import org.danyuan.application.dbms.chart.service.SysChartRelationshipTypeService;
import org.danyuan.application.dbms.chart.vo.SysChartRelationshipTypeVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.ApiOperation;

/**
 * 文件名 ： SysChartRelationshipTypeController.java <br/>
 * 包 名 ： com.shumeng.application.chart.controller <br/>
 * 描 述 ： TODO(用一句话描述该文件做什么) <br/>
 * 机能名称： <br/>
 * 技能ID ：<br/>
 * 作 者 ： Administrator<br/>
 * 时 间 ： 2018年4月3日 下午3:31:59<br/>
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysChartRelationshipType")
public class SysChartRelationshipTypeController {
	private static final Logger				logger	= LoggerFactory.getLogger(SysChartRelationshipTypeController.class);
	@Autowired
	private SysChartRelationshipTypeService	sysChartRelationshipTypeService;

	@ApiOperation(value = "分页查询符合名称信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<SysChartRelationshipType> page(@RequestBody SysChartRelationshipTypeVo vo) {
		logger.info("page", SysChartRelationshipTypeController.class);
		return sysChartRelationshipTypeService.page(vo.getPageNumber(), vo.getPageSize(), vo.getInfo() == null ? new SysChartRelationshipType() : vo.getInfo());
	}

	@ApiOperation(value = "更新", notes = "")
	@RequestMapping(path = "/savev", method = RequestMethod.POST)
	public String save(@RequestBody SysChartRelationshipTypeVo vo) {
		logger.info("savev", SysChartRelationshipTypeController.class);
		for (SysChartRelationshipType info : vo.getList()) {
			info.setUuid(UUID.randomUUID().toString());
			info.setDeleteFlag(0);
			info.setCreateUser(vo.getUsername());
			info.setUpdateUser(vo.getUsername());
			sysChartRelationshipTypeService.save(info);
		}
		return "1";
	}

	@ApiOperation(value = "更新", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public String save(@RequestBody SysChartRelationshipType info) {
		logger.info("save", SysChartRelationshipTypeController.class);
		sysChartRelationshipTypeService.save(info);
		return "1";
	}

	@ApiOperation(value = "删除", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(@RequestBody SysChartRelationshipTypeVo vo) {
		logger.info("delete", SysChartRelationshipTypeController.class);
		sysChartRelationshipTypeService.delete(vo.getList());
		return "1";
	}
}
