package org.danyuan.application.dbms.tabs.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysDbmsTabsJdbcInfo.java
 * @包名 org.danyuan.application.dbms.tabs.po
 * @描述 sys_dbms_tabs_jdbc_info的实体类
 * @时间 2020年04月25日 12:15:39
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_dbms_tabs_jdbc_info")
@NamedQuery(name = "SysDbmsTabsJdbcInfo.findAll", query = "SELECT s FROM SysDbmsTabsJdbcInfo s")
public class SysDbmsTabsJdbcInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 数据库驱动类
	@Column(name = "driver")
	private  String 	driver;

	// 用户名称
	@Column(name = "username")
	private  String 	username;

	// 端口号
	@Column(name = "db_type")
	private  String 	dbType;

	// 数据库名称
	@Column(name = "database_name")
	private  String 	databaseName;

	// 数据库类型
	@Column(name = "type")
	private  String 	type;

	// 端口号
	@Column(name = "port")
	private  String 	port;

	// ip地址
	@Column(name = "ip")
	private  String 	ip;

	// 用户密码
	@Column(name = "password")
	private  String 	password;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysDbmsTabsJdbcInfo() {
		super();
	}


	/**
	 * 方法名 ： getDriver
	 * 功 能 ： 返回变量 driver 数据库驱动类 的值
	 *
	 * @return: String 
	 */
	public  String  getDriver() {
		return driver;
	}

	/**
	 * 方法名 ： setDriver
	 * 功 能 ： 设置变量 driver 数据库驱动类 的值
	 */
	public void setDriver( String  driver) {
		this.driver = driver;
	}

	/**
	 * 方法名 ： getUsername
	 * 功 能 ： 返回变量 username 用户名称 的值
	 *
	 * @return: String 
	 */
	public  String  getUsername() {
		return username;
	}

	/**
	 * 方法名 ： setUsername
	 * 功 能 ： 设置变量 username 用户名称 的值
	 */
	public void setUsername( String  username) {
		this.username = username;
	}

	/**
	 * 方法名 ： getDbType
	 * 功 能 ： 返回变量 dbType 端口号 的值
	 *
	 * @return: String 
	 */
	public  String  getDbType() {
		return dbType;
	}

	/**
	 * 方法名 ： setDbType
	 * 功 能 ： 设置变量 dbType 端口号 的值
	 */
	public void setDbType( String  dbType) {
		this.dbType = dbType;
	}

	/**
	 * 方法名 ： getDatabaseName
	 * 功 能 ： 返回变量 databaseName 数据库名称 的值
	 *
	 * @return: String 
	 */
	public  String  getDatabaseName() {
		return databaseName;
	}

	/**
	 * 方法名 ： setDatabaseName
	 * 功 能 ： 设置变量 databaseName 数据库名称 的值
	 */
	public void setDatabaseName( String  databaseName) {
		this.databaseName = databaseName;
	}

	/**
	 * 方法名 ： getType
	 * 功 能 ： 返回变量 type 数据库类型 的值
	 *
	 * @return: String 
	 */
	public  String  getType() {
		return type;
	}

	/**
	 * 方法名 ： setType
	 * 功 能 ： 设置变量 type 数据库类型 的值
	 */
	public void setType( String  type) {
		this.type = type;
	}

	/**
	 * 方法名 ： getPort
	 * 功 能 ： 返回变量 port 端口号 的值
	 *
	 * @return: String 
	 */
	public  String  getPort() {
		return port;
	}

	/**
	 * 方法名 ： setPort
	 * 功 能 ： 设置变量 port 端口号 的值
	 */
	public void setPort( String  port) {
		this.port = port;
	}

	/**
	 * 方法名 ： getIp
	 * 功 能 ： 返回变量 ip ip地址 的值
	 *
	 * @return: String 
	 */
	public  String  getIp() {
		return ip;
	}

	/**
	 * 方法名 ： setIp
	 * 功 能 ： 设置变量 ip ip地址 的值
	 */
	public void setIp( String  ip) {
		this.ip = ip;
	}

	/**
	 * 方法名 ： getPassword
	 * 功 能 ： 返回变量 password 用户密码 的值
	 *
	 * @return: String 
	 */
	public  String  getPassword() {
		return password;
	}

	/**
	 * 方法名 ： setPassword
	 * 功 能 ： 设置变量 password 用户密码 的值
	 */
	public void setPassword( String  password) {
		this.password = password;
	}


}
