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
 * The persistent class for the sys_dic_key_list database table.
 * sss
 */
@Entity
@Table(name = "sys_dic_key_list")
@NamedQuery(name = "SysDicKeyList.findAll", query = "SELECT s FROM SysDicKeyList s")
public class SysDicKeyList implements Serializable {
	private static final long	serialVersionUID	= 1L;

	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "UUID", columnDefinition = "varchar(36) COMMENT '主键'")
	private String				uuid;

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

	private String				keyword;

	@Column(name = "name_uuid")
	private String				nameUuid;
	@Column(name = "key_value")
	private String				keyValue;

	@Column(name = "key_order")
	private Integer				keyOrder;

	public SysDicKeyList() {
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

	/**
	 * 方法名 ： getKeyword <br />
	 * 功 能 ： 返回变量 keyword 的值 <br />
	 * @return: String
	 */
	public String getKeyword() {
		return keyword;
	}

	/**
	 * 方法名 ： setKeyword <br />
	 * 功 能 ： 设置变量 keyword 的值
	 */
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getNameUuid() {
		return this.nameUuid;
	}

	public void setNameUuid(String nameUuid) {
		this.nameUuid = nameUuid;
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
	 * 方法名 ： getKeyValue <br />
	 * 功 能 ： 返回变量 keyValue 的值 <br />
	 * @return: String
	 */
	public String getKeyValue() {
		return keyValue;
	}

	/**
	 * 方法名 ： setKeyValue <br />
	 * 功 能 ： 设置变量 keyValue 的值
	 */
	public void setKeyValue(String keyValue) {
		this.keyValue = keyValue;
	}

	/**
	 * 方法名 ： getKeyOrder <br />
	 * 功 能 ： 返回变量 keyOrder 的值 <br />
	 * @return: Integer
	 */
	public Integer getKeyOrder() {
		return keyOrder;
	}

	/**
	 * 方法名 ： setKeyOrder <br />
	 * 功 能 ： 设置变量 keyOrder 的值
	 */
	public void setKeyOrder(Integer keyOrder) {
		this.keyOrder = keyOrder;
	}

}