package org.danyuan.application.dbms.tabs.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * @文件名 VSysDbmsTableDis.java
 * @包名 org.danyuan.application.dbms.tabs.po
 * @描述 v_sys_dbms_table_dis的实体类
 * @时间 2019年11月18日 13:19:27
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "v_sys_dbms_table_dis")
@NamedQuery(name = "VSysDbmsTableDis.findAll", query = "SELECT s FROM VSysDbmsTableDis s")
public class VSysDbmsTableDis implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@Column(unique = true, nullable = false, columnDefinition = " varchar(36) COMMENT '主键'")
	protected String			uuid;						// 主键
	
	@Column(name = "jdbc_uuid", columnDefinition = " varchar(36) COMMENT '数据库表id'")
	private String				jdbcUuid;

	//
	@Column(name = "drop_sql", columnDefinition = " varchar(2000) COMMENT 'drop_sql'")
	private String				dropSql;
	
	//
	@Column(name = "rename_sql", columnDefinition = "varchar(2000) COMMENT 'rename_sql'")
	private String				renameSql;
	
	// 表的含义
	@Column(name = "tabs_desc", columnDefinition = "varchar(200) COMMENT '表的含义'")
	private String				tabsDesc;
	
	// 数据库类型
	@Column(name = "type", columnDefinition = "varchar(200) COMMENT '数据库类型'")
	private String				type;
	
	// 类型名
	@Column(name = "type_name", columnDefinition = "varchar(200) COMMENT '类型名'")
	private String				typeName;
	
	//
	@Column(name = "dis_sql", columnDefinition = "varchar(2000) COMMENT 'dis_sql'")
	private String				disSql;
	
	// 数据库表数据量
	@Column(name = "tabs_rows", columnDefinition = "varchar(200) COMMENT '数据库表数据量'")
	private Integer				tabsRows;
	
	// 数据库表名
	@Column(name = "tabs_name", columnDefinition = "varchar(200) COMMENT '数据库表名'")
	private String				tabsName;
	
	//
	@Column(name = "reset_sql", columnDefinition = "varchar(200) COMMENT 'reset_sql'")
	private String				resetSql;
	
	/**
	 * 构造方法：
	 * 描 述： 默认构造函数
	 * 参 数：
	 * 作 者 ： test
	 * @throws
	 */
	public VSysDbmsTableDis() {
		super();
	}
	
	/**
	 * 方法名 ： getDropSql
	 * 功 能 ： 返回变量 dropSql 的值
	 *
	 * @return: String
	 */
	public String getDropSql() {
		return dropSql;
	}
	
	/**
	 * 方法名 ： setDropSql
	 * 功 能 ： 设置变量 dropSql 的值
	 */
	public void setDropSql(String dropSql) {
		this.dropSql = dropSql;
	}
	
	/**
	 * 方法名 ： getRenameSql
	 * 功 能 ： 返回变量 renameSql 的值
	 *
	 * @return: String
	 */
	public String getRenameSql() {
		return renameSql;
	}
	
	/**
	 * 方法名 ： setRenameSql
	 * 功 能 ： 设置变量 renameSql 的值
	 */
	public void setRenameSql(String renameSql) {
		this.renameSql = renameSql;
	}
	
	/**
	 * 方法名 ： getTabsDesc
	 * 功 能 ： 返回变量 tabsDesc 表的含义 的值
	 *
	 * @return: String
	 */
	public String getTabsDesc() {
		return tabsDesc;
	}
	
	/**
	 * 方法名 ： setTabsDesc
	 * 功 能 ： 设置变量 tabsDesc 表的含义 的值
	 */
	public void setTabsDesc(String tabsDesc) {
		this.tabsDesc = tabsDesc;
	}
	
	/**
	 * 方法名 ： getType
	 * 功 能 ： 返回变量 type 数据库类型 的值
	 *
	 * @return: String
	 */
	public String getType() {
		return type;
	}
	
	/**
	 * 方法名 ： setType
	 * 功 能 ： 设置变量 type 数据库类型 的值
	 */
	public void setType(String type) {
		this.type = type;
	}
	
	/**
	 * 方法名 ： getTypeName
	 * 功 能 ： 返回变量 typeName 类型名 的值
	 *
	 * @return: String
	 */
	public String getTypeName() {
		return typeName;
	}
	
	/**
	 * 方法名 ： setTypeName
	 * 功 能 ： 设置变量 typeName 类型名 的值
	 */
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	
	/**
	 * 方法名 ： getDisSql
	 * 功 能 ： 返回变量 disSql 的值
	 *
	 * @return: String
	 */
	public String getDisSql() {
		return disSql;
	}
	
	/**
	 * 方法名 ： setDisSql
	 * 功 能 ： 设置变量 disSql 的值
	 */
	public void setDisSql(String disSql) {
		this.disSql = disSql;
	}
	
	/**
	 * 方法名 ： getTabsRows
	 * 功 能 ： 返回变量 tabsRows 数据库表数据量 的值
	 *
	 * @return: String
	 */
	public Integer getTabsRows() {
		return tabsRows;
	}
	
	/**
	 * 方法名 ： setTabsRows
	 * 功 能 ： 设置变量 tabsRows 数据库表数据量 的值
	 */
	public void setTabsRows(Integer tabsRows) {
		this.tabsRows = tabsRows;
	}
	
	/**
	 * 方法名 ： getTabsName
	 * 功 能 ： 返回变量 tabsName 数据库表名 的值
	 *
	 * @return: String
	 */
	public String getTabsName() {
		return tabsName;
	}
	
	/**
	 * 方法名 ： setTabsName
	 * 功 能 ： 设置变量 tabsName 数据库表名 的值
	 */
	public void setTabsName(String tabsName) {
		this.tabsName = tabsName;
	}
	
	/**
	 * 方法名 ： getResetSql
	 * 功 能 ： 返回变量 resetSql 的值
	 *
	 * @return: String
	 */
	public String getResetSql() {
		return resetSql;
	}
	
	/**
	 * 方法名 ： setResetSql
	 * 功 能 ： 设置变量 resetSql 的值
	 */
	public void setResetSql(String resetSql) {
		this.resetSql = resetSql;
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
	 * @方法名 getJdbcUuid
	 * @功能 返回变量 jdbcUuid 的值
	 * @return String
	 */
	public String getJdbcUuid() {
		return jdbcUuid;
	}
	
	/**
	 * @方法名 setJdbcUuid
	 * @功能 设置变量 jdbcUuid 的值
	 */
	public void setJdbcUuid(String jdbcUuid) {
		this.jdbcUuid = jdbcUuid;
	}
	
}
