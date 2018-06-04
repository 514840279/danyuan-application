package tk.ainiyue.danyuan.application.softm.dic.po;

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
 * The persistent class for the sys_dic_name database table.
 */
@Entity
@Table(name = "sys_dic_name")
@NamedQuery(name = "SysDicName.findAll", query = "SELECT s FROM SysDicName s")
public class SysDicName implements Serializable {
	private static final long	serialVersionUID	= 1L;

	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "UUID", columnDefinition = "varchar(36) COMMENT '主键'")
	private String				uuid;

	private String				code;

	@Column(name = "discription", columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String				discription;				// discription
	// 描述

	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP  COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.CreationTimestamp
	private Date				createTime;					// create_time
	// 插入时间

	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String				createUser;					// create_user
	// 插入人

	@Column(name = "update_time", columnDefinition = " timestamp default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.UpdateTimestamp
	private Date				updateTime;					// updata_time
	// 更新时间

	@Column(name = "update_user", columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String				updateUser;					// updata_user
	// 更新人

	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer				deleteFlag;

	private String				name;

	@Column(name = "button_type", columnDefinition = " varchar(20) default 0 COMMENT '按钮类型'")
	private String				buttonType;

	public SysDicName() {
	}

	public String getUuid() {
		return this.uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
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

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
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
	 * 方法名 ： getButtonType <br />
	 * 功 能 ： 返回变量 buttonType 的值 <br />
	 * @return: String
	 */
	public String getButtonType() {
		return buttonType;
	}

	/**
	 * 方法名 ： setButtonType <br />
	 * 功 能 ： 设置变量 buttonType 的值
	 */
	public void setButtonType(String buttonType) {
		this.buttonType = buttonType;
	}

}