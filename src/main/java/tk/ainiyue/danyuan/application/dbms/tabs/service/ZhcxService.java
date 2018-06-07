package tk.ainiyue.danyuan.application.dbms.tabs.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.dbms.tabs.po.SysDbmsTabsColsInfo;
import tk.ainiyue.danyuan.application.dbms.tabs.vo.MulteityParam;
import tk.ainiyue.danyuan.application.dbms.tabs.vo.SysDbmsTabsColsInfoVo;

/**
 * 文件名 ： ZhcxService.java
 * 包 名 ： com.shumeng.application.zhcx.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年3月20日 上午9:20:59
 * 版 本 ： V1.0
 */
@Service
public class ZhcxService {
	@Autowired
	JdbcTemplate	jdbcTemplate;
	@Value("${spring.jpa.database}")
	private String	database;

	/**
	 * 方法名： findAllSigleTableByMulitityParam
	 * 功 能： 单表多条件查询
	 * 参 数： @param vo
	 * 参 数： @return
	 * 返 回： Map<String,Object>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public Map<String, Object> findAllSigleTableByMulteityParam(SysDbmsTabsColsInfoVo vo) {
		Map<String, Object> map = new HashMap<>();
		// 默认单表查询
		StringBuffer sql = new StringBuffer();
		sql.append("Select * from " + vo.getTabsName());
		// 单表多条件查询时 拼接sql
		sql.append("  where 1=1  ");
		for (SysDbmsTabsColsInfo sysZhcxCol : vo.getList()) {
			String colsRange = sysZhcxCol.getTabsUuid();
			String coldType = sysZhcxCol.getColsType();
			String colName = sysZhcxCol.getColsName();
			String colValue = sysZhcxCol.getColsDesc();
			if (colValue != null) {
				colValue = colValue.replace("*", "%").replace("?", "_");
			}
			if ("CHAR".equals(coldType) && null != colValue && !"".equals(colValue)) {
				if (colValue.indexOf("%") == -1 && colValue.indexOf("_") == -1) {
					// 精确查询
					sql.append(" and " + colName + " = '" + colValue + "'   ");
				} else if (!colValue.startsWith("%") && colValue.endsWith("%")) {
					// 前like查询
					sql.append(" and " + colName + " like '" + colValue + "'   ");
				} else {
					// 前后like查询oracle慢，变成精确
					sql.append(" and " + colName + " = '" + colValue + "'   ");
				}
			} else if ("DATE".equals(coldType) && null != colValue && !"".equals(colValue)) {
				if ("left".equals(colsRange)) {
					sql.append(" and " + colName + " >= to_date('" + colValue + "', 'YYYY-MM-DD') ");
				} else if ("right".equals(colsRange)) {
					sql.append(" and " + colName + " <= to_date('" + colValue + "', 'YYYY-MM-DD') ");
				}
			} else if ("NUMBER".equals(coldType) && null != colValue && !"".equals(colValue)) {
				if ("left".equals(colsRange)) {
					sql.append(" and " + colName + " >= " + colValue + "    ");
				} else if ("right".equals(colsRange)) {
					sql.append(" and " + colName + " <= " + colValue + "   ");
				}
			}
		}

		resultMap(sql.toString(), null, vo, map);
		return map;
	}

	private void resultMap(String sqlString, Map<String, String> param, SysDbmsTabsColsInfoVo vo, Map<String, Object> resultMap) {

		StringBuilder pageSql = new StringBuilder();
		if ("Oracle".equals(database)) {
			pageSql.append(" select *  ");
			pageSql.append(" from (select tp.*,    ");
			pageSql.append("   rownum as tp_rownum ");
			pageSql.append("    from (    ");
			pageSql.append(" " + sqlString.toString() + "    ");
			pageSql.append("   ) tp   ");
			pageSql.append("   where rownum <= " + (vo.getPageNumber().intValue()) * vo.getPageSize().intValue() + "");
			pageSql.append(" )                           	   ");
			pageSql.append(" where tp_rownum > " + (vo.getPageNumber().intValue() - 1) * vo.getPageSize().intValue() + "  ");
		} else if ("MYSQL".equals(database)) {
			pageSql.append(sqlString.toString() + " limit " + (vo.getPageNumber().intValue() - 1) * vo.getPageSize().intValue() + "," + vo.getPageSize().intValue());
		}

		System.out.println(pageSql.toString());
		// List<Map<String, Object>> list = jdbcTemplate.queryForList(pageSql.toString());
		NamedParameterJdbcTemplate template = new NamedParameterJdbcTemplate(jdbcTemplate);
		List<Map<String, Object>> list = template.queryForList(pageSql.toString(), param);
		if (list != null) {
			resultMap.put("list", list);
		} else {
			resultMap.put("list", new ArrayList<>());
		}
		if ("单表多条件查询".equals(vo.getType()) || "单表多条件更多查询".equals(vo.getType())) {
			String countsql = "";
			if ("Oracle".equals(database)) {
				countsql = "select count(1) as total from (" + sqlString.toString() + "  and rownum < 500  ) count";
			} else {
				countsql = "select count(1) as total from (" + sqlString.toString() + "  limit 0, 500  ) count";
			}
			if ((vo.getTotal() == null || "0".equals(vo.getTotal().toString()))) {
				// Map<String, Object> total = jdbcTemplate.queryForMap(countsql);
				long count = template.queryForObject(countsql, param, Long.class);
				resultMap.put("total", count);
			} else {
				resultMap.put("total", vo.getTotal().intValue());
			}
		}
	}

	/**
	 * 方法名： findBySingleTableByMulteityParam
	 * 功 能： 单表多条件分组查询
	 * 参 数： @param vo
	 * 参 数： @return
	 * 返 回： Map<String,Object>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public Map<String, Object> findBySingleTableByGroupsAndMulteityParam(SysDbmsTabsColsInfoVo vo) {
		Map<String, Object> map = new HashMap<>();
		StringBuffer sql = new StringBuffer();
		sql.append(" select * from " + vo.getTabsName() + " where 1=1 ");
		// 排序分组
		List<List<SysDbmsTabsColsInfo>> groupListList = sortByUserIndex(vo.getList());
		// 拼接查询条件与参数
		Map<String, String> params = new HashMap<>();
		searchSqlByParams(sql, groupListList, vo.getParamList(), params);
		// 求结果
		resultMap(sql.toString(), params, vo, map);
		System.err.println(sql.toString());
		return map;
	}

	/**
	 * 方法名： searchSqlByParams
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param sql
	 * 参 数： @param groupListList
	 * 参 数： @param paramList
	 * 参 数： @param params
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void searchSqlByParams(StringBuffer sql, List<List<SysDbmsTabsColsInfo>> groupListList, List<MulteityParam> paramList, Map<String, String> params) {
		if (groupListList == null) {
			return;
		}
		for (List<SysDbmsTabsColsInfo> groupList : groupListList) {
			StringBuffer sqltem = new StringBuffer();
			boolean exists = false;
			for (int i = 0; i < groupList.size(); i++) {
				SysDbmsTabsColsInfo sysZhcxCol = groupList.get(i);
				if (sysZhcxCol.getUserIndex() != null && !"".equals(sysZhcxCol.getUserIndex())) {
					for (MulteityParam multeityParam : paramList) {
						if (multeityParam.getUserIndex().equals(sysZhcxCol.getUserIndex())) {
							exists = true;
							if (i > 0) {
								sqltem.append(" or ");
							}
							String keysOperator = multeityParam.getOperator();
							String param = multeityParam.getValue().replace("*", "%").replace("?", "_");
							String op = "=";
							if ("eq".equals(keysOperator)) {
								if (param.indexOf("%") == -1 && param.indexOf("_") == -1) {
									op = " = ";
								} else {
									op = " like ";
								}
							} else if ("ge".equals(keysOperator)) {
								op = " >= ";
							} else if ("le".equals(keysOperator)) {
								op = " <= ";
							}
							String paramName = sysZhcxCol.getColsName() + i + keysOperator;
							sqltem.append(sysZhcxCol.getColsName() + op + " :" + paramName);
							params.put(paramName, param);
						}
					}
				}
			}
			if (exists) {
				sql.append(" and (  ").append(sqltem.toString()).append(" )");
			}

		}

	}

	/**
	 * @param paramList
	 * 方法名： sortByUserIndex
	 * 功 能： 根据userindex进行组
	 * 参 数： @param list
	 * 参 数： @return
	 * 返 回： List<List<SysZhcxCol>>
	 * 作 者 ： Administrator
	 * @throws
	 */
	private List<List<SysDbmsTabsColsInfo>> sortByUserIndex(List<SysDbmsTabsColsInfo> list) {
		if (list == null) {
			return null;
		}
		List<SysDbmsTabsColsInfo> tempList = new ArrayList<>();
		List<List<SysDbmsTabsColsInfo>> listlist = new ArrayList<>();
		List<SysDbmsTabsColsInfo> groupList = null;
		for (int i = 0; i < list.size(); i++) {
			SysDbmsTabsColsInfo sysZhcxCol = list.get(i);
			if (null != sysZhcxCol.getUserIndex() && !"".equals(sysZhcxCol.getUserIndex())) {
				tempList.add(sysZhcxCol);
			}
		}
		while (tempList.size() > 0) {
			groupList = new ArrayList<>();
			for (SysDbmsTabsColsInfo sysZhcxCol : tempList) {
				if (groupList.size() == 0) {
					groupList.add(sysZhcxCol);
				} else {
					if (groupList.get(0).getUserIndex().equals(sysZhcxCol.getUserIndex())) {
						groupList.add(sysZhcxCol);
					}
				}
			}
			tempList.removeAll(groupList);
			listlist.add(groupList);
		}
		return listlist;
	}

}
