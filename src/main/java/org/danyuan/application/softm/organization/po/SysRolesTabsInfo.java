package org.danyuan.application.softm.organization.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysRolesTabsInfo.java
 * @包名 org.danyuan.application.softm.organization.po
 * @描述 sys_roles_tabs_info的实体类
 * @时间 2019年12月23日 15:17:58
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_roles_tabs_info")
@NamedQuery(name = "SysRolesTabsInfo.findAll", query = "SELECT s FROM SysRolesTabsInfo s")
public class SysRolesTabsInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	// 表id
	@Column(name = "tabs_id", columnDefinition = " COMMENT '表id'")
	private String				tabsId;
	
	// 角色id
	@Column(name = "role_id", columnDefinition = " COMMENT '角色id'")
	private String				roleId;
	
	/**
	 * @方法名 getTabsId
	 * @功能 返回变量 tabsId 的值
	 * @return String
	 */
	public String getTabsId() {
		return tabsId;
	}
	
	/**
	 * @方法名 setTabsId
	 * @功能 设置变量 tabsId 的值
	 */
	public void setTabsId(String tabsId) {
		this.tabsId = tabsId;
	}
	
	/**
	 * @方法名 getRoleId
	 * @功能 返回变量 roleId 的值
	 * @return String
	 */
	public String getRoleId() {
		return roleId;
	}
	
	/**
	 * @方法名 setRoleId
	 * @功能 设置变量 roleId 的值
	 */
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

}
