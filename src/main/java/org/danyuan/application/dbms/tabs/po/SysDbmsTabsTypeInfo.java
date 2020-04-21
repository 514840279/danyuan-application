package org.danyuan.application.dbms.tabs.po;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * The persistent class for the sys_table_type_info database table.
 */
@Entity
@Table(name = "sys_dbms_tabs_type_info")
@NamedQuery(name = "SysDbmsTabsTypeInfo.findAll", query = "SELECT s FROM SysDbmsTabsTypeInfo s")
public class SysDbmsTabsTypeInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Column(name = "type_name", columnDefinition = " varchar(36) COMMENT '类型名'")
	private String				typeName;
	
	@Column(name = "type_class", columnDefinition = " varchar(36) COMMENT '类型'")
	private String				typeClass;
	
	@Column(name = "type_icon", columnDefinition = " varchar(50) COMMENT '图标'")
	private String				typeIcon;
	
	@Column(name = "type_order", columnDefinition = " int COMMENT '类型排序'")
	private Integer				typeOrder;
	
	public SysDbmsTabsTypeInfo() {
	}
	
	public String getTypeName() {
		return this.typeName;
	}
	
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	
	public Integer getTypeOrder() {
		return this.typeOrder;
	}
	
	public void setTypeOrder(Integer typeOrder) {
		this.typeOrder = typeOrder;
	}
	
	/**
	 * @return the typeIcon
	 */
	public String getTypeIcon() {
		return typeIcon;
	}
	
	/**
	 * @param typeIcon
	 *            the typeIcon to set
	 */
	public void setTypeIcon(String typeIcon) {
		this.typeIcon = typeIcon;
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
	 * 方法名 ： getTypeClass
	 * 功 能 ： 返回变量 typeClass 的值
	 * @return: String
	 */
	public String getTypeClass() {
		return typeClass;
	}
	
	/**
	 * 方法名 ： setTypeClass
	 * 功 能 ： 设置变量 typeClass 的值
	 */
	public void setTypeClass(String typeClass) {
		this.typeClass = typeClass;
	}
	
}