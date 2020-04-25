package org.danyuan.application.softm.roles.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysRolesInfo.java
 * @包名 org.danyuan.application.softm.roles.po
 * @描述 sys_roles_info的实体类
 * @时间 2020年04月25日 16:38:09
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_roles_info")
@NamedQuery(name = "SysRolesInfo.findAll", query = "SELECT s FROM SysRolesInfo s")
public class SysRolesInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	// 角色名
	@Column(name = "role_name")
	private String				roleName;
	
	// 部门id
	@Column(name = "department_id")
	private String				departmentId;
	
	// 角色名称
	@Column(name = "checked", precision = 3)
	private Boolean				checked;
	
	/**
	 * 构造方法：
	 * 描 述： 默认构造函数
	 * 参 数：
	 * 作 者 ： test
	 * @throws
	 */
	public SysRolesInfo() {
		super();
	}
	
	/**
	 * 方法名 ： getRoleName
	 * 功 能 ： 返回变量 roleName 角色名 的值
	 * @return: String
	 */
	public String getRoleName() {
		return roleName;
	}
	
	/**
	 * 方法名 ： setRoleName
	 * 功 能 ： 设置变量 roleName 角色名 的值
	 */
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
	/**
	 * 方法名 ： getDepartmentId
	 * 功 能 ： 返回变量 departmentId 部门id 的值
	 * @return: String
	 */
	public String getDepartmentId() {
		return departmentId;
	}
	
	/**
	 * 方法名 ： setDepartmentId
	 * 功 能 ： 设置变量 departmentId 部门id 的值
	 */
	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}
	
	/**
	 * 方法名 ： getChecked
	 * 功 能 ： 返回变量 checked 角色名称 的值
	 * @return: String
	 */
	public Boolean getChecked() {
		return checked;
	}
	
	/**
	 * 方法名 ： setChecked
	 * 功 能 ： 设置变量 checked 角色名称 的值
	 */
	public void setChecked(Boolean checked) {
		this.checked = checked;
	}
	
}
