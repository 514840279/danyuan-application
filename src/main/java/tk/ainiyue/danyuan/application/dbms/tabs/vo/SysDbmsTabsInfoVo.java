package tk.ainiyue.danyuan.application.dbms.tabs.vo;

import java.util.ArrayList;
import java.util.List;

import tk.ainiyue.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;

public class SysDbmsTabsInfoVo {

	private String	   databaseUuid;
	private String	   typeUuid;
	
	SysDbmsTabsInfo	   old	= new SysDbmsTabsInfo();
	SysDbmsTabsInfo	   now	= new SysDbmsTabsInfo();
	List<SysDbmsTabsInfo> list	= new ArrayList<>();
	
	/**
	 * 方法名 ： getList
	 * 功 能 ： 返回变量 list 的值
	 *
	 * @return: List<SysDatabaseInfo>
	 */
	public List<SysDbmsTabsInfo> getList() {
		return list;
	}
	
	/**
	 * 方法名 ： setList
	 * 功 能 ： 设置变量 list 的值
	 */
	public void setList(List<SysDbmsTabsInfo> list) {
		this.list = list;
	}
	
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
