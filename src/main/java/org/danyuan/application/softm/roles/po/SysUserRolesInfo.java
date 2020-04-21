package org.danyuan.application.softm.roles.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * 文件名 ： SysUserRolesInfo.java
 * 包 名 ： tk.ainiyue.admin.userrole.po
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2016年6月3日 下午5:54:52
 * 版 本 ： V1.0
 */
@Entity
@IdClass(SysUserRolesPk.class)
@Table(name = "sys_user_roles_info")
public class SysUserRolesInfo extends BaseEntity implements Serializable {
	
	/**
	 *
	 */
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@Column(name = "user_id", columnDefinition = "varchar(36) COMMENT '用户id'")
	private String				userId;
	
	@Column(name = "checked", columnDefinition = "boolean COMMENT '选中'")
	private Boolean				checked;
	
	@Id
	@Column(name = "roles_id", columnDefinition = "varchar(36) COMMENT '角色id'")
	private String				rolesId;
	
	/**
	 * 方法名 ： getUserId
	 * 功 能 ： 返回变量 userId 的值
	 * @return: String
	 */
	public String getUserId() {
		return userId;
	}
	
	/**
	 * 方法名 ： setUserId
	 * 功 能 ： 设置变量 userId 的值
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	/**
	 * 方法名 ： getRolesId
	 * 功 能 ： 返回变量 rolesId 的值
	 * @return: String
	 */
	public String getRolesId() {
		return rolesId;
	}
	
	/**
	 * 方法名 ： setRolesId
	 * 功 能 ： 设置变量 rolesId 的值
	 */
	public void setRolesId(String rolesId) {
		this.rolesId = rolesId;
	}
	
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数：
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysUserRolesInfo() {
		super();
	}
	
	public SysUserRolesInfo(String userId, String rolesId) {
		super();
		this.userId = userId;
		this.rolesId = rolesId;
	}
	
	public Boolean getChecked() {
		return checked;
	}
	
	public void setChecked(Boolean checked) {
		this.checked = checked;
	}
	
}
