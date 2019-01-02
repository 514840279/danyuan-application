package org.danyuan.application.dbms.echarts.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.danyuan.application.dbms.echarts.po.SysDbmsChartDimension;
import org.elasticsearch.action.search.SearchRequestBuilder;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.Client;
import org.elasticsearch.index.query.QueryBuilder;
import org.elasticsearch.search.aggregations.AggregationBuilders;
import org.elasticsearch.search.aggregations.bucket.terms.Terms;
import org.elasticsearch.search.aggregations.bucket.terms.TermsAggregationBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.elasticsearch.core.ElasticsearchTemplate;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysPlantPieStatisticsChartByElasticsearchService.java
 * 包 名 ： com.shumeng.application.result.plant.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年11月14日 下午1:51:34
 * 版 本 ： V1.0
 */
@Service
public class SysPlantPieStatisticsChartByElasticsearchService {

	@Autowired
	ElasticsearchTemplate	elasticsearchTemplate;
	
	@Value(value = "${elasticsearch.index.name}")
	public String			ELASTICSEARCH_INDEX_NAME;
	
	@Value(value = "${elasticsearch.index.type}")
	public String			ELASTICSEARCH_INDEX_TYPE;

	/**
	 * 方法名： buildPie
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param map
	 * 参 数： @param info
	 * 参 数： @param sbWhere
	 * 参 数： @param type1
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void buildPie(Map<String, Object> map, SysDbmsChartDimension info, QueryBuilder queryBuilder, String type1) {
		Client client = elasticsearchTemplate.getClient();
		SearchRequestBuilder requestBuilder = client.prepareSearch(ELASTICSEARCH_INDEX_NAME).setTypes(ELASTICSEARCH_INDEX_TYPE);
		
		TermsAggregationBuilder termsAggregationBuilder = AggregationBuilders.terms(type1 + "_count").field(type1).size(0);

		requestBuilder.setQuery(queryBuilder).addAggregation(termsAggregationBuilder);
		SearchResponse response = requestBuilder.execute().actionGet();
		
		Terms aggregation = response.getAggregations().get(type1 + "_count");
		// System.err.println(response.toString());
		List<String> legend_data = new ArrayList<>();
		List<Map<String, Object>> series_data = new ArrayList<>();
		for (Terms.Bucket bucket : aggregation.getBuckets()) {
			if (bucket.getKey() == null || "".equals(bucket.getKey().toString())) {
				continue;
			}
			legend_data.add(bucket.getKey().toString());
			// {value:92503371, name:'男'}
			Map<String, Object> data = new HashMap<>();
			data.put("value", bucket.getDocCount());
			data.put("name", bucket.getKey().toString());
			series_data.add(data);
			
		}
		map.put("legend_data", legend_data);
		map.put("series_data", series_data);
		map.put("chartType", info.getChartType());
		
	}

}
