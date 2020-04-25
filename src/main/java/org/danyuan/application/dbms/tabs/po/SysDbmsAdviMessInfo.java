package org.danyuan.application.dbms.tabs.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysDbmsAdviMessInfo.java
 * @包名 org.danyuan.application.dbms.tabs.po
 * @描述 sys_dbms_advi_mess_info的实体类
 * @时间 2020年04月25日 16:33:03
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_dbms_advi_mess_info")
@NamedQuery(name = "SysDbmsAdviMessInfo.findAll", query = "SELECT s FROM SysDbmsAdviMessInfo s")
public class SysDbmsAdviMessInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	//
	@Column(name = "message")
	private String				message;
	
	//
	@Column(name = "table_desc")
	private String				tableDesc;
	
	//
	@Column(name = "table_name")
	private String				tableName;
	
	//
	@Column(name = "type")
	private String				type;
	
	//
	@Column(name = "jdbc_uuid")
	private String				jdbcUuid;
	
	//
	@Column(name = "execute_sql")
	private String				executeSql;
	
	/**
	 * 构造方法：
	 * 描 述： 默认构造函数
	 * 参 数：
	 * 作 者 ： test
	 * @throws
	 */
	public SysDbmsAdviMessInfo() {
		super();
	}
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param uuid
	 * 参 数： @param type
	 * 参 数： @param tableDesc
	 * 参 数： @param tableName
	 * 参 数： @param jdbcUuid
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysDbmsAdviMessInfo(String uuid, String type, String tableDesc, String tableName, String jdbcUuid) {
		super();
		this.uuid = uuid;
		this.type = type;
		this.tableDesc = tableDesc;
		this.tableName = tableName;
		this.jdbcUuid = jdbcUuid;
	}
	/**
	 * 方法名 ： getMessage
	 * 功 能 ： 返回变量 message 的值
	 * @return: String
	 */
	public String getMessage() {
		return message;
	}
	
	/**
	 * 方法名 ： setMessage
	 * 功 能 ： 设置变量 message 的值
	 */
	public void setMessage(String message) {
		this.message = message;
	}
	
	/**
	 * 方法名 ： getTableDesc
	 * 功 能 ： 返回变量 tableDesc 的值
	 * @return: String
	 */
	public String getTableDesc() {
		return tableDesc;
	}
	
	/**
	 * 方法名 ： setTableDesc
	 * 功 能 ： 设置变量 tableDesc 的值
	 */
	public void setTableDesc(String tableDesc) {
		this.tableDesc = tableDesc;
	}
	
	/**
	 * 方法名 ： getTableName
	 * 功 能 ： 返回变量 tableName 的值
	 * @return: String
	 */
	public String getTableName() {
		return tableName;
	}
	
	/**
	 * 方法名 ： setTableName
	 * 功 能 ： 设置变量 tableName 的值
	 */
	public void setTableName(String tableName) {
		this.tableName = tableName;
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
	 * 方法名 ： getExecuteSql
	 * 功 能 ： 返回变量 executeSql 的值
	 * @return: String
	 */
	public String getExecuteSql() {
		return executeSql;
	}
	
	/**
	 * 方法名 ： setExecuteSql
	 * 功 能 ： 设置变量 executeSql 的值
	 */
	public void setExecuteSql(String executeSql) {
		this.executeSql = executeSql;
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
		return "SysAdviceMess [uuid=" + uuid + ", createTime=" + createTime + ", deleteFlag=" + deleteFlag + ", type=" + type + ", message=" + message + ", executeSql=" + executeSql + "]";
	}
}
