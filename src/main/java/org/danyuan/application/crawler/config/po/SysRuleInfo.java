package org.danyuan.application.crawler.config.po;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

/**
 * @文件名 SysRuleInfo.java
 * @包名 org.danyuan.application.crawler.config.po
 * @描述 TODO(用一句话描述该文件做什么)
 * @时间 2019年7月19日 下午1:20:54
 * @author Administrator
 * @版本 V1.0
 */

@Document("sys_rule_info")
public class SysRuleInfo {
	
	@Id
	private String		uuid;

	private String		pageType;

	private String		pageName;

	private GroupList	groupList;

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

	/**
	 * @方法名 getGroupList
	 * @功能 返回变量 groupList 的值
	 * @return GroupList
	 */
	public GroupList getGroupList() {
		return groupList;
	}

	/**
	 * @方法名 setGroupList
	 * @功能 设置变量 groupList 的值
	 */
	public void setGroupList(GroupList groupList) {
		this.groupList = groupList;
	}

}
