package org.danyuan.application.crawler.config.po;

/**
 * @文件名 RuleColumn.java
 * @包名 org.danyuan.application.crawler.config.po
 * @描述 TODO(用一句话描述该文件做什么)
 * @时间 2019年7月19日 下午1:30:14
 * @author Administrator
 * @版本 V1.0
 */
public class RuleColumn {
	
	private String	name;
	private String	rule;
	private String	type;

	/**
	 * @方法名 getName
	 * @功能 返回变量 name 的值
	 * @return String
	 */
	public String getName() {
		return name;
	}

	/**
	 * @方法名 setName
	 * @功能 设置变量 name 的值
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @方法名 getRule
	 * @功能 返回变量 rule 的值
	 * @return String
	 */
	public String getRule() {
		return rule;
	}

	/**
	 * @方法名 setRule
	 * @功能 设置变量 rule 的值
	 */
	public void setRule(String rule) {
		this.rule = rule;
	}

	/**
	 * @方法名 getType
	 * @功能 返回变量 type 的值
	 * @return String
	 */
	public String getType() {
		return type;
	}

	/**
	 * @方法名 setType
	 * @功能 设置变量 type 的值
	 */
	public void setType(String type) {
		this.type = type;
	}

}
