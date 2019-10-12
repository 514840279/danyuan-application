package org.danyuan.application.crawler.config.po;

import java.util.List;

/**
 * @文件名 RuleColumn.java
 * @包名 org.danyuan.application.crawler.config.po
 * @描述 TODO(用一句话描述该文件做什么)
 * @时间 2019年7月19日 下午1:30:14
 * @author Administrator
 * @版本 V1.0
 */
public class RuleColumn {
	private String			uuid;
	private String			name;
	private String			rule;
	private String			type;
	private String			detialUrl;
	private String			imgUrl;
	private String			pageType;
	private String			pageName;
	private List<GroupList>	groupLists;
	
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
	
	/**
	 * @方法名 getGroupLists
	 * @功能 返回变量 groupLists 的值
	 * @return List<GroupList>
	 */
	public List<GroupList> getGroupLists() {
		return groupLists;
	}
	
	/**
	 * @方法名 setGroupLists
	 * @功能 设置变量 groupLists 的值
	 */
	public void setGroupLists(List<GroupList> groupLists) {
		this.groupLists = groupLists;
	}
	
	/**
	 * @方法名 getUuid
	 * @功能 返回变量 uuid 的值
	 * @return String
	 */
	public String getUuid() {
		return uuid;
	}

	/**
	 * @方法名 setUuid
	 * @功能 设置变量 uuid 的值
	 */
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	/**
	 * @方法名 getDetialUrl
	 * @功能 返回变量 detialUrl 的值
	 * @return String
	 */
	public String getDetialUrl() {
		return detialUrl;
	}

	/**
	 * @方法名 setDetialUrl
	 * @功能 设置变量 detialUrl 的值
	 */
	public void setDetialUrl(String detialUrl) {
		this.detialUrl = detialUrl;
	}

	/**
	 * @方法名 getImgUrl
	 * @功能 返回变量 imgUrl 的值
	 * @return String
	 */
	public String getImgUrl() {
		return imgUrl;
	}

	/**
	 * @方法名 setImgUrl
	 * @功能 设置变量 imgUrl 的值
	 */
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	
	/**
	 * @方法名 getPageType
	 * @功能 返回变量 pageType 的值
	 * @return String
	 */
	public String getPageType() {
		return pageType;
	}
	
	/**
	 * @方法名 setPageType
	 * @功能 设置变量 pageType 的值
	 */
	public void setPageType(String pageType) {
		this.pageType = pageType;
	}
	
	/**
	 * @方法名 getPageName
	 * @功能 返回变量 pageName 的值
	 * @return String
	 */
	public String getPageName() {
		return pageName;
	}
	
	/**
	 * @方法名 setPageName
	 * @功能 设置变量 pageName 的值
	 */
	public void setPageName(String pageName) {
		this.pageName = pageName;
	}
	
}
