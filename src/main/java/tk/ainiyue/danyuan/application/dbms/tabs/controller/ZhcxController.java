package tk.ainiyue.danyuan.application.dbms.tabs.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.dbms.tabs.po.SysDbmsUserIndexInfo;
import tk.ainiyue.danyuan.application.dbms.tabs.service.SysDbmsUserIndexInfoService;
import tk.ainiyue.danyuan.application.dbms.tabs.service.ZhcxService;
import tk.ainiyue.danyuan.application.dbms.zhcx.po.SysZhcxCol;
import tk.ainiyue.danyuan.application.dbms.zhcx.po.SysZhcxTab;
import tk.ainiyue.danyuan.application.dbms.zhcx.po.SysZhcxType;
import tk.ainiyue.danyuan.application.dbms.zhcx.service.SysZhcxColService;
import tk.ainiyue.danyuan.application.dbms.zhcx.service.SysZhcxTabService;
import tk.ainiyue.danyuan.application.dbms.zhcx.service.SysZhcxTypeService;
import tk.ainiyue.danyuan.application.dbms.zhcx.vo.SysZhcxColVo;
import tk.ainiyue.danyuan.application.dbms.zhcx.vo.SysZhcxTabVo;

/**
 * 文件名 ： ZhcxController.java
 * 包 名 ： com.shumeng.application.zhcx.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年3月9日 上午11:15:38
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/zhcx")
@Api(value = "/zhcx", description = "综合查询业务")
public class ZhcxController {

	private static final Logger	logger	= LoggerFactory.getLogger(ZhcxController.class);

	//
	@Autowired
	private SysZhcxTypeService	sysZhcxTypeService;

	//
	@Autowired
	private SysZhcxTabService	sysZhcxTabService;

	//
	@Autowired
	private SysZhcxColService	sysZhcxColService;
	@Autowired
	SysDbmsUserIndexInfoService	sysDbmsUserIndexInfoService;

	@Autowired
	private ZhcxService			zhcxService;

	@ApiOperation(value = "查询前500数据库表管理信息", notes = "")
	@RequestMapping(path = "/findAllTableRow", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Object> findAllTableRow(@RequestBody SysZhcxColVo vo) throws JsonParseException, JsonMappingException, IOException {
		logger.info("findAllTableRow", ZhcxController.class);
		Map<String, Object> map = new HashMap<>();
		if ("oracle".equals(vo.getDbType()) || "mysql".equals(vo.getDbType())) {
			// if ("单表多条件查询".equals(vo.getType())) {
			// map = zhcxService.findAllSigleTableByMulteityParam(vo);
			// } else if ("一键查询单表多个不同索引拼接".equals(vo.getType()) || "单表多条件更多查询".equals(vo.getType())) {
			// 一键查询单表多个不同索引拼接
			map = zhcxService.findBySingleTableByGroupsAndMulteityParam(vo);
			// }
		} else if ("elastic".equals(vo.getDbType())) {
			// // elasticsearch
			// map = zhcxService.findByElasticsearchByGroupsAndMulteityParam(vo);
		}
		return map;
	}

	@ApiOperation(value = "一键查询前", notes = "")
	@RequestMapping(path = "/forwardYjcx", method = RequestMethod.POST)
	public ModelAndView forwardYjcx(SysZhcxTabVo vo) {
		logger.info("forwardYjcx", ZhcxController.class);
		ModelAndView view = new ModelAndView("zhcx/search/yjcx");
		List<SysDbmsUserIndexInfo> list = sysDbmsUserIndexInfoService.findAll();
		view.addObject("type", vo.getType());
		view.addObject("list", list);
		view.addObject("paramString", vo.getParamString());
		return view;
	}

	@ApiOperation(value = "类型查询", notes = "")
	@RequestMapping(path = "/findAllType", method = RequestMethod.POST)
	public List<SysZhcxType> findAllType(String username) {
		logger.info("findAllType", ZhcxController.class);
		List<SysZhcxType> list = sysZhcxTypeService.findAllType(username);
		return list;
	}

	@ApiOperation(value = "表名查询", notes = "")
	@RequestMapping(path = "/findAllTable", method = RequestMethod.POST)
	public List<SysZhcxTab> findAllTable(@RequestBody SysZhcxTabVo vo) {
		logger.info("findAllTable", ZhcxController.class);
		List<SysZhcxTab> list = sysZhcxTabService.findAllTable(vo);
		if (list != null) {
			return list;
		} else {
			return new ArrayList<SysZhcxTab>();
		}
	}

	@ApiOperation(value = "表名查询", notes = "")
	@RequestMapping(path = "/findAllTableByTypeUuid", method = RequestMethod.POST)
	public List<SysZhcxTab> findAllTableByTypeUuid(@RequestBody SysZhcxTabVo vo) {
		logger.info("findAllTableByTypeUuid", ZhcxController.class);
		List<SysZhcxTab> list = sysZhcxTabService.findAllByTypeUuid(vo);
		return list;
	}

	@ApiOperation(value = "表名查询", notes = "")
	@RequestMapping(path = "/findAllColumn", method = RequestMethod.POST)
	public List<SysZhcxCol> findAllColumn(@RequestBody SysZhcxColVo vo) {
		logger.info("findAllColumn", ZhcxController.class);
		logger.info(vo.toString(), ZhcxController.class);
		List<SysZhcxCol> list = sysZhcxColService.findAllColumn(vo);
		return list;
	}

	@ApiOperation(value = "一键查询前", notes = "")
	@RequestMapping(path = "/forwardZhlb", method = RequestMethod.POST)
	public ModelAndView forwardZhlb(SysZhcxTabVo vo) {
		logger.info("forwardZhlb", ZhcxController.class);
		ModelAndView view = new ModelAndView("zhcx/search/zhlb");
		view.addObject("tableuuid", vo.getTableuuid());
		view.addObject("tableDesc", vo.getTableDesc());
		view.addObject("tableName", vo.getTableName());
		view.addObject("dbType", vo.getDbType());
		view.addObject("esName", vo.getEsName());
		view.addObject("tableRows", vo.getTableRows());
		view.addObject("type", vo.getType());
		view.addObject("paramString", vo.getParamString());
		return view;
	}

	@ApiOperation(value = "详细展示", notes = "")
	@RequestMapping(path = "/forwardZhxx", method = RequestMethod.POST)
	public ModelAndView forwardZhxx(SysZhcxColVo vo) {
		logger.info("forwardZhxx", ZhcxController.class);
		ModelAndView view = new ModelAndView("zhcx/search/zhxx");
		view.addObject("mapString", vo.getMapString());
		view.addObject("tableName", vo.getTableName());
		view.addObject("tableDesc", vo.getTableDesc());
		view.addObject("paramString", vo.getParamString());
		return view;
	}

	@ApiOperation(value = "详细展示", notes = "")
	@RequestMapping(path = "/forwardChart", method = RequestMethod.POST)
	public ModelAndView forwardChart(SysZhcxColVo vo) {
		logger.info("forwardChart", ZhcxController.class);
		ModelAndView view = new ModelAndView("zhcx/search/chart");
		view.addObject("paramString", vo.getParamString());
		return view;
	}

}
