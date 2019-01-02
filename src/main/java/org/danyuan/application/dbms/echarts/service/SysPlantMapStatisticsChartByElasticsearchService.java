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
 * 文件名 ： SysPlantMapStatisticsChartByElasticsearchService.java
 * 包 名 ： com.shumeng.application.result.plant.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年11月14日 下午1:53:06
 * 版 本 ： V1.0
 */
@Service
public class SysPlantMapStatisticsChartByElasticsearchService {
	
	@Autowired
	ElasticsearchTemplate	elasticsearchTemplate;
	
	@Value(value = "${elasticsearch.index.name}")
	public String			ELASTICSEARCH_INDEX_NAME;
	
	@Value(value = "${elasticsearch.index.type}")
	public String			ELASTICSEARCH_INDEX_TYPE;

	/**
	 * 方法名： buildMap
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param map
	 * 参 数： @param info
	 * 参 数： @param type1
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void buildMap(Map<String, Object> map, SysDbmsChartDimension info, QueryBuilder queryBuilder, String type1) {

		if (type1 == null) {
			buildMapNoType(map, info, queryBuilder);
		} else {
			buildMapType(map, info, queryBuilder, type1);
		}
		
	}

	/**
	 * 方法名： buildMapType
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param map
	 * 参 数： @param info
	 * 参 数： @param queryBuilder
	 * 参 数： @param type1
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildMapType(Map<String, Object> map, SysDbmsChartDimension info, QueryBuilder queryBuilder, String type1) {
		String type2 = "行政区域_省";
		Client client = elasticsearchTemplate.getClient();
		SearchRequestBuilder requestBuilder = client.prepareSearch(ELASTICSEARCH_INDEX_NAME).setTypes(ELASTICSEARCH_INDEX_TYPE);
		TermsAggregationBuilder aggregationBuilder1 = AggregationBuilders.terms(type1 + "_count").field(type1).size(0);
		TermsAggregationBuilder aggregationBuilder2 = AggregationBuilders.terms(type2 + "_count").field(type2).size(0);
		requestBuilder.setQuery(queryBuilder).addAggregation(aggregationBuilder1.subAggregation(aggregationBuilder2));
		SearchResponse response = requestBuilder.execute().actionGet();
		Terms terms1 = response.getAggregations().get(type1 + "_count");
		
		Terms terms2;
		
		List<Map<String, Object>> series_data = new ArrayList<>();
		List<String> legend_data = new ArrayList<>();
		for (Terms.Bucket bucket : terms1.getBuckets()) {
			if (bucket.getKey() == null || "".equals(bucket.getKey().toString())) {
				continue;
			}
			terms2 = bucket.getAggregations().get(type2 + "_count");
			legend_data.add(bucket.getKey().toString());

			Map<String, Object> mapt = new HashMap<>();
			mapt.put("name", bucket.getKey().toString());
			mapt.put("type", "map");
			mapt.put("mapType", "china");
			mapt.put("roam", false);
			
			Map<String, Boolean> emap = new HashMap<>();
			Map<String, Object> label = new HashMap<>();
			emap.put("show", true);
			label.put("emphasis", emap);
			Map<String, Boolean> normal = new HashMap<>();
			normal.put("show", false);
			label.put("normal", normal);
			mapt.put("label", label);

			List<Map<String, Object>> series_data_data = new ArrayList<>();
			for (Terms.Bucket bucket2 : terms2.getBuckets()) {
				if (bucket2.getKey() == null || "".equals(bucket2.getKey().toString())) {
					continue;
				}
				Map<String, Object> data = new HashMap<>();
				data.put("name", bucket2.getKey().toString());
				data.put("value", bucket2.getDocCount());
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
	 * 方法名： buildMapNoType
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param map
	 * 参 数： @param info
	 * 参 数： @param queryBuilder
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildMapNoType(Map<String, Object> map, SysDbmsChartDimension info, QueryBuilder queryBuilder) {
		String type2 = "行政区域_省";
		Client client = elasticsearchTemplate.getClient();
		SearchRequestBuilder requestBuilder = client.prepareSearch(ELASTICSEARCH_INDEX_NAME).setTypes(ELASTICSEARCH_INDEX_TYPE);
		
		TermsAggregationBuilder termsAggregationBuilder = AggregationBuilders.terms(type2 + "_count").field(type2).size(0);

		requestBuilder.setQuery(queryBuilder).addAggregation(termsAggregationBuilder);
		SearchResponse response = requestBuilder.execute().actionGet();
		Terms aggregation = response.getAggregations().get(type2 + "_count");

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
		Map<String, Boolean> normal = new HashMap<>();
		normal.put("show", false);
		label.put("normal", normal);
		mapt.put("label", label);

		List<Map<String, Object>> series_data_data = new ArrayList<>();
		for (Terms.Bucket bucket : aggregation.getBuckets()) {
			if (bucket.getKey() == null || "".equals(bucket.getKey().toString())) {
				continue;
			}
			Map<String, Object> data = new HashMap<>();
			data.put("name", bucket.getKey().toString());
			data.put("value", bucket.getDocCount());
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
