package org.danyuan.application.dbms.tabs.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * The persistent class for the sys_database_info database table.
 */
@Entity
@Table(name = "sys_dbms_tabs_jdbc_info")
@NamedQuery(name = "SysDbmsTabsJdbcInfo.findAll", query = "SELECT s FROM SysDbmsTabsJdbcInfo s")
public class SysDbmsTabsJdbcInfo extends BaseEntity {
	
	@Column(columnDefinition = "varchar(200) COMMENT '数据库类型'")
	private String	type;
	
	@Column(columnDefinition = " varchar(100) COMMENT 'ip地址'")
	private String	ip;
	
	@Column(name = "database_name", columnDefinition = " varchar(50) COMMENT '数据库名称'")
	private String	databaseName;
	
	@Column(columnDefinition = "varchar(200) COMMENT '数据库驱动类'")
	private String	driver;
	
	@Column(columnDefinition = "varchar(200) COMMENT '用户名称'")
	private String	username;
	
	@Column(columnDefinition = "varchar(200) COMMENT '用户密码'")
	private String	password;
	
	@Column(columnDefinition = "varchar(10) COMMENT '端口号'")
	private String	port;
	
	public SysDbmsTabsJdbcInfo() {
	}
	
	/**
	 * 方法名 ： getIp
	 * 功 能 ： 返回变量 ip 的值
	 * @return: String
	 */
	public String getIp() {
		return ip;
	}
	
	public String getDatabaseName() {
		return databaseName;
	}
	
	public void setDatabaseName(String databaseName) {
		this.databaseName = databaseName;
	}
	
	/**
	 * 方法名 ： setIp
	 * 功 能 ： 设置变量 ip 的值
	 */
	public void setIp(String ip) {
		this.ip = ip;
	}
	
	public String getDriver() {
		return this.driver;
	}
	
	public void setDriver(String driver) {
		this.driver = driver;
	}
	
	public String getPassword() {
		return this.password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getPort() {
		return this.port;
	}
	
	public void setPort(String port) {
		this.port = port;
	}
	
	public String getType() {
		return this.type;
	}
	
	public void setType(String type) {
		this.type = type;
	}
	
	/**
	 * 方法名 ： getUpdateTime
	 * 功 能 ： 返回变量 updateTime 的值
	 * @return: Date
	 */
	public Date getUpdateTime() {
		return updateTime;
	}
	
	/**
	 * 方法名 ： setUpdateTime
	 * 功 能 ： 设置变量 updateTime 的值
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	/**
	 * 方法名 ： getUpdateUser
	 * 功 能 ： 返回变量 updateUser 的值
	 * @return: String
	 */
	public String getUpdateUser() {
		return updateUser;
	}
	
	/**
	 * 方法名 ： setUpdateUser
	 * 功 能 ： 设置变量 updateUser 的值
	 */
	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}
	
	public String getUsername() {
		return this.username;
	}
	
	public void setUsername(String username) {
		this.username = username;
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
		return "SysDatabaseInfo [uuid=" + uuid + ", ip=" + ip + ", databaseName=" + databaseName + ", driver=" + driver + ", username=" + username + ", password=" + password + ", port=" + port + ", type=" + type + ", discription=" + discription + ", updateTime=" + updateTime + ", updateUser=" + updateUser + ", createTime=" + createTime + ", createUser=" + createUser + ", deleteFlag=" + deleteFlag + "]";
	}
	
}