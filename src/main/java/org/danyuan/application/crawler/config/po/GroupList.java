package org.danyuan.application.crawler.config.po;

import java.util.ArrayList;
import java.util.List;

/**
 * @文件名 GroupList.java
 * @包名 org.danyuan.application.crawler.config.po
 * @描述 TODO(用一句话描述该文件做什么)
 * @时间 2019年7月19日 下午1:25:09
 * @author Administrator
 * @版本 V1.0
 */
public class GroupList {

	private List<RuleColumn>	columns	= new ArrayList<>();

	private String				nextPageRule;
	
	/**
	 * @方法名 getColumns
	 * @功能 返回变量 columns 的值
	 * @return List<RuleColumn>
	 */
	public List<RuleColumn> getColumns() {
		return columns;
	}
	
	/**
	 * @方法名 setColumns
	 * @功能 设置变量 columns 的值
	 */
	public void setColumns(List<RuleColumn> columns) {
		this.columns = columns;
	}
	
	/**
	 * @方法名 getNextPageRule
	 * @功能 返回变量 nextPageRule 的值
	 * @return String
	 */
	public String getNextPageRule() {
		return nextPageRule;
	}
	
	/**
	 * @方法名 setNextPageRule
	 * @功能 设置变量 nextPageRule 的值
	 */
	public void setNextPageRule(String nextPageRule) {
		this.nextPageRule = nextPageRule;
	}
	
}
