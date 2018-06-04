package tk.ainiyue.danyuan.application.softm.organization.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * The primary key class for the sys_roles_jurisdiction_info database table.
 * 
 */
@Embeddable
public class SysRolesJurisdictionInfoPK implements Serializable {
	// default serial version id, required for serializable classes.
	private static final long	serialVersionUID	= 1L;
	
	@Column(name = "menu_id")
	private String				menuId;
	
	@Column(name = "role_id")
	private String				roleId;
	
	public SysRolesJurisdictionInfoPK() {
	}
	
	public SysRolesJurisdictionInfoPK(String menuId, String roleId) {
		super();
		this.menuId = menuId;
		this.roleId = roleId;
	}
	
	public String getMenuId() {
		return this.menuId;
	}
	
	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}
	
	public String getRoleId() {
		return this.roleId;
	}
	
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	
	@Override
	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof SysRolesJurisdictionInfoPK)) {
			return false;
		}
		SysRolesJurisdictionInfoPK castOther = (SysRolesJurisdictionInfoPK) other;
		return this.menuId.equals(castOther.menuId) && this.roleId.equals(castOther.roleId);
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.menuId.hashCode();
		hash = hash * prime + this.roleId.hashCode();
		
		return hash;
	}
	
	@Override
	public String toString() {
		return "SysRolesJurisdictionInfoPK [menuId=" + menuId + ", roleId=" + roleId + "]";
	}
	
}
