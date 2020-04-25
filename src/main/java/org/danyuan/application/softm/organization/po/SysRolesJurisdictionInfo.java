package org.danyuan.application.softm.organization.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysRolesJurisdictionInfo.java
 * @包名 org.danyuan.application.softm.organization.po
 * @描述 sys_roles_jurisdiction_info的实体类
 * @时间 2020年04月25日 16:38:09
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_roles_jurisdiction_info")
@NamedQuery(name = "SysRolesJurisdictionInfo.findAll", query = "SELECT s FROM SysRolesJurisdictionInfo s")
public class SysRolesJurisdictionInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	// 资源功能描述
	@Column(name = "checked")
	private Boolean				checked;
	
	// 角色id
	@Column(name = "role_id")
	private String				roleId;
	
	// 菜单id
	@Column(name = "menu_id")
	private String				menuId;
	
	/**
	 * 构造方法：
	 * 描 述： 默认构造函数
	 * 参 数：
	 * 作 者 ： test
	 * @throws
	 */
	public SysRolesJurisdictionInfo() {
		super();
	}
	
	public SysRolesJurisdictionInfo(String menuId, String roleUuid) {
		this.menuId = menuId;
		this.roleId = roleUuid;
	}
	
	/**
	 * 方法名 ： getChecked
	 * 功 能 ： 返回变量 checked 资源功能描述 的值
	 * @return: String
	 */
	public Boolean getChecked() {
		return checked;
	}
	
	/**
	 * 方法名 ： setChecked
	 * 功 能 ： 设置变量 checked 资源功能描述 的值
	 */
	public void setChecked(Boolean checked) {
		this.checked = checked;
	}
	
	/**
	 * 方法名 ： getRoleId
	 * 功 能 ： 返回变量 roleId 角色id 的值
	 * @return: String
	 */
	public String getRoleId() {
		return roleId;
	}
	
	/**
	 * 方法名 ： setRoleId
	 * 功 能 ： 设置变量 roleId 角色id 的值
	 */
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	
	/**
	 * 方法名 ： getMenuId
	 * 功 能 ： 返回变量 menuId 菜单id 的值
	 * @return: String
	 */
	public String getMenuId() {
		return menuId;
	}
	
	/**
	 * 方法名 ： setMenuId
	 * 功 能 ： 设置变量 menuId 菜单id 的值
	 */
	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}
	
}
