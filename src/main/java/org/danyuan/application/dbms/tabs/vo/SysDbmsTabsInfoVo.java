package org.danyuan.application.dbms.tabs.vo;

import java.util.ArrayList;
import java.util.List;

import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;

public class SysDbmsTabsInfoVo extends Pagination<SysDbmsTabsInfo> {

	private String				databaseUuid;
	private String				typeUuid;
	
	SysDbmsTabsInfo				old			= new SysDbmsTabsInfo();
	SysDbmsTabsInfo				now			= new SysDbmsTabsInfo();

	public String				userindex;
	public String				uservalue;
	public String				type;
	public String				tabsuuid;
	public String				tabsName;
	public String				dbType;
	public String				esName;
	public String				tabsDesc;
	public String				tabsRows;

	public String				paramString;
	public List<MulteityParam>	paramList	= new ArrayList<>();
	
	/**
	 * 方法名 ： getUserindex
	 * 功 能 ： 返回变量 userindex 的值
	 * @return: String
	 */
	public String getUserindex() {
		return userindex;
	}
	
	/**
	 * 方法名 ： setUserindex
	 * 功 能 ： 设置变量 userindex 的值
	 */
	public void setUserindex(String userindex) {
		this.userindex = userindex;
	}
	
	/**
	 * 方法名 ： getUservalue
	 * 功 能 ： 返回变量 uservalue 的值
	 * @return: String
	 */
	public String getUservalue() {
		return uservalue;
	}
	
	/**
	 * 方法名 ： setUservalue
	 * 功 能 ： 设置变量 uservalue 的值
	 */
	public void setUservalue(String uservalue) {
		this.uservalue = uservalue;
	}
	
	/**
	 * 方法名 ： getType
	 * 功 能 ： 返回变量 type 的值
	 * @return: String
	 */
	public String getType() {
		return type;
	}
	
	/**
	 * 方法名 ： setType
	 * 功 能 ： 设置变量 type 的值
	 */
	public void setType(String type) {
		this.type = type;
	}
	
	/**
	 * 方法名 ： getDbType
	 * 功 能 ： 返回变量 dbType 的值
	 * @return: String
	 */
	public String getDbType() {
		return dbType;
	}
	
	/**
	 * 方法名 ： setDbType
	 * 功 能 ： 设置变量 dbType 的值
	 */
	public void setDbType(String dbType) {
		this.dbType = dbType;
	}
	
	/**
	 * 方法名 ： getEsName
	 * 功 能 ： 返回变量 esName 的值
	 * @return: String
	 */
	public String getEsName() {
		return esName;
	}
	
	/**
	 * 方法名 ： setEsName
	 * 功 能 ： 设置变量 esName 的值
	 */
	public void setEsName(String esName) {
		this.esName = esName;
	}

	/**
	 * 方法名 ： getParamString
	 * 功 能 ： 返回变量 paramString 的值
	 * @return: String
	 */
	public String getParamString() {
		return paramString;
	}
	
	/**
	 * 方法名 ： setParamString
	 * 功 能 ： 设置变量 paramString 的值
	 */
	public void setParamString(String paramString) {
		this.paramString = paramString;
	}
	
	/**
	 * 方法名 ： getParamList
	 * 功 能 ： 返回变量 paramList 的值
	 * @return: List<MulteityParam>
	 */
	public List<MulteityParam> getParamList() {
		return paramList;
	}
	
	/**
	 * 方法名 ： setParamList
	 * 功 能 ： 设置变量 paramList 的值
	 */
	public void setParamList(List<MulteityParam> paramList) {
		this.paramList = paramList;
	}
	
	/**
	 * @return the databaseUuid
	 */
	public String getDatabaseUuid() {
		return databaseUuid;
	}
	
	/**
	 * @param databaseUuid
	 *            the databaseUuid to set
	 */
	public void setDatabaseUuid(String databaseUuid) {
		this.databaseUuid = databaseUuid;
	}
	
	/**
	 * @return the typeUuid
	 */
	public String getTypeUuid() {
		return typeUuid;
	}
	
	/**
	 * @param typeUuid
	 *            the typeUuid to set
	 */
	public void setTypeUuid(String typeUuid) {
		this.typeUuid = typeUuid;
	}
	
	public SysDbmsTabsInfo getOld() {
		return old;
	}
	
	public void setOld(SysDbmsTabsInfo old) {
		this.old = old;
	}
	
	public SysDbmsTabsInfo getNow() {
		return now;
	}
	
	public void setNow(SysDbmsTabsInfo now) {
		this.now = now;
	}

	/**
	 * 方法名 ： getTabsuuid
	 * 功 能 ： 返回变量 tabsuuid 的值
	 * @return: String
	 */
	public String getTabsuuid() {
		return tabsuuid;
	}

	/**
	 * 方法名 ： setTabsuuid
	 * 功 能 ： 设置变量 tabsuuid 的值
	 */
	public void setTabsuuid(String tabsuuid) {
		this.tabsuuid = tabsuuid;
	}

	/**
	 * 方法名 ： getTabsName
	 * 功 能 ： 返回变量 tabsName 的值
	 * @return: String
	 */
	public String getTabsName() {
		return tabsName;
	}

	/**
	 * 方法名 ： setTabsName
	 * 功 能 ： 设置变量 tabsName 的值
	 */
	public void setTabsName(String tabsName) {
		this.tabsName = tabsName;
	}

	/**
	 * 方法名 ： getTabsDesc
	 * 功 能 ： 返回变量 tabsDesc 的值
	 * @return: String
	 */
	public String getTabsDesc() {
		return tabsDesc;
	}

	/**
	 * 方法名 ： setTabsDesc
	 * 功 能 ： 设置变量 tabsDesc 的值
	 */
	public void setTabsDesc(String tabsDesc) {
		this.tabsDesc = tabsDesc;
	}

	/**
	 * 方法名 ： getTabsRows
	 * 功 能 ： 返回变量 tabsRows 的值
	 * @return: String
	 */
	public String getTabsRows() {
		return tabsRows;
	}

	/**
	 * 方法名 ： setTabsRows
	 * 功 能 ： 设置变量 tabsRows 的值
	 */
	public void setTabsRows(String tabsRows) {
		this.tabsRows = tabsRows;
	}
	
	/**
	 * 方法名 ： toString
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see java.lang.Object#toString()
	 * 作 者 ： Administrator
	 */

	@Override
	public String toString() {
		return "SysDbmsTabsInfoVo [databaseUuid=" + databaseUuid + ", typeUuid=" + typeUuid + ", old=" + old + ", now=" + now + ", userindex=" + userindex + ", uservalue=" + uservalue + ", type=" + type + ", tabsuuid=" + tabsuuid + ", tabsName=" + tabsName + ", dbType=" + dbType + ", esName=" + esName + ", tabsDesc=" + tabsDesc + ", tabsRows=" + tabsRows + ", paramString=" + paramString + ", paramList=" + paramList + "]";
	}
	
}
