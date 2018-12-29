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
 * 文件名 ： SysPlantPieStatisticsChartService.java
 * 包 名 ： com.shumeng.application.result.plant.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年11月7日 下午3:28:41
 * 版 本 ： V1.0
 */
@Service
public class SysPlantPieStatisticsChartService {

	@Autowired
	JdbcTemplate	jdbcTemplate;

	@Value(value = "${user.table.base}")
	public String	TABLE_BASE_NAME;
	
	/**
	 * 方法名： buildPie
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param map
	 * 参 数： @param info
	 * 参 数： @param list
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void buildPie(Map<String, Object> map, SysDbmsChartDimension info, StringBuilder sbWhere, String type1) {
		
		List<String> legend_data = new ArrayList<>();
		List<Map<String, Object>> series_data = new ArrayList<>();
		StringBuilder sql = new StringBuilder();
		Map<String, Object> param = new HashMap<>();
		// 默认表结构
		sql.append(" select  " + type1 + " as aks,count(1) as num");
		sql.append(" from " + TABLE_BASE_NAME + "  ");
		sql.append(" where 1=1 ");
		sql.append(" and  " + type1 + " is not null ");
		sql.append(" and  " + type1 + " <> '' ");
		sql.append(sbWhere.toString());
		sql.append(" group by  " + type1);

		NamedParameterJdbcTemplate template = new NamedParameterJdbcTemplate(jdbcTemplate);
		List<Map<String, Object>> listMap = template.queryForList(sql.toString(), param);
		// System.err.println(sql.toString());
		for (Map<String, Object> map2 : listMap) {
			legend_data.add(map2.get("aks").toString());
			// {value:92503371, name:'男'}
			Map<String, Object> data = new HashMap<>();
			data.put("value", Integer.valueOf(map2.get("num").toString()));
			data.put("name", map2.get("aks").toString());
			series_data.add(data);
		}
		map.put("legend_data", legend_data);
		map.put("series_data", series_data);
		map.put("chartType", info.getChartType());
	}

}
