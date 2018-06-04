package tk.ainiyue.danyuan.application.dbms.zhcx.po;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;

/**
 * The persistent class for the sys_zhcx_type database table.
 */
@Entity
@Table(name = "sys_zhcx_addr")
@NamedQuery(name = "SysZhcxAddr.findAll", query = "SELECT s FROM SysZhcxAddr s")
public class SysZhcxAddr implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "UUID", columnDefinition = "varchar(36) COMMENT '主键'")
	private String				uuid;
	
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.CreationTimestamp
	private Date				createTime;										// create_time
	// 插入时间
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String				createUser;										// create_user
	// 插入人
	
	@Column(name = "update_time", columnDefinition = " timestamp  default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.UpdateTimestamp
	private Date				updateTime;										// updata_time
	// 更新时间
	
	@Column(name = "update_user", columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String				updateUser;										// updata_user
	// 更新人
	
	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private String				deleteFlag;										// delete_flag
	// 标记
	
	@Column(name = "IP")
	private String				ip;
	
	@Column(name = "PORT")
	private String				port;
	
	@Column(name = "USERNAME")
	private String				username;
	
	@Column(name = "PASSWORD")
	private String				password;
	
	@Column(name = "DB_TYPE")
	private String				dbType;
	@Column(name = "DB_NAME")
	private String				dbName;
	
	public SysZhcxAddr() {
	}
	
	public String getUuid() {
		return this.uuid;
	}
	
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	public Date getCreateTime() {
		return this.createTime;
	}
	
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	public String getCreateUser() {
		return this.createUser;
	}
	
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	
	public String getDeleteFlag() {
		return this.deleteFlag;
	}
	
	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	
	public Date getUpdateTime() {
		return this.updateTime;
	}
	
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	public String getUpdateUser() {
		return this.updateUser;
	}
	
	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}
	
	/**
	 * 方法名 ： getIp
	 * 功 能 ： 返回变量 ip 的值
	 * @return: String
	 */
	public String getIp() {
		return ip;
	}
	
	/**
	 * 方法名 ： setIp
	 * 功 能 ： 设置变量 ip 的值
	 */
	public void setIp(String ip) {
		this.ip = ip;
	}
	
	/**
	 * 方法名 ： getPort
	 * 功 能 ： 返回变量 port 的值
	 * @return: String
	 */
	public String getPort() {
		return port;
	}
	
	/**
	 * 方法名 ： setPort
	 * 功 能 ： 设置变量 port 的值
	 */
	public void setPort(String port) {
		this.port = port;
	}
	
	/**
	 * 方法名 ： getUsername
	 * 功 能 ： 返回变量 username 的值
	 * @return: String
	 */
	public String getUsername() {
		return username;
	}
	
	/**
	 * 方法名 ： setUsername
	 * 功 能 ： 设置变量 username 的值
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	
	/**
	 * 方法名 ： getPassword
	 * 功 能 ： 返回变量 password 的值
	 * @return: String
	 */
	public String getPassword() {
		return password;
	}
	
	/**
	 * 方法名 ： setPassword
	 * 功 能 ： 设置变量 password 的值
	 */
	public void setPassword(String password) {
		this.password = password;
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
	 * 方法名 ： getDbName
	 * 功 能 ： 返回变量 dbName 的值
	 * @return: String
	 */
	public String getDbName() {
		return dbName;
	}
	
	/**
	 * 方法名 ： setDbName
	 * 功 能 ： 设置变量 dbName 的值
	 */
	public void setDbName(String dbName) {
		this.dbName = dbName;
	}
	
}