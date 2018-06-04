package tk.ainiyue.danyuan.application.softm.roles.po;

import java.io.Serializable;

public class SysUserRolesPk implements Serializable {
	/**
	 *
	 */
	private static final long	serialVersionUID	= 1L;
	
	private String				userId;
	
	private String				rolesId;
	
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
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((rolesId == null) ? 0 : rolesId.hashCode());
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
		return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		SysUserRolesPk other = (SysUserRolesPk) obj;
		if (rolesId == null) {
			if (other.rolesId != null)
				return false;
		} else if (!rolesId.equals(other.rolesId))
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}
	
}
