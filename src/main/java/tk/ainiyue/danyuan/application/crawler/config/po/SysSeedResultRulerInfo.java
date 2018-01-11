package tk.ainiyue.danyuan.application.crawler.config.po;

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
import org.springframework.format.annotation.DateTimeFormat;

/**
 * The persistent class for the sys_seed_result_ruler_info database table.
 */
@Entity
@Table(name = "sys_seed_result_ruler_info")
@NamedQuery(name = "SysSeedResultRulerInfo.findAll", query = "SELECT s FROM SysSeedResultRulerInfo s")
public class SysSeedResultRulerInfo implements Serializable {

	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long serialVersionUID = -8550950330729844126L;
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "uuid", unique = true, nullable = false, columnDefinition = " varchar(36) COMMENT '主键'")
	private String			  uuid;

	@Column(name = "cols_name", columnDefinition = "varchar(30) COMMENT '表字段名'")
	private String			  colsName;

	@Column(name = "cols_uuid", columnDefinition = "varchar(36) COMMENT '表字段id'")
	private String			  colsUuid;

	@Column(name = "ruler_colum_name", columnDefinition = "varchar(30) COMMENT '规则字段名'")
	private String			  rulerColumName;

	@Column(name = "ruler_colum_uuid", columnDefinition = "varchar(36) COMMENT '规则字段id'")
	private String			  rulerColumUuid;

	@Column(name = "ruler_uuid", columnDefinition = "varchar(36) COMMENT '规则id'")
	private String			  rulerUuid;

	@Column(name = "table_uuid", columnDefinition = "varchar(36) COMMENT '表id'")
	private String			  tableUuid;

	@Column(name = "discription", columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String			  discription;							   // discription
	                                                                   // 描述

	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	@Temporal(TemporalType.TIMESTAMP)
	private Date			  createTime;							   // create_time
	                                                                   // 插入时间

	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String			  createUser;							   // create_user
	                                                                   // 插入人

	@Column(name = "update_time", insertable = false, columnDefinition = " timestamp  default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date			  updateTime;							   // updata_time
	                                                                   // 更新时间

	@Column(name = "update_user", insertable = false, columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String			  updateUser;							   // updata_user
	                                                                   // 更新人

	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer			  deleteFlag;							   // delete_flag
	                                                                   // 标记

	public SysSeedResultRulerInfo() {
	}

	public String getUuid() {
		return this.uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getColsName() {
		return this.colsName;
	}

	public void setColsName(String colsName) {
		this.colsName = colsName;
	}

	public String getColsUuid() {
		return this.colsUuid;
	}

	public void setColsUuid(String colsUuid) {
		this.colsUuid = colsUuid;
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

	public String getRulerColumName() {
		return this.rulerColumName;
	}

	public void setRulerColumName(String rulerColumName) {
		this.rulerColumName = rulerColumName;
	}

	public String getRulerColumUuid() {
		return this.rulerColumUuid;
	}

	public void setRulerColumUuid(String rulerColumUuid) {
		this.rulerColumUuid = rulerColumUuid;
	}

	public String getRulerUuid() {
		return this.rulerUuid;
	}

	public void setRulerUuid(String rulerUuid) {
		this.rulerUuid = rulerUuid;
	}

	public String getTableUuid() {
		return this.tableUuid;
	}

	public void setTableUuid(String tableUuid) {
		this.tableUuid = tableUuid;
	}

	/**
	 * 方法名 ： getUpdateTime
	 * 功 能 ： 返回变量 updateTime 的值
	 *
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
	 *
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

}