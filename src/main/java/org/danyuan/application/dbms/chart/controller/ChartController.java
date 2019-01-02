package org.danyuan.application.dbms.chart.controller;

import java.util.Map;

import org.danyuan.application.dbms.chart.service.ChartService;
import org.danyuan.application.dbms.tabs.vo.SysDbmsTabsColsInfoVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.ApiOperation;

/**
 * 文件名 ： ChartController.java
 * 包 名 ： com.shumeng.application.zhcx.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年3月26日 下午1:32:34
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/graph")
public class ChartController {
	@Autowired
	ChartService chartService;
	
	@ApiOperation(value = "分页查询符合名称信息", notes = "")
	@RequestMapping(path = "/rel2", method = RequestMethod.POST)
	public Map<String, Object> rel2(@RequestBody SysDbmsTabsColsInfoVo vo) throws NoSuchFieldException, SecurityException {
		Map<String, Object> map = chartService.findAll(vo);
		return map;
	}
	
}
