package org.danyuan.application.dbms.tabs.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysDbmsTabsMergeInfo.java
 * @包名 org.danyuan.application.dbms.tabs.po
 * @描述 sys_dbms_tabs_merge_info的实体类
 * @时间 2020年01月03日 15:42:38
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_dbms_tabs_merge_info")
@NamedQuery(name = "SysDbmsTabsMergeInfo.findAll", query = "SELECT s FROM SysDbmsTabsMergeInfo s")
public class SysDbmsTabsMergeInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	//
	@Column(name = "cols_name_2")
	private String				colsName2;
	
	//
	@Column(name = "cols_uuid_2")
	private String				colsUuid2;
	
	//
	@Column(name = "table_uuid_2")
	private String				tableUuid2;
	
	//
	@Column(name = "tabs_name_2")
	private String				tabsName2;
	
	//
	@Column(name = "cols_desc_2")
	private String				colsDesc2;
	
	//
	@Column(name = "cols_name_1")
	private String				colsName1;
	
	//
	@Column(name = "cols_desc_1")
	private String				colsDesc1;
	//
	@Column(name = "cols_uuid_1")
	private String				colsUuid1;
	
	//
	@Column(name = "table_uuid_1")
	private String				tableUuid1;
	
	//
	@Column(name = "tabs_name_1")
	private String				tabsName1;
	
	/**
	 * 构造方法：
	 * 描 述： 默认构造函数
	 * 参 数：
	 * 作 者 ： test
	 * @throws
	 */
	public SysDbmsTabsMergeInfo() {
		super();
	}
	
	/**
	 * 方法名 ： getColsName2
	 * 功 能 ： 返回变量 colsName2 的值
	 * @return: String
	 */
	public String getColsName2() {
		return colsName2;
	}
	
	/**
	 * 方法名 ： setColsName2
	 * 功 能 ： 设置变量 colsName2 的值
	 */
	public void setColsName2(String colsName2) {
		this.colsName2 = colsName2;
	}
	
	/**
	 * 方法名 ： getTableUuid2
	 * 功 能 ： 返回变量 tableUuid2 的值
	 * @return: String
	 */
	public String getTableUuid2() {
		return tableUuid2;
	}
	
	/**
	 * 方法名 ： setTableUuid2
	 * 功 能 ： 设置变量 tableUuid2 的值
	 */
	public void setTableUuid2(String tableUuid2) {
		this.tableUuid2 = tableUuid2;
	}
	
	/**
	 * 方法名 ： getColsDesc2
	 * 功 能 ： 返回变量 colsDesc2 的值
	 * @return: String
	 */
	public String getColsDesc2() {
		return colsDesc2;
	}
	
	/**
	 * 方法名 ： setColsDesc2
	 * 功 能 ： 设置变量 colsDesc2 的值
	 */
	public void setColsDesc2(String colsDesc2) {
		this.colsDesc2 = colsDesc2;
	}
	
	/**
	 * 方法名 ： getColsName1
	 * 功 能 ： 返回变量 colsName1 的值
	 * @return: String
	 */
	public String getColsName1() {
		return colsName1;
	}
	
	/**
	 * 方法名 ： setColsName1
	 * 功 能 ： 设置变量 colsName1 的值
	 */
	public void setColsName1(String colsName1) {
		this.colsName1 = colsName1;
	}
	
	/**
	 * 方法名 ： getColsDesc1
	 * 功 能 ： 返回变量 colsDesc1 的值
	 * @return: String
	 */
	public String getColsDesc1() {
		return colsDesc1;
	}
	
	/**
	 * 方法名 ： setColsDesc1
	 * 功 能 ： 设置变量 colsDesc1 的值
	 */
	public void setColsDesc1(String colsDesc1) {
		this.colsDesc1 = colsDesc1;
	}
	
	/**
	 * 方法名 ： getTableUuid1
	 * 功 能 ： 返回变量 tableUuid1 的值
	 * @return: String
	 */
	public String getTableUuid1() {
		return tableUuid1;
	}
	
	/**
	 * 方法名 ： setTableUuid1
	 * 功 能 ： 设置变量 tableUuid1 的值
	 */
	public void setTableUuid1(String tableUuid1) {
		this.tableUuid1 = tableUuid1;
	}
	
	/**
	 * @方法名 getColsUuid2
	 * @功能 返回变量 colsUuid2 的值
	 * @return String
	 */
	public String getColsUuid2() {
		return colsUuid2;
	}
	
	/**
	 * @方法名 setColsUuid2
	 * @功能 设置变量 colsUuid2 的值
	 */
	public void setColsUuid2(String colsUuid2) {
		this.colsUuid2 = colsUuid2;
	}
	
	/**
	 * @方法名 getColsUuid1
	 * @功能 返回变量 colsUuid1 的值
	 * @return String
	 */
	public String getColsUuid1() {
		return colsUuid1;
	}
	
	/**
	 * @方法名 setColsUuid1
	 * @功能 设置变量 colsUuid1 的值
	 */
	public void setColsUuid1(String colsUuid1) {
		this.colsUuid1 = colsUuid1;
	}
	
	/**
	 * @return the tabsName2
	 */
	public String getTabsName2() {
		return tabsName2;
	}
	
	/**
	 * 方法名 ： setTabsName2
	 * 功 能 ： 设置变量 tabsName2 的值
	 */
	public void setTabsName2(String tabsName2) {
		this.tabsName2 = tabsName2;
	}
	
	/**
	 * @return the tabsName1
	 */
	public String getTabsName1() {
		return tabsName1;
	}
	
	/**
	 * 方法名 ： setTabsName1
	 * 功 能 ： 设置变量 tabsName1 的值
	 */
	public void setTabsName1(String tabsName1) {
		this.tabsName1 = tabsName1;
	}
	
}
