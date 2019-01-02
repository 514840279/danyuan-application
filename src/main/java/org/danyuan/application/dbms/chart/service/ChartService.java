package org.danyuan.application.dbms.chart.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.danyuan.application.dbms.chart.dao.SysChartNodeColsDao;
import org.danyuan.application.dbms.chart.dao.SysChartNodeDao;
import org.danyuan.application.dbms.chart.dao.SysChartRelationshipTypeDao;
import org.danyuan.application.dbms.chart.po.SysChartNode;
import org.danyuan.application.dbms.chart.po.SysChartNodeCols;
import org.danyuan.application.dbms.chart.po.SysChartRelationshipType;
import org.danyuan.application.dbms.tabs.vo.MulteityParam;
import org.danyuan.application.dbms.tabs.vo.SysDbmsTabsColsInfoVo;
import org.neo4j.driver.internal.InternalPath;
import org.neo4j.driver.v1.AuthTokens;
import org.neo4j.driver.v1.Driver;
import org.neo4j.driver.v1.GraphDatabase;
import org.neo4j.driver.v1.Record;
import org.neo4j.driver.v1.Session;
import org.neo4j.driver.v1.StatementResult;
import org.neo4j.driver.v1.Value;
import org.neo4j.driver.v1.types.Node;
import org.neo4j.driver.v1.types.Relationship;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： CompanyGtService.java
 * 包 名 ： com.shumeng.application.chart.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年3月27日 上午11:52:35
 * 版 本 ： V1.0
 */
@Service
public class ChartService {

	private Driver						driver;
	@Autowired
	private SysChartNodeDao				sysChartNodeDao;
	@Autowired
	private SysChartNodeColsDao			sysChartNodeColsDao;

	@Autowired
	private SysChartRelationshipTypeDao	sysChartRelationshipTypeDao;

	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param vo
	 * 参 数： @return
	 * 返 回： Map<String,Object>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public Map<String, Object> findAll(SysDbmsTabsColsInfoVo vo) {
		int limit = vo.getPageSize() == null ? 25 : vo.getPageSize();
		List<MulteityParam> list = vo.getParamList();
		Map<String, Object> map = new HashMap<>();
		if (list != null && list.size() == 1) {
			map = findOneByValue(list.get(0), limit);
		} else if (list != null && list.size() > 1) {
			map = findAllByValue(list, limit);
		} else {
			map.put("resultType", 0);
			map.put("message", "请提交可用参数");
		}
		return map;
	}

	/**
	 * 方法名： findAllByValue
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param list
	 * 参 数： @param limit
	 * 参 数： @return
	 * 返 回： Map<String,Object>
	 * 作 者 ： Administrator
	 * @throws
	 */
	private Map<String, Object> findAllByValue(List<MulteityParam> list, int limit) {
		Map<String, Object> map = new HashMap<>();
		if (driver == null) {
			driver = GraphDatabase.driver("bolt://172.16.3.219:7687", AuthTokens.basic("neo4j", "admin"));
		}
		List<Map<String, Object>> datas = new ArrayList<>();
		List<Map<String, Object>> links = new ArrayList<>();
		List<SysChartNode> sysChartNode = sysChartNodeDao.findAllByDelete();
		List<SysChartRelationshipType> sysChartRelationshipTypeList = sysChartRelationshipTypeDao.findAllByDelete();

		Session session = driver.session();
		for (int i = 0; i < list.size() - 1; i++) {
			MulteityParam aParam = list.get(i);
			for (int j = i + 1; j < list.size(); j++) {
				MulteityParam bParam = list.get(j);
				StringBuffer sql = new StringBuffer();
				Map<String, Object> params = new HashMap<>();
				writeSqlFromMulteityParam(sql, aParam, bParam, params);
				params.put("limit", limit);
				StatementResult stat = session.run(sql.toString(), params);
				List<Record> listr = stat.list();
				if (null != listr && listr.size() > 0) {
					for (Record record : listr) {
						Value path = record.get("p");
						InternalPath sObject = (InternalPath) path.asPath();
						Iterable<Relationship> rela = sObject.relationships();
						for (Relationship relationship : rela) {
							addLinkFromRelationShip(links, relationship, sysChartRelationshipTypeList);
						}
						Iterable<Node> node1 = sObject.nodes();
						for (Node node : node1) {
							addNodeFromNode(datas, node, sysChartNode);
						}
					}
				}
			}
		}

		map.put("data", datas);
		map.put("links", links);
		return map;
	}

	/**
	 * 方法名： writeSqlFromMulteityParam
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param sql
	 * 参 数： @param aParam
	 * 参 数： @param bParam
	 * 参 数： @param params
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void writeSqlFromMulteityParam(StringBuffer sql, MulteityParam aParam, MulteityParam bParam, Map<String, Object> params) {
		sql.append("MATCH p=allshortestPaths((n1:");
		sql.append(TypeNameExtractor(aParam));
		params.put("value1", aParam.getValue());
		sql.append(":{value1}})-[r*..10]-(n2:");
		sql.append(TypeNameExtractor(bParam));
		params.put("value2", bParam.getValue());
		sql.append(":{value2}})) RETURN p LIMIT {limit}");
	}

	/**
	 * 方法名： TypeNameExtractor
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param aParam
	 * 参 数： @return
	 * 返 回： Object
	 * 作 者 ： Administrator
	 * @throws
	 */
	private String TypeNameExtractor(MulteityParam aParam) {
		String string = "";
		String type = aParam.getUserIndex();
		if ("DHHM".equals(type)) {
			string = "Mobile{Value";
		} else if ("SFZH".equals(type)) {
			string = "Person_ID{Value";
		} else if ("HH".equals(type)) {
			string = "Family_ID{Family_ID";
		} else if ("GSMC".equals(type)) {
			string = "Compamy_ID{Company_Name";
		} else if ("QQHM".equals(type)) {
			string = "QQ{Value";
		}
		return string;
	}

	/**
	 * 方法名： findOneByValue
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param multeityParam
	 * 参 数： @param limit
	 * 参 数： @return
	 * 返 回： Map<String,Object>
	 * 作 者 ： Administrator
	 * @throws
	 */
	private Map<String, Object> findOneByValue(MulteityParam multeityParam, int limit) {
		Map<String, Object> map = new HashMap<>();
		List<Map<String, Object>> datas = new ArrayList<>();
		List<Map<String, Object>> links = new ArrayList<>();

		String userIndex = multeityParam.getUserIndex();
		if (userIndex == null) {
			map.put("resultType", 0);
		}
		List<SysChartNodeCols> listc = sysChartNodeColsDao.findAllByValue(userIndex);
		if (driver == null) {
			driver = GraphDatabase.driver("bolt://172.16.3.219:7687", AuthTokens.basic("neo4j", "admin"));
		}
		List<SysChartNode> sysChartNode = sysChartNodeDao.findAllByDelete();
		Session session = driver.session();
		StringBuffer sql = new StringBuffer();
		for (int i = 0; i < listc.size(); i++) {
			for (SysChartNode sysChartNode2 : sysChartNode) {
				if (listc.get(i).getNodeUuid().equals(sysChartNode2.getUuid())) {
					if (i > 0) {
						sql.append(" union ");
					}
					sql.append(" MATCH (n1:" + sysChartNode2.getNodeName() + ")-[r]-(n2) ");
					sql.append(" WHERE n1." + listc.get(i).getColumName() + " = {value} ");
					sql.append(" RETURN r,n1,n2       ");
					// sql.append(" union ");
					// sql.append(" MATCH (n1)-[r]->(n2:" + sysChartNode2.getNodeName() + ") ");
					// sql.append(" WHERE n2." + listc.get(i).getColumName() + "= {value} ");
					// sql.append(" RETURN r,n1,n2 ");
				}
			}
		}
		sql.append("  LIMIT {limit} ");
		Map<String, Object> params = new HashMap<>();
		params.put("value", multeityParam.getValue());
		params.put("limit", limit);

		StatementResult stat = session.run(sql.toString(), params);
		List<Record> list = stat.list();

		List<SysChartRelationshipType> sysChartRelationshipTypeList = sysChartRelationshipTypeDao.findAllByDelete();
		if (null != list && list.size() > 0) {
			for (Record record : list) {
				Relationship rela = record.get("r").asRelationship();
				addLinkFromRelationShip(links, rela, sysChartRelationshipTypeList);
				Node node1 = record.get("n1").asNode();
				addNodeFromNode(datas, node1, sysChartNode);
				Node node2 = record.get("n2").asNode();
				addNodeFromNode(datas, node2, sysChartNode);
			}
		}
		map.put("data", datas);
		map.put("links", links);
		return map;

	}

	/**
	 * @param sysChartNode
	 * 方法名： addNodeFromNode
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param datas
	 * 参 数： @param node
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void addNodeFromNode(List<Map<String, Object>> datas, Node node, List<SysChartNode> sysChartNodeList) {
		// 前台需要进行去重
		boolean isexists = false;
		String nodeid = Long.toString(node.id());
		for (Map<String, Object> data : datas) {
			if (nodeid.equals(data.get("id"))) {
				isexists = true;
				break;
			}
		}
		if (!isexists) {

			Iterable<String> sLabel = node.labels();
			Map<String, Object> node1 = new HashMap<>();
			for (String ss : sLabel) {
				for (SysChartNode sysChartNode : sysChartNodeList) {
					if (sysChartNode.getNodeName().equals(ss)) {
						node1.put("id", nodeid);
						node1.put("draggable", true);
						node1.put("flag", 0);
						List<Map<String, Object>> proList = new ArrayList<>();
						List<SysChartNodeCols> cols = sysChartNodeColsDao.findAllByNodeUuid(sysChartNode.getUuid());
						boolean count = true;
						for (SysChartNodeCols sysChartNodeCols : cols) {
							// if (!"ID".equals(sysChartNodeCols.getUserIndex())) {
							Map<String, Object> nodet = new HashMap<>();
							if (sysChartNodeCols.getUserIndex() != null) {
								if (count) {
									node1.put("type", sysChartNodeCols.getUserIndex());
									node1.put("category", sysChartNodeCols.getColumnDesc());
									node1.put("name", node.get(sysChartNodeCols.getColumName()).toString().replace("\"", ""));
									isexists = false;
								}
								nodet.put("type", sysChartNodeCols.getUserIndex());
								nodet.put("category", sysChartNodeCols.getColumnDesc());
								nodet.put("name", node.get(sysChartNodeCols.getColumName()).toString().replace("\"", ""));
							} else {
								nodet.put(sysChartNodeCols.getColumnDesc() == null ? sysChartNodeCols.getColumName() : sysChartNodeCols.getColumnDesc(), node.get(sysChartNodeCols.getColumName()).toString().replace("\"", ""));
							}
							//
							proList.add(nodet);
						}
						node1.put("properties", proList);
						break;
					}
				}
			}
			datas.add(node1);
		}

	}

	/**
	 * @param sysChartRelationshipTypeList
	 * 方法名： addLinkFromRelationShip
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param links
	 * 参 数： @param rela
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void addLinkFromRelationShip(List<Map<String, Object>> links, Relationship rela, List<SysChartRelationshipType> sysChartRelationshipTypeList) {

		// 前台需要进行去重
		String source = Long.toString(rela.startNodeId());
		String target = Long.toString(rela.endNodeId());
		boolean isexists = false;
		for (Map<String, Object> link : links) {
			if (source.equals(link.get("source")) && target.equals(link.get("target"))) {
				isexists = true;
				break;
			}
		}
		if (!isexists) {
			String arel = rela.type();
			for (SysChartRelationshipType sysChartRelationshipType : sysChartRelationshipTypeList) {
				if (sysChartRelationshipType.getRelationshipName().equals(arel)) {
					arel = sysChartRelationshipType.getRelationshipDesc();
					break;
				}
			}
			Map<String, Object> link = new HashMap<>();
			if (source != target) {
				link.put("source", source);
				link.put("target", target);
				link.put("value", arel);
				links.add(link);
			}
		}

	}

}
