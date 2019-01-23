package org.danyuan.application.dbms.chart.vo;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @文件名 NodeParams.java
 * @包名 org.danyuan.application.dbms.chart.vo
 * @描述 TODO(用一句话描述该文件做什么)
 * @时间 2019年1月22日 上午11:20:33
 * @author Administrator
 * @版本 V1.0
 */
public class NodeParams {
	private String						name;
	private String						type;
	private List<Map<String, Object>>	properties	= new ArrayList<>();
	
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

	/**
	 * @方法名 getProperties
	 * @功能 返回变量 properties 的值
	 * @return List<Map<String,String>>
	 */
	public List<Map<String, Object>> getProperties() {
		return properties;
	}

	/**
	 * @方法名 setProperties
	 * @功能 设置变量 properties 的值
	 */
	public void setProperties(List<Map<String, Object>> properties) {
		this.properties = properties;
	}
	
}
