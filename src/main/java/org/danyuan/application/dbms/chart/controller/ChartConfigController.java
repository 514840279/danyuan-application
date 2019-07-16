package org.danyuan.application.dbms.chart.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.danyuan.application.dbms.chart.dao.SysChartNodeColsDao;
import org.danyuan.application.dbms.chart.dao.SysChartNodeDao;
import org.danyuan.application.dbms.chart.dao.SysChartRelationshipTypeDao;
import org.danyuan.application.dbms.chart.po.SysChartNode;
import org.danyuan.application.dbms.chart.po.SysChartNodeCols;
import org.danyuan.application.dbms.chart.po.SysChartRelationshipType;
import org.danyuan.application.dbms.chart.vo.SysChartNodeVo;
import org.neo4j.driver.v1.Driver;
import org.neo4j.driver.v1.Record;
import org.neo4j.driver.v1.Session;
import org.neo4j.driver.v1.StatementResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.ApiOperation;

/**
 * 文件名 ： ChartConfigController.java
 * 包 名 ： com.shumeng.application.chart.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月3日 下午4:12:02
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/chartConfig")
public class ChartConfigController {
	
	@Autowired
	private Driver						driver;
	
	@Autowired
	private SysChartNodeDao				sysChartNodeDao;
	
	@Autowired
	private SysChartRelationshipTypeDao	sysChartRelationshipTypeDao;
	
	@Autowired
	private SysChartNodeColsDao			sysChartNodeColsDao;
	
	@ApiOperation(value = "分页查询符合名称信息", notes = "")
	@RequestMapping(path = "/list", method = RequestMethod.POST)
	public List<Map<String, String>> findAll() {
		
		List<SysChartNode> aEs = sysChartNodeDao.findAll();
		Session session = driver.session();
		StatementResult stat = session.run("CALL db.labels()");
		List<Record> list = stat.list();
		List<Map<String, String>> re = new ArrayList<>();
		for (Record record : list) {
			Map<String, String> map = new HashMap<>();
			boolean exists = true;
			for (SysChartNode node : aEs) {
				if (node.getNodeName().equals(record.get("label").asString())) {
					exists = false;
					break;
				}
			}
			if (exists) {
				map.put("nodeName", record.get("label").asString());
				re.add(map);
			}
		}
		return re;
	}
	
	@ApiOperation(value = "分页查询符合名称信息", notes = "")
	@RequestMapping(path = "/relationship", method = RequestMethod.POST)
	public List<Map<String, String>> relationship() {
		
		List<SysChartRelationshipType> aEs = sysChartRelationshipTypeDao.findAll();
		Session session = driver.session();
		StatementResult stat = session.run("CALL db.relationshipTypes()");
		List<Record> list = stat.list();
		List<Map<String, String>> re = new ArrayList<>();
		for (Record record : list) {
			Map<String, String> map = new HashMap<>();
			boolean exists = true;
			for (SysChartRelationshipType node : aEs) {
				if (node.getRelationshipName().equals(record.get("relationshipType").asString())) {
					exists = false;
					break;
				}
			}
			if (exists) {
				map.put("relationshipName", record.get("relationshipType").asString());
				re.add(map);
			}
		}
		return re;
	}
	
	@ApiOperation(value = "分页查询符合名称信息", notes = "")
	@RequestMapping(path = "/listcols", method = RequestMethod.POST)
	public List<Map<String, String>> listcols(@RequestBody SysChartNodeVo vo) {
		List<Map<String, String>> re = new ArrayList<>();
		if (vo.getInfo() != null && vo.getInfo().getUuid() != null && !"".equals(vo.getInfo().getUuid())) {
			Example<SysChartNode> example = Example.of(vo.getInfo());
			Optional<SysChartNode> optional = sysChartNodeDao.findOne(example);
			SysChartNode nodes = null;
			if (optional.isPresent()) {
				nodes = optional.get();
				
				List<SysChartNodeCols> aEs = sysChartNodeColsDao.findAllByNodeUuid(vo.getInfo().getUuid());
				
				Session session = driver.session();
				StatementResult stat = session.run("MATCH (n:" + nodes.getNodeName() + ") RETURN n LIMIT 1");
				List<Record> list = stat.list();
				for (Record record : list) {
					Iterable<String> strings = record.get("n").asNode().keys();
					for (String string : strings) {
						Map<String, String> map = new HashMap<>();
						boolean exists = true;
						for (SysChartNodeCols node : aEs) {
							if (node.getColumName().equals(string)) {
								exists = false;
								break;
							}
						}
						if (exists) {
							map.put("nodeUuid", vo.getInfo().getUuid());
							map.put("columName", string);
							re.add(map);
						}
					}
				}
			}
		}
		return re;
	}
	
}
