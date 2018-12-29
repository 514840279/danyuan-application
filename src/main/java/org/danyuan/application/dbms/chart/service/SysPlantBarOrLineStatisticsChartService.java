package org.danyuan.application.dbms.chart.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.danyuan.application.dbms.chart.po.SysDbmsChartDimension;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;

@Service
public class SysPlantBarOrLineStatisticsChartService {

	@Value(value = "${user.table.base}")
	public String	TABLE_BASE_NAME;
	
	@Autowired
	JdbcTemplate	jdbcTemplate;
	
	/**
	 * 方法名： buildBarOrLine
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param map 返回结果
	 * 参 数： @param info 图表属性
	 * 参 数： @param list 图表参数
	 * 参 数： @param confs 字段定义
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void buildBarOrLine(Map<String, Object> map, SysDbmsChartDimension info, StringBuilder sbWhere, String type1, String type2, String type3) {

		if (type3 != null) {
			buildBarOrLineType3(sbWhere, type1, type2, type3, info, map);
		} else if (type2 != null) {
			buildBarOrLineType2(sbWhere, type1, type2, info, map);
		} else {
			buildBarOrLineType1(sbWhere, type1, info, map);
		}
	}
	
	/**
	 * 方法名： buildBarOrLineType3
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param sbWhere
	 * 参 数： @param type1
	 * 参 数： @param type2
	 * 参 数： @param type3
	 * 参 数： @param info
	 * 参 数： @param map
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildBarOrLineType3(StringBuilder sbWhere, String type1, String type2, String type3, SysDbmsChartDimension info, Map<String, Object> map) {
		StringBuilder sql = new StringBuilder();
		Map<String, Object> param = new HashMap<>();
		List<Map<String, Object>> series_data = new ArrayList<>();
		sql.append("SELECT  " + type1 + " AS ask1," + type2 + " AS ask2," + type3 + " AS ask3,COUNT(1) AS num FROM " + TABLE_BASE_NAME + " t " + " WHERE " + type1 + " IS NOT NULL " + " AND " + type1 + "  <>'' " + " AND " + type2 + " IS NOT NULL " + " AND " + type2 + "  <>'' " + " AND " + type3 + " IS NOT NULL " + " AND " + type3 + "  <>'' " + sbWhere.toString() + " " + " GROUP BY " + type1 + ", " + type2 + ", " + type3 + " " + "ORDER BY " + type1 + " ," + type2 + ", " + type3 + " ");
		List<String> legend_data = new ArrayList<>();
		
		NamedParameterJdbcTemplate template2 = new NamedParameterJdbcTemplate(jdbcTemplate);
		List<Map<String, Object>> listMap2 = template2.queryForList(sql.toString(), param);
		List<String> xAxis_data = new ArrayList<>();
		// 分组
		List<List<Map<String, Object>>> gLists = new ArrayList<>();
		buildGroupList(gLists, listMap2, xAxis_data);
		
		for (List<Map<String, Object>> list : gLists) {
			List<List<Map<String, Object>>> gLists2 = new ArrayList<>();
			buildGroupList2(gLists2, list);
			for (List<Map<String, Object>> list2 : gLists2) {
				
				Map<String, Object> sdata = new HashMap<>();
				sdata.put("type", "tbar".equals(info.getChartType()) ? "bar" : info.getChartType());
				sdata.put("name", list2.get(0).get("ask2").toString() + "." + list2.get(0).get("ask3").toString());
				sdata.put("stack", list2.get(0).get("ask2").toString());
				if (!legend_data.contains(list2.get(0).get("ask2").toString() + "." + list2.get(0).get("ask3").toString())) {
					legend_data.add(list2.get(0).get("ask2").toString() + "." + list2.get(0).get("ask3").toString());
				}
				List<Integer> series_data_data = new ArrayList<>();
				for (String string : xAxis_data) {
					boolean check = true;
					for (Map<String, Object> map2 : list2) {
						if (map2.get("ask1").toString().equals(string)) {
							series_data_data.add(Integer.valueOf(map2.get("num").toString()));
							check = false;
							break;
						}
					}
					if (check) {
						series_data_data.add(Integer.valueOf(0));
					}
				}
				sdata.put("data", series_data_data);
				series_data.add(sdata);
			}
			
		}
		map.put("series_data", series_data);
		map.put("xAxis_data", xAxis_data);
		map.put("legend_data", legend_data);
		map.put("chartType", info.getChartType());

	}
	
	/**
	 * 方法名： buildGroupList2
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param gLists2
	 * 参 数： @param list
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildGroupList2(List<List<Map<String, Object>>> gLists, List<Map<String, Object>> listMap2) {
		for (Map<String, Object> map : listMap2) {
			if (gLists.size() == 0) {
				List<Map<String, Object>> list = new ArrayList<>();
				list.add(map);
				gLists.add(list);
				continue;
			}
			boolean check = true;
			for (int i = 0; i < gLists.size(); i++) {
				if (map.get("ask3").toString().equals(gLists.get(i).get(0).get("ask3").toString())) {
					gLists.get(i).add(map);
					check = false;
					break;
				}
			}
			if (check) {
				List<Map<String, Object>> list = new ArrayList<>();
				list.add(map);
				gLists.add(list);
			}
			
		}
		
	}

	/**
	 * 方法名： buildBarOrLineType2
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param sbWhere
	 * 参 数： @param type1
	 * 参 数： @param type2
	 * 参 数： @param info
	 * 参 数： @param map
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildBarOrLineType2(StringBuilder sbWhere, String type1, String type2, SysDbmsChartDimension info, Map<String, Object> map) {
		StringBuilder sql = new StringBuilder();
		Map<String, Object> param = new HashMap<>();
		List<Map<String, Object>> series_data = new ArrayList<>();
		sql.append("SELECT  " + type1 + " AS ask1," + type2 + " AS ask2,COUNT(1) AS num FROM " + TABLE_BASE_NAME + " t " + " WHERE " + type1 + " IS NOT NULL " + " AND " + type1 + "  <>'' " + " AND " + type2 + " IS NOT NULL " + " AND " + type2 + "  <>'' " + sbWhere.toString() + " " + " GROUP BY " + type1 + ", " + type2 + " " + "ORDER BY " + type1 + " ," + type2 + " ");
		List<String> legend_data = new ArrayList<>();
		
		NamedParameterJdbcTemplate template2 = new NamedParameterJdbcTemplate(jdbcTemplate);
		List<Map<String, Object>> listMap2 = template2.queryForList(sql.toString(), param);
		List<String> xAxis_data = new ArrayList<>();
		// 分组
		List<List<Map<String, Object>>> gLists = new ArrayList<>();
		buildGroupList(gLists, listMap2, xAxis_data);
		for (List<Map<String, Object>> list : gLists) {
			Map<String, Object> sdata = new HashMap<>();
			sdata.put("type", "tbar".equals(info.getChartType()) ? "bar" : info.getChartType());
			sdata.put("name", list.get(0).get("ask2").toString());
			if (!legend_data.contains(list.get(0).get("ask2").toString())) {
				legend_data.add(list.get(0).get("ask2").toString());
			}
			List<Integer> series_data_data = new ArrayList<>();
			for (String string : xAxis_data) {
				boolean check = true;
				for (Map<String, Object> map2 : list) {
					if (map2.get("ask1").toString().equals(string)) {
						series_data_data.add(Integer.valueOf(map2.get("num").toString()));
						check = false;
						break;
					}
				}
				if (check) {
					series_data_data.add(Integer.valueOf(0));
				}
			}
			sdata.put("data", series_data_data);
			series_data.add(sdata);
		}

		map.put("series_data", series_data);
		map.put("xAxis_data", xAxis_data);
		map.put("legend_data", legend_data);
		map.put("chartType", info.getChartType());

	}
	
	/**
	 * 方法名： buildGroupList
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param gLists
	 * 参 数： @param listMap2
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildGroupList(List<List<Map<String, Object>>> gLists, List<Map<String, Object>> listMap2, List<String> xAxis_data) {
		for (Map<String, Object> map : listMap2) {
			if (!xAxis_data.contains(map.get("ask1").toString())) {
				xAxis_data.add(map.get("ask1").toString());
			}
			if (gLists.size() == 0) {
				List<Map<String, Object>> list = new ArrayList<>();
				list.add(map);
				gLists.add(list);
				continue;
			}
			boolean check = true;
			for (int i = 0; i < gLists.size(); i++) {
				if (map.get("ask2").toString().equals(gLists.get(i).get(0).get("ask2").toString())) {
					gLists.get(i).add(map);
					check = false;
					break;
				}
			}
			if (check) {
				List<Map<String, Object>> list = new ArrayList<>();
				list.add(map);
				gLists.add(list);
			}
			
		}
	}
	
	/**
	 * 方法名： buildBarOrLineType1
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param sbWhere
	 * 参 数： @param type1
	 * 参 数： @param info
	 * 参 数： @param map
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildBarOrLineType1(StringBuilder sbWhere, String type1, SysDbmsChartDimension info, Map<String, Object> map) {
		StringBuilder sql = new StringBuilder();
		Map<String, Object> param = new HashMap<>();
		sql.append("SELECT  " + type1 + " AS ask,COUNT(1) AS num FROM " + TABLE_BASE_NAME + " t " + " WHERE " + type1 + " IS NOT NULL " + " AND " + type1 + "  <>'' " + sbWhere.toString() + " " + " GROUP BY " + type1 + " " + "ORDER BY " + type1 + " ");
		NamedParameterJdbcTemplate template2 = new NamedParameterJdbcTemplate(jdbcTemplate);
		List<Map<String, Object>> listMap2 = template2.queryForList(sql.toString(), param);

		List<Map<String, Object>> series_data = new ArrayList<>();
		List<String> legend_data = new ArrayList<>();
		legend_data.add("数量");
		Map<String, Object> sdata = new HashMap<>();
		sdata.put("type", "tbar".equals(info.getChartType()) ? "bar" : info.getChartType());
		sdata.put("name", "数量");
		List<Integer> series_data_data = new ArrayList<>();
		List<String> xAxis_data = new ArrayList<>();
		for (Map<String, Object> map2 : listMap2) {
			series_data_data.add(Integer.valueOf(map2.get("num").toString()));
			xAxis_data.add(map2.get("ask").toString());
		}
		sdata.put("data", series_data_data);
		series_data.add(sdata);
		map.put("series_data", series_data);
		map.put("xAxis_data", xAxis_data);
		map.put("legend_data", legend_data);
		map.put("chartType", info.getChartType());
	}
	
}
