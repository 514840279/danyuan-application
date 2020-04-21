package org.danyuan.application.dbms.tabs.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * The persistent class for the sys_table_info database table.
 */
@Entity
@Table(name = "sys_dbms_tabs_info")
@NamedQuery(name = "SysDbmsTabsInfo.findAll", query = "SELECT s FROM SysDbmsTabsInfo s")
public class SysDbmsTabsInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Column(name = "jdbc_uuid", columnDefinition = "varchar(36) COMMENT '数据库表id'")
	private String				jdbcUuid;
	
	@Column(name = "type_uuid", columnDefinition = "varchar(36) COMMENT '数据库表类型id'")
	private String				typeUuid;
	
	@Column(name = "tabs_name", columnDefinition = "varchar(100) COMMENT '数据库表名'")
	private String				tabsName;
	
	@Column(name = "tabs_desc", columnDefinition = "varchar(500) COMMENT '表的含义'")
	private String				tabsDesc;
	
	@Column(name = "tabs_order", columnDefinition = "int COMMENT '数据库表顺序'")
	private Integer				tabsOrder;
	
	@Column(name = "tabs_rows", columnDefinition = "int COMMENT '数据库表数据量'")
	private Integer				tabsRows;
	
	@Column(name = "tabs_space", columnDefinition = "int COMMENT '数据库表空间大小'")
	private String				tabsSpace;
	
	@Column(name = "db_type", columnDefinition = " varchar(50)  COMMENT '数据库表空间大小'")
	private String				dbType;
	
	@Column(name = "dissql", columnDefinition = " int  default 0 COMMENT '数据库表空间大小'")
	private Integer				dissql;
	
	public SysDbmsTabsInfo() {
	}
	
	/**
	 * 方法名 ： getJdbcUuid
	 * 功 能 ： 返回变量 jdbcUuid 的值
	 * @return: String
	 */
	public String getJdbcUuid() {
		return jdbcUuid;
	}
	
	/**
	 * 方法名 ： setJdbcUuid
	 * 功 能 ： 设置变量 jdbcUuid 的值
	 */
	public void setJdbcUuid(String jdbcUuid) {
		this.jdbcUuid = jdbcUuid;
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
	 * 方法名 ： getTypeUuid
	 * 功 能 ： 返回变量 typeUuid 的值
	 * @return: String
	 */
	public String getTypeUuid() {
		return typeUuid;
	}
	
	/**
	 * 方法名 ： setTypeUuid
	 * 功 能 ： 设置变量 typeUuid 的值
	 */
	public void setTypeUuid(String typeUuid) {
		this.typeUuid = typeUuid;
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
	 * 方法名 ： getTabsOrder
	 * 功 能 ： 返回变量 tabsOrder 的值
	 * @return: Integer
	 */
	public Integer getTabsOrder() {
		return tabsOrder;
	}
	
	/**
	 * 方法名 ： setTabsOrder
	 * 功 能 ： 设置变量 tabsOrder 的值
	 */
	public void setTabsOrder(Integer tabsOrder) {
		this.tabsOrder = tabsOrder;
	}
	
	/**
	 * 方法名 ： getTabsRows
	 * 功 能 ： 返回变量 tabsRows 的值
	 * @return: Integer
	 */
	public Integer getTabsRows() {
		return tabsRows;
	}
	
	/**
	 * 方法名 ： setTabsRows
	 * 功 能 ： 设置变量 tabsRows 的值
	 */
	public void setTabsRows(Integer tabsRows) {
		this.tabsRows = tabsRows;
	}
	
	/**
	 * 方法名 ： getTabsSpace
	 * 功 能 ： 返回变量 tabsSpace 的值
	 * @return: String
	 */
	public String getTabsSpace() {
		return tabsSpace;
	}
	
	/**
	 * 方法名 ： setTabsSpace
	 * 功 能 ： 设置变量 tabsSpace 的值
	 */
	public void setTabsSpace(String tabsSpace) {
		this.tabsSpace = tabsSpace;
	}
	
	/**
	 * 方法名 ： toString
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see java.lang.Object#toString()
	 * 作 者 ： wang
	 */
	
	@Override
	public String toString() {
		return "SysDbmsTabsInfo [uuid=" + uuid + ", jdbcUuid=" + jdbcUuid + ", tabsDesc=" + tabsDesc + ", typeUuid=" + typeUuid + ", tabsName=" + tabsName + ", tabsOrder=" + tabsOrder + ", tabsRows=" + tabsRows + ", tabsSpace=" + tabsSpace + ", discription=" + discription + ", createTime=" + createTime + ", createUser=" + createUser + ", updateTime=" + updateTime + ", updateUser=" + updateUser + ", deleteFlag=" + deleteFlag + "]";
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
	 * @方法名 getDissql
	 * @功能 返回变量 dissql 的值
	 * @return Integer
	 */
	public Integer getDissql() {
		return dissql;
	}
	
	/**
	 * @方法名 setDissql
	 * @功能 设置变量 dissql 的值
	 */
	public void setDissql(Integer dissql) {
		this.dissql = dissql;
	}
	
}