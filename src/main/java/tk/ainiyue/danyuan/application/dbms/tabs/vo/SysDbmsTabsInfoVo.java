package tk.ainiyue.danyuan.application.dbms.tabs.vo;

import tk.ainiyue.danyuan.application.common.base.Pagination;
import tk.ainiyue.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;

public class SysDbmsTabsInfoVo extends Pagination<SysDbmsTabsInfo> {
	
	private String	databaseUuid;
	private String	typeUuid;

	SysDbmsTabsInfo	old	= new SysDbmsTabsInfo();
	SysDbmsTabsInfo	now	= new SysDbmsTabsInfo();

	/**
	 * @return the databaseUuid
	 */
	public String getDatabaseUuid() {
		return databaseUuid;
	}

	/**
	 * @param databaseUuid
	 *            the databaseUuid to set
	 */
	public void setDatabaseUuid(String databaseUuid) {
		this.databaseUuid = databaseUuid;
	}

	/**
	 * @return the typeUuid
	 */
	public String getTypeUuid() {
		return typeUuid;
	}

	/**
	 * @param typeUuid
	 *            the typeUuid to set
	 */
	public void setTypeUuid(String typeUuid) {
		this.typeUuid = typeUuid;
	}

	public SysDbmsTabsInfo getOld() {
		return old;
	}

	public void setOld(SysDbmsTabsInfo old) {
		this.old = old;
	}

	public SysDbmsTabsInfo getNow() {
		return now;
	}

	public void setNow(SysDbmsTabsInfo now) {
		this.now = now;
	}

}
