package org.danyuan.application.softm.roles.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysUserRolesInfo.java
 * @包名 org.danyuan.application.softm.roles.po
 * @描述 sys_user_roles_info的实体类
 * @时间 2020年04月25日 16:38:12
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_user_roles_info")
@NamedQuery(name = "SysUserRolesInfo.findAll", query = "SELECT s FROM SysUserRolesInfo s")
public class SysUserRolesInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	// 选中
	@Column(name = "checked")
	private Boolean				checked;
	
	// 用户id
	@Column(name = "user_id")
	private String				userId;
	
	// 角色id
	@Column(name = "roles_id")
	private String				rolesId;
	
	/**
	 * 构造方法：
	 * 描 述： 默认构造函数
	 * 参 数：
	 * 作 者 ： test
	 * @throws
	 */
	public SysUserRolesInfo() {
		super();
	}
	
	public SysUserRolesInfo(String userId, String rolesId) {
		this.userId = userId;
		this.rolesId = rolesId;
	}
	
	/**
	 * 方法名 ： getChecked
	 * 功 能 ： 返回变量 checked 选中 的值
	 * @return: String
	 */
	public Boolean getChecked() {
		return checked;
	}
	
	/**
	 * 方法名 ： setChecked
	 * 功 能 ： 设置变量 checked 选中 的值
	 */
	public void setChecked(Boolean checked) {
		this.checked = checked;
	}
	
	/**
	 * 方法名 ： getUserId
	 * 功 能 ： 返回变量 userId 用户id 的值
	 * @return: String
	 */
	public String getUserId() {
		return userId;
	}
	
	/**
	 * 方法名 ： setUserId
	 * 功 能 ： 设置变量 userId 用户id 的值
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	/**
	 * 方法名 ： getRolesId
	 * 功 能 ： 返回变量 rolesId 角色id 的值
	 * @return: String
	 */
	public String getRolesId() {
		return rolesId;
	}
	
	/**
	 * 方法名 ： setRolesId
	 * 功 能 ： 设置变量 rolesId 角色id 的值
	 */
	public void setRolesId(String rolesId) {
		this.rolesId = rolesId;
	}
	
}
