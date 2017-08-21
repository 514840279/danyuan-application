package tk.ainiyue.danyuan.application.crawler.config.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * The persistent class for the sys_seed_result_ruler_info database table.
 */
@Entity
@Table(name = "sys_seed_result_ruler_info")
@NamedQuery(name = "SysSeedResultRulerInfo.findAll", query = "SELECT s FROM SysSeedResultRulerInfo s")
public class SysSeedResultRulerInfo {

	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "uuid", unique = true, nullable = false, columnDefinition = " varchar(36) COMMENT '主键'")
	private String	uuid;

	@Column(name = "cols_name", columnDefinition = "varchar(30) COMMENT '表字段名'")
	private String	colsName;

	@Column(name = "cols_uuid", columnDefinition = "varchar(36) COMMENT '表字段id'")
	private String	colsUuid;

	@Column(name = "ruler_colum_name", columnDefinition = "varchar(30) COMMENT '规则字段名'")
	private String	rulerColumName;

	@Column(name = "ruler_colum_uuid", columnDefinition = "varchar(36) COMMENT '规则字段id'")
	private String	rulerColumUuid;

	@Column(name = "ruler_uuid", columnDefinition = "varchar(36) COMMENT '规则id'")
	private String	rulerUuid;

	@Column(name = "table_uuid", columnDefinition = "varchar(36) COMMENT '表id'")
	private String	tableUuid;

	@Column(name = "discription", columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String	discription;   // discription 描述

	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date	createTime;	   // create_time 插入时间

	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String	createUser;	   // create_user 插入人

	@Column(name = "updata_time", insertable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '更新人员'")
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date	updataTime;	   // updata_time 更新时间

	@Column(name = "updata_user", insertable = false, columnDefinition = " varchar(50) default 'system'  COMMENT '更新时间'")
	private String	updataUser;	   // updata_user 更新人

	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer	deleteFlag;	   // delete_flag 标记

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

}