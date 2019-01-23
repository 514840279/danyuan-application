package org.danyuan.application.dbms.chart.controller;

import java.util.List;
import java.util.UUID;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.dbms.chart.po.SysChartNode;
import org.danyuan.application.dbms.chart.service.SysChartNodeService;
import org.danyuan.application.dbms.chart.vo.SysChartNodeVo;
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
 * 文件名 ： SysChartNodeController.java
 * 包 名 ： com.shumeng.application.chart.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月3日 下午2:57:13
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysChartNode")
public class SysChartNodeController extends BaseControllerImpl<SysChartNode> implements BaseController<SysChartNode> {
	private static final Logger	logger	= LoggerFactory.getLogger(SysChartNodeController.class);
	@Autowired
	private SysChartNodeService	sysChartNodeService;

	@ApiOperation(value = "分页查询符合名称信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<SysChartNode> page(@RequestBody SysChartNodeVo vo) {
		logger.info("page", SysChartNodeController.class);
		return sysChartNodeService.page(vo.getPageNumber(), vo.getPageSize(), vo.getInfo() == null ? new SysChartNode() : vo.getInfo());
	}

	@ApiOperation(value = "更新", notes = "")
	@RequestMapping(path = "/savev", method = RequestMethod.POST)
	public String save(@RequestBody SysChartNodeVo vo) {
		logger.info("savev", SysChartNodeController.class);
		for (SysChartNode info : vo.getList()) {
			info.setUuid(UUID.randomUUID().toString());
			info.setFillColor("#6DCE9E");
			info.setStrokeColor("#60B58B");
			info.setDeleteFlag(0);
			info.setCreateUser(vo.getUsername());
			info.setUpdateUser(vo.getUsername());
			sysChartNodeService.save(info);
		}
		return "1";
	}

	@ApiOperation(value = "删除", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(@RequestBody SysChartNodeVo vo) {
		logger.info("delete", SysChartNodeController.class);
		sysChartNodeService.delete(vo.getList());
		return "1";
	}

	@ApiOperation(value = "删除", notes = "")
	@RequestMapping(path = "/list", method = RequestMethod.POST)
	public List<SysChartNode> findAll() {
		logger.info("delete", SysChartNodeController.class);
		return sysChartNodeService.findAll(new SysChartNode());
	}
}
