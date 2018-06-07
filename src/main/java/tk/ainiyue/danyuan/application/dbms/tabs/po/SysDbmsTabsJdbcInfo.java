package tk.ainiyue.danyuan.application.dbms.tabs.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * The persistent class for the sys_database_info database table.
 */
@Entity
@Table(name = "sys_dbms_tabs_jdbc_info")
@NamedQuery(name = "SysDbmsTabsJdbcInfo.findAll", query = "SELECT s FROM SysDbmsTabsJdbcInfo s")
public class SysDbmsTabsJdbcInfo {
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = " uuid")
	@Column(unique = true, nullable = false, columnDefinition = " varchar(36) COMMENT '主键'")
	private String	uuid;

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

	@Column(name = "db_type", columnDefinition = "varchar(10) COMMENT '端口号'")
	private String	dbType;

	@Column(columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String	discription;
	
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.CreationTimestamp
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date	createTime;		// create_time
	// 插入时间
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String	createUser;		// create_user
	// 插入人
	
	@Column(name = "update_time", columnDefinition = " timestamp  default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.UpdateTimestamp
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date	updateTime;		// updata_time
	// 更新时间
	
	@Column(name = "update_user", columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String	updateUser;		// updata_user
	// 更新人
	
	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer	deleteFlag;
	
	public SysDbmsTabsJdbcInfo() {
	}
	
	public String getUuid() {
		return this.uuid;
	}
	
	public void setUuid(String uuid) {
		this.uuid = uuid;
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
	
	public String getDatabaseName() {
		return this.databaseName;
	}
	
	public void setDatabaseName(String databaseName) {
		this.databaseName = databaseName;
	}
	
	public Integer getDeleteFlag() {
		return this.deleteFlag;
	}
	
	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	
	public String getDiscription() {
		return this.discription;
	}
	
	public void setDiscription(String discription) {
		this.discription = discription;
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