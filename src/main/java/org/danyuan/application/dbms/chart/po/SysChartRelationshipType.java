package org.danyuan.application.dbms.chart.po;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 文件名 ： SysChartRelationshipType.java
 * 包 名 ： com.shumeng.application.chart.po
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月3日 下午2:00:28
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_chart_relationship_type")
@NamedQuery(name = "SysChartRelationshipType.findAll", query = "SELECT s FROM SysChartRelationshipType s")
public class SysChartRelationshipType implements Serializable {
	
	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long	serialVersionUID	= -2687970840866249407L;
	
	@Id
	@Column(name = "UUID", columnDefinition = "varchar(50) COMMENT '主键'")
	private String				uuid;
	
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default sysdate COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.CreationTimestamp
	private Date				createTime;									// create_time
	// 插入时间
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String				createUser;									// create_user
	// 插入人
	
	@Column(name = "update_time", columnDefinition = " timestamp  default sysdate  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.UpdateTimestamp
	private Date				updateTime;									// updata_time
	// 更新时间
	
	@Column(name = "update_user", columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String				updateUser;									// updata_user
	// 更新人
	
	@Column(name = "delete_flag", columnDefinition = " Integer default 0 COMMENT '停用标记'")
	private Integer				deleteFlag;									// delete_flag
	// 标记
	
	@Column(name = "relationship_name", columnDefinition = " varchar(50)  COMMENT '关系名称'")
	private String				relationshipName;
	
	@Column(name = "relationship_desc", columnDefinition = " varchar(50)  COMMENT '中文含义'")
	private String				relationshipDesc;
	
	public SysChartRelationshipType() {
		super();
	}
	
	/**
	 * 方法名 ： getUuid
	 * 功 能 ： 返回变量 uuid 的值
	 *
	 * @return: String
	 */
	public String getUuid() {
		return uuid;
	}
	
	/**
	 * 方法名 ： setUuid
	 * 功 能 ： 设置变量 uuid 的值
	 */
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	/**
	 * 方法名 ： getCreateTime
	 * 功 能 ： 返回变量 createTime 的值
	 *
	 * @return: Date
	 */
	public Date getCreateTime() {
		return createTime;
	}
	
	/**
	 * 方法名 ： setCreateTime
	 * 功 能 ： 设置变量 createTime 的值
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	/**
	 * 方法名 ： getCreateUser
	 * 功 能 ： 返回变量 createUser 的值
	 *
	 * @return: String
	 */
	public String getCreateUser() {
		return createUser;
	}
	
	/**
	 * 方法名 ： setCreateUser
	 * 功 能 ： 设置变量 createUser 的值
	 */
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
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
	
	/**
	 * 方法名 ： getDeleteFlag
	 * 功 能 ： 返回变量 deleteFlag 的值
	 *
	 * @return: Integer
	 */
	public Integer getDeleteFlag() {
		return deleteFlag;
	}
	
	/**
	 * 方法名 ： setDeleteFlag
	 * 功 能 ： 设置变量 deleteFlag 的值
	 */
	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	
	/**
	 * 方法名 ： getRelationshipName
	 * 功 能 ： 返回变量 relationshipName 的值
	 *
	 * @return: String
	 */
	public String getRelationshipName() {
		return relationshipName;
	}
	
	/**
	 * 方法名 ： setRelationshipName
	 * 功 能 ： 设置变量 relationshipName 的值
	 */
	public void setRelationshipName(String relationshipName) {
		this.relationshipName = relationshipName;
	}
	
	/**
	 * 方法名 ： getRelationshipDesc
	 * 功 能 ： 返回变量 relationshipDesc 的值
	 *
	 * @return: String
	 */
	public String getRelationshipDesc() {
		return relationshipDesc;
	}
	
	/**
	 * 方法名 ： setRelationshipDesc
	 * 功 能 ： 设置变量 relationshipDesc 的值
	 */
	public void setRelationshipDesc(String relationshipDesc) {
		this.relationshipDesc = relationshipDesc;
	}
	
}
