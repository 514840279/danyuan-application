package org.danyuan.application.softm.organization.vo;

import java.util.ArrayList;
import java.util.List;

import org.danyuan.application.softm.organization.po.SysRolesJurisdictionInfo;

public class SysRolesJurisdictionVo {
	
	List<SysRolesJurisdictionInfo> sysRolesJurisdictionInfolist = new ArrayList<>();
	
	public List<SysRolesJurisdictionInfo> getSysRolesJurisdictionInfolist() {
		return sysRolesJurisdictionInfolist;
	}
	
	public void setSysRolesJurisdictionInfolist(List<SysRolesJurisdictionInfo> sysRolesJurisdictionInfolist) {
		this.sysRolesJurisdictionInfolist = sysRolesJurisdictionInfolist;
	}
	
}
