package org.danyuan.application.dbms.echarts.po;

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
 * The persistent class for the sys_plant_lable_conf database table.
 */
@Entity
@Table(name = "sys_plant_lable_conf")
@NamedQuery(name = "SysPlantLableConf.findAll", query = "SELECT s FROM SysPlantLableConf s")
public class SysPlantLableConf implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	private String				uuid;
	
	@Column(name = "bind_uuid")
	private String				bindUuid;
	
	@Column(name = "lable_order")
	private Integer				lableOrder;
	
	private String				name;
	
	private String				type;
	
	private Integer				more;

	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.CreationTimestamp
	private Date				createTime;					// create_time
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String				createUser;					// create_user
	
	@Column(name = "update_time", columnDefinition = " timestamp  default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.UpdateTimestamp
	private Date				updateTime;					// updata_time
	
	@Column(name = "update_user", columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String				updateUser;					// updata_user
	
	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer				deleteFlag;

	@Column(name = "discription", columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String				discription;

	@Column(name = "code", columnDefinition = "varchar(200) COMMENT '按钮类型'")
	private String				code;
	
	public SysPlantLableConf() {
	}
	
	public String getUuid() {
		return this.uuid;
	}
	
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	public String getBindUuid() {
		return this.bindUuid;
	}
	
	public void setBindUuid(String bindUuid) {
		this.bindUuid = bindUuid;
	}
	
	public Integer getLableOrder() {
		return this.lableOrder;
	}
	
	public void setLableOrder(Integer lableOrder) {
		this.lableOrder = lableOrder;
	}
	
	public String getName() {
		return this.name;
	}
	
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * 方法名 ： getCreateTime
	 * 功 能 ： 返回变量 createTime 的值
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

	/**
	 * 方法名 ： getDeleteFlag
	 * 功 能 ： 返回变量 deleteFlag 的值
	 * @return: String
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
	 * 方法名 ： getDiscription
	 * 功 能 ： 返回变量 discription 的值
	 * @return: String
	 */
	public String getDiscription() {
		return discription;
	}

	/**
	 * 方法名 ： setDiscription
	 * 功 能 ： 设置变量 discription 的值
	 */
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	
	/**
	 * 方法名 ： getCode
	 * 功 能 ： 返回变量 code 的值
	 * @return: String
	 */
	public String getCode() {
		return code;
	}
	
	/**
	 * 方法名 ： setCode
	 * 功 能 ： 设置变量 code 的值
	 */
	public void setCode(String code) {
		this.code = code;
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
	 * 方法名 ： getMore
	 * 功 能 ： 返回变量 more 的值
	 * @return: String
	 */
	public Integer getMore() {
		return more;
	}

	/**
	 * 方法名 ： setMore
	 * 功 能 ： 设置变量 more 的值
	 */
	public void setMore(Integer more) {
		this.more = more;
	}

}