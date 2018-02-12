package tk.ainiyue.danyuan.application.crm.jurisdiction.vo;

import java.util.ArrayList;
import java.util.List;

import tk.ainiyue.danyuan.application.crm.jurisdiction.po.SysRolesJurisdictionInfo;

public class SysRolesJurisdictionVo {

	List<SysRolesJurisdictionInfo> sysRolesJurisdictionInfolist = new ArrayList<>();

	public List<SysRolesJurisdictionInfo> getSysRolesJurisdictionInfolist() {
		return sysRolesJurisdictionInfolist;
	}

	public void setSysRolesJurisdictionInfolist(List<SysRolesJurisdictionInfo> sysRolesJurisdictionInfolist) {
		this.sysRolesJurisdictionInfolist = sysRolesJurisdictionInfolist;
	}

}
