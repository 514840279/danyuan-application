package tk.ainiyue.danyuan.application.dbm.addr.po;

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
 * The persistent class for the sys_database_info database table.
 */
@Entity
@Table(name = "sys_database_info")
@NamedQuery(name = "SysDatabaseInfo.findAll", query = "SELECT s FROM SysDatabaseInfo s")
public class SysDatabaseInfo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GenericGenerator(name = "idGenerator", strategy = " uuid")
	@Column(unique = true, nullable = false, columnDefinition = " varchar(36) COMMENT '主键'")
	private String			  uuid;

	@Column(columnDefinition = " varchar(100) COMMENT 'ip地址'")
	private String			  address;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	private Date			  createTime;

	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String			  createUser;

	@Column(name = "database_name", columnDefinition = " varchar(50) COMMENT '数据库名称'")
	private String			  databaseName;

	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer			  deleteFlag;

	@Column(columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String			  discription;

	@Column(columnDefinition = "varchar(200) COMMENT '数据库驱动类'")
	private String			  driver;

	@Column(columnDefinition = "varchar(200) COMMENT '用户密码'")
	private String			  password;

	@Column(columnDefinition = "varchar(10) COMMENT '端口号'")
	private String			  port;

	@Column(columnDefinition = "varchar(200) COMMENT '数据库类型'")
	private String			  type;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "updata_time", insertable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '更新人员'")
	private Date			  updataTime;

	@Column(name = "updata_user", insertable = false, columnDefinition = " varchar(50) default 'system'  COMMENT '更新时间'")
	private String			  updataUser;

	@Column(columnDefinition = "varchar(200) COMMENT '用户名称'")
	private String			  username;

	public SysDatabaseInfo() {
	}

	public String getUuid() {
		return this.uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public Date getUpdataTime() {
		return this.updataTime;
	}

	public void setUpdataTime(Date updataTime) {
		this.updataTime = updataTime;
	}

	public String getUpdataUser() {
		return this.updataUser;
	}

	public void setUpdataUser(String updataUser) {
		this.updataUser = updataUser;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}