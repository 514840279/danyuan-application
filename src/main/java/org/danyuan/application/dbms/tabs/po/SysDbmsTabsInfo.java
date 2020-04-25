package org.danyuan.application.dbms.tabs.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysDbmsTabsInfo.java
 * @包名 org.danyuan.application.dbms.tabs.po
 * @描述 sys_dbms_tabs_info的实体类
 * @时间 2020年04月25日 12:15:38
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_dbms_tabs_info")
@NamedQuery(name = "SysDbmsTabsInfo.findAll", query = "SELECT s FROM SysDbmsTabsInfo s")
public class SysDbmsTabsInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 数据库表空间大小
	@Column(name = "tabs_space",precision=10)
	private  Integer 	tabsSpace;

	// 数据库表名
	@Column(name = "tabs_name")
	private  String 	tabsName;

	// 表的含义
	@Column(name = "tabs_desc")
	private  String 	tabsDesc;

	// 数据库表空间大小
	@Column(name = "dissql",precision=10)
	private  Integer 	dissql;

	// 数据库表数据量
	@Column(name = "tabs_rows",precision=10)
	private  Integer 	tabsRows;

	// 数据库表顺序
	@Column(name = "tabs_order",precision=10)
	private  Integer 	tabsOrder;

	// 数据库表类型id
	@Column(name = "type_uuid")
	private  String 	typeUuid;

	// 数据库表空间大小
	@Column(name = "db_type")
	private  String 	dbType;

	// 数据库表id
	@Column(name = "jdbc_uuid")
	private  String 	jdbcUuid;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysDbmsTabsInfo() {
		super();
	}


	/**
	 * 方法名 ： getTabsSpace
	 * 功 能 ： 返回变量 tabsSpace 数据库表空间大小 的值
	 *
	 * @return: String 
	 */
	public  Integer  getTabsSpace() {
		return tabsSpace;
	}

	/**
	 * 方法名 ： setTabsSpace
	 * 功 能 ： 设置变量 tabsSpace 数据库表空间大小 的值
	 */
	public void setTabsSpace( Integer  tabsSpace) {
		this.tabsSpace = tabsSpace;
	}

	/**
	 * 方法名 ： getTabsName
	 * 功 能 ： 返回变量 tabsName 数据库表名 的值
	 *
	 * @return: String 
	 */
	public  String  getTabsName() {
		return tabsName;
	}

	/**
	 * 方法名 ： setTabsName
	 * 功 能 ： 设置变量 tabsName 数据库表名 的值
	 */
	public void setTabsName( String  tabsName) {
		this.tabsName = tabsName;
	}

	/**
	 * 方法名 ： getTabsDesc
	 * 功 能 ： 返回变量 tabsDesc 表的含义 的值
	 *
	 * @return: String 
	 */
	public  String  getTabsDesc() {
		return tabsDesc;
	}

	/**
	 * 方法名 ： setTabsDesc
	 * 功 能 ： 设置变量 tabsDesc 表的含义 的值
	 */
	public void setTabsDesc( String  tabsDesc) {
		this.tabsDesc = tabsDesc;
	}

	/**
	 * 方法名 ： getDissql
	 * 功 能 ： 返回变量 dissql 数据库表空间大小 的值
	 *
	 * @return: String 
	 */
	public  Integer  getDissql() {
		return dissql;
	}

	/**
	 * 方法名 ： setDissql
	 * 功 能 ： 设置变量 dissql 数据库表空间大小 的值
	 */
	public void setDissql( Integer  dissql) {
		this.dissql = dissql;
	}

	/**
	 * 方法名 ： getTabsRows
	 * 功 能 ： 返回变量 tabsRows 数据库表数据量 的值
	 *
	 * @return: String 
	 */
	public  Integer  getTabsRows() {
		return tabsRows;
	}

	/**
	 * 方法名 ： setTabsRows
	 * 功 能 ： 设置变量 tabsRows 数据库表数据量 的值
	 */
	public void setTabsRows( Integer  tabsRows) {
		this.tabsRows = tabsRows;
	}

	/**
	 * 方法名 ： getTabsOrder
	 * 功 能 ： 返回变量 tabsOrder 数据库表顺序 的值
	 *
	 * @return: String 
	 */
	public  Integer  getTabsOrder() {
		return tabsOrder;
	}

	/**
	 * 方法名 ： setTabsOrder
	 * 功 能 ： 设置变量 tabsOrder 数据库表顺序 的值
	 */
	public void setTabsOrder( Integer  tabsOrder) {
		this.tabsOrder = tabsOrder;
	}

	/**
	 * 方法名 ： getTypeUuid
	 * 功 能 ： 返回变量 typeUuid 数据库表类型id 的值
	 *
	 * @return: String 
	 */
	public  String  getTypeUuid() {
		return typeUuid;
	}

	/**
	 * 方法名 ： setTypeUuid
	 * 功 能 ： 设置变量 typeUuid 数据库表类型id 的值
	 */
	public void setTypeUuid( String  typeUuid) {
		this.typeUuid = typeUuid;
	}

	/**
	 * 方法名 ： getDbType
	 * 功 能 ： 返回变量 dbType 数据库表空间大小 的值
	 *
	 * @return: String 
	 */
	public  String  getDbType() {
		return dbType;
	}

	/**
	 * 方法名 ： setDbType
	 * 功 能 ： 设置变量 dbType 数据库表空间大小 的值
	 */
	public void setDbType( String  dbType) {
		this.dbType = dbType;
	}

	/**
	 * 方法名 ： getJdbcUuid
	 * 功 能 ： 返回变量 jdbcUuid 数据库表id 的值
	 *
	 * @return: String 
	 */
	public  String  getJdbcUuid() {
		return jdbcUuid;
	}

	/**
	 * 方法名 ： setJdbcUuid
	 * 功 能 ： 设置变量 jdbcUuid 数据库表id 的值
	 */
	public void setJdbcUuid( String  jdbcUuid) {
		this.jdbcUuid = jdbcUuid;
	}


}
