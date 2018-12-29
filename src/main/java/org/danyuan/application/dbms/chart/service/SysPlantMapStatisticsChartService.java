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

/**
 * 文件名 ： SysPlantMapStatisticsChartService.java
 * 包 名 ： com.shumeng.application.result.plant.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年11月7日 下午3:38:13
 * 版 本 ： V1.0
 */
@Service
public class SysPlantMapStatisticsChartService {

	@Autowired
	JdbcTemplate	jdbcTemplate;

	@Value(value = "${user.table.base}")
	public String	TABLE_BASE_NAME;

	/**
	 * 方法名： buildMap
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param map
	 * 参 数： @param info
	 * 参 数： @param list
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void buildMap(Map<String, Object> map, SysDbmsChartDimension info, StringBuilder sbWhere, String type1) {

		if (type1 == null) {
			buildMapNoType(map, info, sbWhere);
		} else {
			buildMapType(map, info, sbWhere, type1);
		}
	}
	
	/**
	 * 方法名： buildMapNoType
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param map
	 * 参 数： @param info
	 * 参 数： @param sbWhere
	 * 参 数： @param type1
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildMapType(Map<String, Object> map, SysDbmsChartDimension info, StringBuilder sbWhere, String type1) {
		StringBuilder sql = new StringBuilder();
		Map<String, Object> param = new HashMap<>();
		
		sql.append(" select  行政区域_省 as province ," + type1 + " as ask1 ,count(1) as num");
		sql.append(" from " + TABLE_BASE_NAME + " t ");
		sql.append(" where 1=1 ");
		sql.append(" and  行政区域_省  is not null ");
		sql.append(" and  行政区域_省 <> ''  ");
		sql.append(" and  " + type1 + "  is not null ");
		sql.append(" and  " + type1 + " <> ''  ");
		sql.append(sbWhere.toString());
		sql.append(" group by  行政区域_省 ," + type1);
		
		NamedParameterJdbcTemplate template = new NamedParameterJdbcTemplate(jdbcTemplate);
		List<Map<String, Object>> listMap = template.queryForList(sql.toString(), param);
		// series_data=[{name:'安徽',value:5483043}, ];
		// 按type1 分组
		List<List<Map<String, Object>>> listGroupMap = new ArrayList<>();
		buildGroupByType1(listMap, listGroupMap);
		List<Map<String, Object>> series_data = new ArrayList<>();
		List<String> legend_data = new ArrayList<>();
		for (List<Map<String, Object>> map2 : listGroupMap) {
			legend_data.add(map2.get(0).get("ask1").toString());

			Map<String, Object> mapt = new HashMap<>();
			mapt.put("name", map2.get(0).get("ask1").toString());
			mapt.put("type", "map");
			mapt.put("mapType", "china");
			mapt.put("roam", false);
			
			Map<String, Boolean> emap = new HashMap<>();
			Map<String, Object> label = new HashMap<>();
			emap.put("show", true);
			label.put("emphasis", emap);
			label.put("normal", emap);
			mapt.put("label", label);

			List<Map<String, Object>> series_data_data = new ArrayList<>();
			for (Map<String, Object> map3 : map2) {
				Map<String, Object> data = new HashMap<>();
				data.put("name", map3.get("province").toString());
				data.put("value", Integer.valueOf(map3.get("num").toString()));
				series_data_data.add(data);
			}
			mapt.put("data", series_data_data);
			series_data.add(mapt);
		}
		map.put("series_data", series_data);
		map.put("legend_data", legend_data);
		map.put("chartType", info.getChartType());

	}
	
	/**
	 * 方法名： buildGroupByType1
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param listMap
	 * 参 数： @param listGroupMap
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildGroupByType1(List<Map<String, Object>> listMap, List<List<Map<String, Object>>> listGroupMap) {
		if (listMap == null || listMap.size() == 0) {
			return;
		}
		for (Map<String, Object> map : listMap) {
			if (listGroupMap.size() == 0) {
				List<Map<String, Object>> listMaptemp = new ArrayList<>();
				listMaptemp.add(map);
				listGroupMap.add(listMaptemp);
			}
			boolean check = true;
			for (int i = 0; i < listGroupMap.size(); i++) {
				if (listGroupMap.get(i).get(0).get("ask1").equals(map.get("ask1"))) {
					listGroupMap.get(i).add(map);
					check = false;
					break;
				}

			}
			if (check) {
				List<Map<String, Object>> listMaptemp = new ArrayList<>();
				listMaptemp.add(map);
				listGroupMap.add(listMaptemp);
			}
		}

	}
	
	/**
	 * 方法名： buildMapNoType
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param map
	 * 参 数： @param info
	 * 参 数： @param sbWhere
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildMapNoType(Map<String, Object> map, SysDbmsChartDimension info, StringBuilder sbWhere) {
		StringBuilder sql = new StringBuilder();
		Map<String, Object> param = new HashMap<>();
		
		sql.append(" select  行政区域_省 as province ,count(1) as num");
		sql.append(" from " + TABLE_BASE_NAME + " t ");
		sql.append(" where 1=1 ");
		sql.append(" and  行政区域_省  is not null ");
		sql.append(" and  行政区域_省 <> ''  ");
		sql.append(sbWhere.toString());
		sql.append(" group by  行政区域_省 ");
		
		NamedParameterJdbcTemplate template = new NamedParameterJdbcTemplate(jdbcTemplate);
		List<Map<String, Object>> listMap = template.queryForList(sql.toString(), param);
		// series_data=[{name:'安徽',value:5483043}, ];
		List<Map<String, Object>> series_data = new ArrayList<>();
		Map<String, Object> mapt = new HashMap<>();
		mapt.put("name", "数量");
		mapt.put("type", "map");
		mapt.put("mapType", "china");
		mapt.put("roam", false);
		
		Map<String, Boolean> emap = new HashMap<>();
		Map<String, Object> label = new HashMap<>();
		emap.put("show", true);
		label.put("emphasis", emap);
		label.put("normal", emap);
		mapt.put("label", label);

		List<Map<String, Object>> series_data_data = new ArrayList<>();
		for (Map<String, Object> map2 : listMap) {
			Map<String, Object> data = new HashMap<>();
			data.put("name", map2.get("province").toString());
			data.put("value", Integer.valueOf(map2.get("num").toString()));
			series_data_data.add(data);
		}
		mapt.put("data", series_data_data);
		series_data.add(mapt);
		
		map.put("series_data", series_data);
		String[] legend_data = { "数量" };
		map.put("legend_data", legend_data);
		map.put("chartType", info.getChartType());
	}
}
