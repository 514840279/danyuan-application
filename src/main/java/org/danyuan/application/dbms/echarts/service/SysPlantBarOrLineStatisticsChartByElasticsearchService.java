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
import org.elasticsearch.search.aggregations.metrics.sum.Sum;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.elasticsearch.core.ElasticsearchTemplate;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysPlantBarOrLineStatisticsChartByElasticsearchService.java
 * 包 名 ： com.shumeng.application.result.plant.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年11月14日 下午1:48:13
 * 版 本 ： V1.0
 */
@Service
public class SysPlantBarOrLineStatisticsChartByElasticsearchService {

	@Autowired
	ElasticsearchTemplate	elasticsearchTemplate;

	@Value(value = "${elasticsearch.index.name}")
	public String			ELASTICSEARCH_INDEX_NAME;

	@Value(value = "${elasticsearch.index.type}")
	public String			ELASTICSEARCH_INDEX_TYPE;
	@Value(value = "${elasticsearch.index.amount}")
	public String			ELASTICSEARCH_INDEX_AMOUNT;
	
	/**
	 * 方法名： buildBarOrLine
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param map
	 * 参 数： @param info
	 * 参 数： @param type1
	 * 参 数： @param type2
	 * 参 数： @param type3
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void buildBarOrLine(Map<String, Object> map, SysDbmsChartDimension info, QueryBuilder queryBuilder, String type1, String type2, String type3) {
		if (type3 != null) {
			buildBarOrLineType3(queryBuilder, type1, type2, type3, info, map);
		} else if (type2 != null) {
			buildBarOrLineType2(queryBuilder, type1, type2, info, map);
		} else {
			buildBarOrLineType1(queryBuilder, type1, info, map);
		}

	}

	/**
	 * 方法名： buildBarOrLineType1
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param queryBuilder
	 * 参 数： @param type1
	 * 参 数： @param info
	 * 参 数： @param map
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildBarOrLineType1(QueryBuilder queryBuilder, String type1, SysDbmsChartDimension info, Map<String, Object> map) {
		Client client = elasticsearchTemplate.getClient();
		SearchRequestBuilder requestBuilder = client.prepareSearch(ELASTICSEARCH_INDEX_NAME).setTypes(ELASTICSEARCH_INDEX_TYPE);

		TermsAggregationBuilder termsAggregationBuilder = AggregationBuilders.terms(type1 + "_count").field(type1).size(0);

		requestBuilder.setQuery(queryBuilder).addAggregation(termsAggregationBuilder);
		SearchResponse response = requestBuilder.execute().actionGet();

		Terms aggregation = response.getAggregations().get(type1 + "_count");
		// System.err.println(response.toString());
		List<Map<String, Object>> series_data = new ArrayList<>();
		List<String> legend_data = new ArrayList<>();
		legend_data.add("数量");
		Map<String, Object> sdata = new HashMap<>();
		sdata.put("type", "tbar".equals(info.getChartType()) ? "bar" : info.getChartType());
		sdata.put("name", "数量");
		List<Long> series_data_data = new ArrayList<>();
		List<String> xAxis_data = new ArrayList<>();
		for (Terms.Bucket bucket : aggregation.getBuckets()) {
			if (bucket.getKey() == null || "".equals(bucket.getKey().toString())) {
				continue;
			}
			legend_data.add(bucket.getKey().toString());
			series_data_data.add(bucket.getDocCount());
			xAxis_data.add(bucket.getKey().toString());

		}

		sdata.put("data", series_data_data);
		series_data.add(sdata);
		map.put("series_data", series_data);
		map.put("xAxis_data", xAxis_data);
		map.put("legend_data", legend_data);
		map.put("chartType", info.getChartType());

	}

	/**
	 * 方法名： buildBarOrLineType2
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param queryBuilder
	 * 参 数： @param type1
	 * 参 数： @param type2
	 * 参 数： @param info
	 * 参 数： @param map
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildBarOrLineType2(QueryBuilder queryBuilder, String type1, String type2, SysDbmsChartDimension info, Map<String, Object> map) {
		Client client = elasticsearchTemplate.getClient();
		SearchRequestBuilder requestBuilder = client.prepareSearch(ELASTICSEARCH_INDEX_NAME).setTypes(ELASTICSEARCH_INDEX_TYPE);
		TermsAggregationBuilder aggregationBuilder1 = AggregationBuilders.terms(type2 + "_count").field(type2).size(0);
		TermsAggregationBuilder aggregationBuilder2 = AggregationBuilders.terms(type1 + "_count").field(type1).size(0);
		requestBuilder.setQuery(queryBuilder).addAggregation(aggregationBuilder1.subAggregation(aggregationBuilder2));
		SearchResponse response = requestBuilder.execute().actionGet();
		Terms terms1 = response.getAggregations().get(type2 + "_count");

		Terms terms2;
		List<Map<String, Object>> series_data = new ArrayList<>();
		List<String> legend_data = new ArrayList<>();
		List<String> xAxis_data = new ArrayList<>();
		// 预处理 一次 获取完整xAxis_data
		buildGroup(xAxis_data, legend_data, terms1, type1);

		for (Terms.Bucket bucket : terms1.getBuckets()) {
			if (bucket.getKey() == null || "".equals(bucket.getKeyAsString())) {
				continue;
			}

			Map<String, Object> sdata = new HashMap<>();
			sdata.put("type", "tbar".equals(info.getChartType()) ? "bar" : info.getChartType());
			sdata.put("name", bucket.getKey().toString());

			terms2 = bucket.getAggregations().get(type1 + "_count");
			List<Long> series_data_data = new ArrayList<>();
			for (String string : xAxis_data) {
				boolean check = true;
				for (Terms.Bucket bucket2 : terms2.getBuckets()) {
					if (bucket2.getKey() == null || "".equals(bucket2.getKeyAsString())) {
						continue;
					}

					if (bucket2.getKeyAsString().equals(string)) {
						series_data_data.add(bucket2.getDocCount());
						check = false;
						break;
					}
				}
				if (check) {
					series_data_data.add(0L);
				}
			}
			sdata.put("data", series_data_data);
			series_data.add(sdata);
		}

		map.put("series_data", series_data);
		map.put("legend_data", legend_data);
		map.put("xAxis_data", xAxis_data);
		map.put("chartType", info.getChartType());

	}

	/**
	 * @param legend_data2
	 * @param type2
	 * 方法名： buildGroup
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param xAxis_data
	 * 参 数： @param terms1
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildGroup(List<String> xAxis_data, List<String> legend_data, Terms terms1, String type1) {
		if (terms1 == null) {
			return;
		}
		for (Terms.Bucket bucket : terms1.getBuckets()) {
			if (bucket.getKey() == null || "".equals(bucket.getKeyAsString())) {
				continue;
			}
			if (!legend_data.contains(bucket.getKeyAsString())) {
				legend_data.add(bucket.getKeyAsString());
			}
			Terms terms2 = bucket.getAggregations().get(type1 + "_count");
			for (Terms.Bucket bucket2 : terms2.getBuckets()) {
				if (bucket2.getKey() == null || "".equals(bucket2.getKeyAsString())) {
					continue;
				}
				if (!xAxis_data.contains(bucket2.getKeyAsString())) {
					xAxis_data.add(bucket2.getKeyAsString());
				}
			}
		}

	}

	/**
	 * 方法名： buildBarOrLineType3
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param queryBuilder
	 * 参 数： @param type1
	 * 参 数： @param type2
	 * 参 数： @param type3
	 * 参 数： @param info
	 * 参 数： @param map
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildBarOrLineType3(QueryBuilder queryBuilder, String type1, String type2, String type3, SysDbmsChartDimension info, Map<String, Object> map) {
		Client client = elasticsearchTemplate.getClient();
		SearchRequestBuilder requestBuilder = client.prepareSearch(ELASTICSEARCH_INDEX_NAME).setTypes(ELASTICSEARCH_INDEX_TYPE);
		TermsAggregationBuilder aggregationBuilder1 = AggregationBuilders.terms(type1 + "_count").field(type1).size(0);
		TermsAggregationBuilder aggregationBuilder2 = AggregationBuilders.terms(type2 + "_count").field(type2).size(0);
		TermsAggregationBuilder aggregationBuilder3 = AggregationBuilders.terms(type3 + "_count").field(type3).size(0);
		requestBuilder.setQuery(queryBuilder).addAggregation(aggregationBuilder3.subAggregation(aggregationBuilder2.subAggregation(aggregationBuilder1)));
		SearchResponse response = requestBuilder.execute().actionGet();
		Terms terms1 = response.getAggregations().get(type3 + "_count");

		Terms terms2;
		Terms terms3;
		List<Map<String, Object>> series_data = new ArrayList<>();
		List<String> legend_data = new ArrayList<>();
		List<String> xAxis_data = new ArrayList<>();
		// 预处理 一次 获取完整xAxis_data
		buildGroup(xAxis_data, legend_data, terms1, type1, type2);

		for (Terms.Bucket bucket : terms1.getBuckets()) {
			if (bucket.getKey() == null || "".equals(bucket.getKeyAsString())) {
				continue;
			}
			terms2 = bucket.getAggregations().get(type2 + "_count");
			for (Terms.Bucket bucket2 : terms2.getBuckets()) {
				Map<String, Object> sdata = new HashMap<>();
				sdata.put("type", "tbar".equals(info.getChartType()) ? "bar" : info.getChartType());
				sdata.put("name", bucket2.getKeyAsString() + "." + bucket.getKeyAsString());
				sdata.put("stack", bucket2.getKeyAsString());

				List<Long> series_data_data = new ArrayList<>();
				for (String string : xAxis_data) {
					boolean check = true;
					terms3 = bucket2.getAggregations().get(type1 + "_count");
					for (Terms.Bucket bucket3 : terms3.getBuckets()) {
						if (bucket3.getKeyAsString().equals(string)) {
							series_data_data.add(bucket3.getDocCount());
							check = false;
							break;
						}
					}
					if (check) {
						series_data_data.add(0L);
					}
				}
				sdata.put("data", series_data_data);
				series_data.add(sdata);
			}

		}

		map.put("series_data", series_data);
		map.put("legend_data", legend_data);
		map.put("xAxis_data", xAxis_data);
		map.put("chartType", info.getChartType());

	}

	/**
	 * 方法名： buildGroup
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param xAxis_data
	 * 参 数： @param legend_data
	 * 参 数： @param terms1
	 * 参 数： @param type1
	 * 参 数： @param type2
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	private void buildGroup(List<String> xAxis_data, List<String> legend_data, Terms terms1, String type1, String type2) {
		Terms terms2;
		Terms terms3;
		for (Terms.Bucket bucket : terms1.getBuckets()) {
			if (bucket.getKey() == null || "".equals(bucket.getKeyAsString())) {
				continue;
			}
			terms2 = bucket.getAggregations().get(type2 + "_count");
			for (Terms.Bucket bucket2 : terms2.getBuckets()) {
				if (bucket2.getKey() == null || "".equals(bucket2.getKeyAsString())) {
					continue;
				}
				if (!legend_data.contains(bucket.getKeyAsString() + "." + bucket2.getKeyAsString())) {
					legend_data.add(bucket2.getKeyAsString() + "." + bucket.getKeyAsString());
				}
				terms3 = bucket2.getAggregations().get(type1 + "_count");
				for (Terms.Bucket bucket3 : terms3.getBuckets()) {
					if (bucket3.getKey() == null || "".equals(bucket3.getKeyAsString())) {
						continue;
					}
					if (!xAxis_data.contains(bucket3.getKeyAsString())) {
						xAxis_data.add(bucket3.getKeyAsString());
					}
				}
			}

		}

	}

	/**
	 * @方法名 buildBarOrLineSum
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param map
	 * @参数 @param info
	 * @参数 @param queryBuilder
	 * @参数 @param type1
	 * @参数 @param type2
	 * @参数 @param type3
	 * @返回 void
	 * @author Administrator
	 * @throws
	 */
	public void buildBarOrLineSum(Map<String, Object> map, SysDbmsChartDimension info, QueryBuilder queryBuilder, String type1, String type2, String type3) {
		if (type3 != null) {
			buildBarOrLineType3Sum(queryBuilder, type1, type2, type3, info, map);
		} else if (type2 != null) {
			buildBarOrLineType2Sum(queryBuilder, type1, type2, info, map);
		} else {
			buildBarOrLineType1Sum(queryBuilder, type1, info, map);
		}
		
	}

	/**
	 * @方法名 buildBarOrLineType3Sum
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param queryBuilder
	 * @参数 @param type1
	 * @参数 @param type2
	 * @参数 @param type3
	 * @参数 @param info
	 * @参数 @param map
	 * @返回 void
	 * @author Administrator
	 * @throws
	 */
	private void buildBarOrLineType3Sum(QueryBuilder queryBuilder, String type1, String type2, String type3, SysDbmsChartDimension info, Map<String, Object> map) {
		Client client = elasticsearchTemplate.getClient();
		SearchRequestBuilder requestBuilder = client.prepareSearch(ELASTICSEARCH_INDEX_NAME).setTypes(ELASTICSEARCH_INDEX_TYPE);
		TermsAggregationBuilder aggregationBuilder1 = AggregationBuilders.terms(type1 + "_count").field(type1).size(0);
		TermsAggregationBuilder aggregationBuilder2 = AggregationBuilders.terms(type2 + "_count").field(type2).size(0);
		TermsAggregationBuilder aggregationBuilder3 = AggregationBuilders.terms(type3 + "_count").field(type3).size(0);
		requestBuilder.setQuery(queryBuilder).addAggregation(aggregationBuilder3.subAggregation(aggregationBuilder2.subAggregation(aggregationBuilder1.subAggregation(AggregationBuilders.sum(ELASTICSEARCH_INDEX_AMOUNT + "_SUM").field(ELASTICSEARCH_INDEX_AMOUNT)))));
		SearchResponse response = requestBuilder.get();
		Terms terms1 = response.getAggregations().get(type3 + "_count");
		
		Terms terms2;
		Terms terms3;
		List<Map<String, Object>> series_data = new ArrayList<>();
		List<String> legend_data = new ArrayList<>();
		List<String> xAxis_data = new ArrayList<>();
		// 预处理 一次 获取完整xAxis_data
		buildGroup(xAxis_data, legend_data, terms1, type1, type2);

		for (Terms.Bucket bucket : terms1.getBuckets()) {
			if (bucket.getKey() == null || "".equals(bucket.getKeyAsString())) {
				continue;
			}
			terms2 = bucket.getAggregations().get(type2 + "_count");
			for (Terms.Bucket bucket2 : terms2.getBuckets()) {
				Map<String, Object> sdata = new HashMap<>();
				sdata.put("type", "tbar".equals(info.getChartType()) ? "bar" : info.getChartType());
				sdata.put("name", bucket2.getKeyAsString() + "." + bucket.getKeyAsString());
				sdata.put("stack", bucket2.getKeyAsString());
				
				List<Long> series_data_data = new ArrayList<>();
				for (String string : xAxis_data) {
					boolean check = true;
					terms3 = bucket2.getAggregations().get(type1 + "_count");
					for (Terms.Bucket bucket3 : terms3.getBuckets()) {
						if (bucket3.getKeyAsString().equals(string)) {
							Sum sum = bucket3.getAggregations().get(ELASTICSEARCH_INDEX_AMOUNT + "_SUM");
							series_data_data.add(Double.valueOf(sum.getValue()).longValue());
							check = false;
							break;
						}
					}
					if (check) {
						series_data_data.add(0L);
					}
				}
				sdata.put("data", series_data_data);
				series_data.add(sdata);
			}

		}
		
		map.put("series_data", series_data);
		map.put("legend_data", legend_data);
		map.put("xAxis_data", xAxis_data);
		map.put("chartType", info.getChartType());
		
	}

	/**
	 * @方法名 buildBarOrLineType2Sum
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param queryBuilder
	 * @参数 @param type1
	 * @参数 @param type2
	 * @参数 @param info
	 * @参数 @param map
	 * @返回 void
	 * @author Administrator
	 * @throws
	 */
	private void buildBarOrLineType2Sum(QueryBuilder queryBuilder, String type1, String type2, SysDbmsChartDimension info, Map<String, Object> map) {
		Client client = elasticsearchTemplate.getClient();
		SearchRequestBuilder requestBuilder = client.prepareSearch(ELASTICSEARCH_INDEX_NAME).setTypes(ELASTICSEARCH_INDEX_TYPE);
		TermsAggregationBuilder aggregationBuilder1 = AggregationBuilders.terms(type2 + "_count").field(type2).size(0);
		TermsAggregationBuilder aggregationBuilder2 = AggregationBuilders.terms(type1 + "_count").field(type1).size(0);
		requestBuilder.setQuery(queryBuilder).addAggregation(aggregationBuilder1.subAggregation(aggregationBuilder2.subAggregation(AggregationBuilders.sum(ELASTICSEARCH_INDEX_AMOUNT + "_SUM").field(ELASTICSEARCH_INDEX_AMOUNT))));
		SearchResponse response = requestBuilder.get();
		Terms terms1 = response.getAggregations().get(type2 + "_count");
		
		Terms terms2;
		List<Map<String, Object>> series_data = new ArrayList<>();
		List<String> legend_data = new ArrayList<>();
		List<String> xAxis_data = new ArrayList<>();
		// 预处理 一次 获取完整xAxis_data
		buildGroup(xAxis_data, legend_data, terms1, type1);

		for (Terms.Bucket bucket : terms1.getBuckets()) {
			if (bucket.getKey() == null || "".equals(bucket.getKeyAsString())) {
				continue;
			}
			
			Map<String, Object> sdata = new HashMap<>();
			sdata.put("type", "tbar".equals(info.getChartType()) ? "bar" : info.getChartType());
			sdata.put("name", bucket.getKey().toString());

			terms2 = bucket.getAggregations().get(type1 + "_count");
			List<Long> series_data_data = new ArrayList<>();
			for (String string : xAxis_data) {
				boolean check = true;
				for (Terms.Bucket bucket2 : terms2.getBuckets()) {
					if (bucket2.getKey() == null || "".equals(bucket2.getKeyAsString())) {
						continue;
					}

					if (bucket2.getKeyAsString().equals(string)) {
						Sum sum = bucket2.getAggregations().get(ELASTICSEARCH_INDEX_AMOUNT + "_SUM");
						series_data_data.add(Double.valueOf(sum.getValue()).longValue());
						check = false;
						break;
					}
				}
				if (check) {
					series_data_data.add(0L);
				}
			}
			sdata.put("data", series_data_data);
			series_data.add(sdata);
		}
		
		map.put("series_data", series_data);
		map.put("legend_data", legend_data);
		map.put("xAxis_data", xAxis_data);
		map.put("chartType", info.getChartType());
		
	}

	/**
	 * @方法名 buildBarOrLineType1Sum
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param queryBuilder
	 * @参数 @param type1
	 * @参数 @param info
	 * @参数 @param map
	 * @返回 void
	 * @author Administrator
	 * @throws
	 */
	private void buildBarOrLineType1Sum(QueryBuilder queryBuilder, String type1, SysDbmsChartDimension info, Map<String, Object> map) {
		Client client = elasticsearchTemplate.getClient();
		SearchRequestBuilder requestBuilder = client.prepareSearch(ELASTICSEARCH_INDEX_NAME).setTypes(ELASTICSEARCH_INDEX_TYPE);
		
		TermsAggregationBuilder termsAggregationBuilder = AggregationBuilders.terms(type1 + "_count").field(type1).size(0).subAggregation(AggregationBuilders.sum(ELASTICSEARCH_INDEX_AMOUNT + "_SUM").field(ELASTICSEARCH_INDEX_AMOUNT));
		
		requestBuilder.setQuery(queryBuilder).addAggregation(termsAggregationBuilder);
		SearchResponse response = requestBuilder.get();
		
		Terms aggregation = response.getAggregations().get(type1 + "_count");
		// System.err.println(response.toString());
		List<Map<String, Object>> series_data = new ArrayList<>();
		List<String> legend_data = new ArrayList<>();
		legend_data.add("金额");
		Map<String, Object> sdata = new HashMap<>();
		sdata.put("type", "tbar".equals(info.getChartType()) ? "bar" : info.getChartType());
		sdata.put("name", "金额");
		List<Long> series_data_data = new ArrayList<>();
		List<String> xAxis_data = new ArrayList<>();
		for (Terms.Bucket bucket : aggregation.getBuckets()) {
			if (bucket.getKey() == null || "".equals(bucket.getKey().toString())) {
				continue;
			}
			Sum sum = bucket.getAggregations().get(ELASTICSEARCH_INDEX_AMOUNT + "_SUM");
			series_data_data.add(Double.valueOf(sum.getValue()).longValue());
			xAxis_data.add(bucket.getKey().toString());
			
		}
		
		sdata.put("data", series_data_data);
		series_data.add(sdata);
		map.put("series_data", series_data);
		map.put("xAxis_data", xAxis_data);
		map.put("legend_data", legend_data);
		map.put("chartType", info.getChartType());
		
	}
	
}
