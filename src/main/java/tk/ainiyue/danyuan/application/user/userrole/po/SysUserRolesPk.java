package tk.ainiyue.danyuan.application.user.userrole.po;

import java.io.Serializable;

public class SysUserRolesPk implements Serializable {
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	
	private String			  userId;
	
	private String			  rolesId;
	
	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getRolesId() {
		return rolesId;
	}
	
	public void setRolesId(String rolesId) {
		this.rolesId = rolesId;
	}
	
}
