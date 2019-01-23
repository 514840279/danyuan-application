package org.danyuan.application.dbms.chart.controller;

import java.util.UUID;

import org.danyuan.application.dbms.chart.po.SysChartNodeCols;
import org.danyuan.application.dbms.chart.service.SysChartNodeColsService;
import org.danyuan.application.dbms.chart.vo.SysChartNodeColsVo;
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
 * 文件名 ： SysChartNodeColsController.java
 * 包 名 ： com.shumeng.application.chart.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月3日 下午3:15:42
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysChartNodeCols")
public class SysChartNodeColsController {
	private static final Logger		logger	= LoggerFactory.getLogger(SysChartNodeColsController.class);
	@Autowired
	private SysChartNodeColsService	sysChartNodeColsService;

	@ApiOperation(value = "分页查询符合名称信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<SysChartNodeCols> page(@RequestBody SysChartNodeColsVo vo) {
		logger.info("page", SysChartNodeColsController.class);
		return sysChartNodeColsService.page(vo.getPageNumber().intValue(), vo.getPageSize().intValue(), vo.getInfo());
	}

	@ApiOperation(value = "更新", notes = "")
	@RequestMapping(path = "/savev", method = RequestMethod.POST)
	public String save(@RequestBody SysChartNodeColsVo vo) {
		logger.info("savev", SysChartNodeController.class);
		int i = 0;
		for (SysChartNodeCols info : vo.getList()) {
			info.setUuid(UUID.randomUUID().toString());
			info.setDeleteFlag(0);
			info.setColumnOrder(i);
			info.setCreateUser(vo.getUsername());
			info.setUpdateUser(vo.getUsername());
			sysChartNodeColsService.save(info);
			i++;
		}
		return "1";
	}

	@ApiOperation(value = "更新", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public String save(@RequestBody SysChartNodeCols info) {
		logger.info("save", SysChartNodeController.class);
		sysChartNodeColsService.save(info);
		return "1";
	}

	@ApiOperation(value = "删除", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(@RequestBody SysChartNodeColsVo vo) {
		logger.info("delete", SysChartNodeController.class);
		sysChartNodeColsService.delete(vo.getList());
		return "1";
	}
}
