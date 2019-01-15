package org.danyuan.application.dbms.echarts.po;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the sys_plant_lable_dic database table.
 */
@Entity
@Table(name = "sys_plant_lable_dic")
@NamedQuery(name = "SysPlantLableDic.findAll", query = "SELECT s FROM SysPlantLableDic s")
public class SysPlantLableDic implements Serializable {
	private static final long	serialVersionUID	= 1L;

	@Id
	@Column(name = "ID")
	private String				uuid;

	private String				code;

	@Column(name = "create_time")
	private Timestamp			createTime;

	@Column(name = "create_user")
	private String				createUser;

	@Column(name = "delete_flag")
	private Integer				deleteFlag;

	@Lob
	private String				description;

	@Column(name = "key_order")
	private Integer				keyOrder;

	@Column(name = "parent_id")
	private String				parentId;

	@Column(name = "update_time")
	private Timestamp			updateTime;

	@Column(name = "update_user")
	private String				updateUser;

	private String				word;
	@Column(name = "type_uuid")
	private String				typeUuid;
	
	public SysPlantLableDic() {
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

	public Timestamp getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	public String getCreateUser() {
		return this.createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	/**
	 * 方法名 ： getDeleteFlag
	 * 功 能 ： 返回变量 deleteFlag 的值
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
	 * 方法名 ： getKeyOrder
	 * 功 能 ： 返回变量 keyOrder 的值
	 * @return: Integer
	 */
	public Integer getKeyOrder() {
		return keyOrder;
	}

	/**
	 * 方法名 ： setKeyOrder
	 * 功 能 ： 设置变量 keyOrder 的值
	 */
	public void setKeyOrder(Integer keyOrder) {
		this.keyOrder = keyOrder;
	}

	/**
	 * 方法名 ： getParentId
	 * 功 能 ： 返回变量 parentId 的值
	 * @return: String
	 */
	public String getParentId() {
		return parentId;
	}
	
	/**
	 * 方法名 ： setParentId
	 * 功 能 ： 设置变量 parentId 的值
	 */
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	
	public Timestamp getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Timestamp updateTime) {
		this.updateTime = updateTime;
	}

	public String getUpdateUser() {
		return this.updateUser;
	}

	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

	public String getWord() {
		return this.word;
	}

	public void setWord(String word) {
		this.word = word;
	}

	/**
	 * 方法名 ： getTypeUuid
	 * 功 能 ： 返回变量 typeUuid 的值
	 * @return: String
	 */
	public String getTypeUuid() {
		return typeUuid;
	}

	/**
	 * 方法名 ： setTypeUuid
	 * 功 能 ： 设置变量 typeUuid 的值
	 */
	public void setTypeUuid(String typeUuid) {
		this.typeUuid = typeUuid;
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
		return "SysPlantLableDic [uuid=" + uuid + ", code=" + code + ", createTime=" + createTime + ", createUser=" + createUser + ", deleteFlag=" + deleteFlag + ", description=" + description + ", keyOrder=" + keyOrder + ", parentId=" + parentId + ", updateTime=" + updateTime + ", updateUser=" + updateUser + ", word=" + word + ", typeUuid=" + typeUuid + "]";
	}
	
}