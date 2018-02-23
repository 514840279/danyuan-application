package tk.ainiyue.danyuan.application.dbm.table.vo;

import java.util.ArrayList;
import java.util.List;

import tk.ainiyue.danyuan.application.dbm.table.po.SysTableInfo;

public class SysTableVo {

	private String	   databaseUuid;
	private String	   typeUuid;
	
	SysTableInfo	   old	= new SysTableInfo();
	SysTableInfo	   now	= new SysTableInfo();
	List<SysTableInfo> list	= new ArrayList<>();
	
	/**
	 * 方法名 ： getList
	 * 功 能 ： 返回变量 list 的值
	 *
	 * @return: List<SysDatabaseInfo>
	 */
	public List<SysTableInfo> getList() {
		return list;
	}
	
	/**
	 * 方法名 ： setList
	 * 功 能 ： 设置变量 list 的值
	 */
	public void setList(List<SysTableInfo> list) {
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
	
	public SysTableInfo getOld() {
		return old;
	}
	
	public void setOld(SysTableInfo old) {
		this.old = old;
	}
	
	public SysTableInfo getNow() {
		return now;
	}
	
	public void setNow(SysTableInfo now) {
		this.now = now;
	}
	
}
