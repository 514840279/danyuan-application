package tk.ainiyue.danyuan.application.dbm.column.vo;

import java.util.ArrayList;
import java.util.List;

import tk.ainiyue.danyuan.application.dbm.column.po.SysColumnInfo;

public class SysColumnVo {
	List<SysColumnInfo>	list	   = new ArrayList<>();
	int					pageNumber = 1;
	int					pageSize   = 10;
	String				uuid;
	String				searchText;
	
	/**
	 * 方法名 ： getList
	 * 功 能 ： 返回变量 list 的值
	 *
	 * @return: List<SysDatabaseInfo>
	 */
	public List<SysColumnInfo> getList() {
		return list;
	}
	
	/**
	 * 方法名 ： setList
	 * 功 能 ： 设置变量 list 的值
	 */
	public void setList(List<SysColumnInfo> list) {
		this.list = list;
	}
	
	/**
	 * @return the pageNumber
	 */
	public int getPageNumber() {
		return pageNumber;
	}
	
	/**
	 * @param pageNumber
	 *            the pageNumber to set
	 */
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	
	/**
	 * @return the pageSize
	 */
	public int getPageSize() {
		return pageSize;
	}
	
	/**
	 * @param pageSize
	 *            the pageSize to set
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	/**
	 * @return the uuid
	 */
	public String getUuid() {
		return uuid;
	}
	
	/**
	 * @param uuid
	 *            the uuid to set
	 */
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	/**
	 * @return the searchText
	 */
	public String getSearchText() {
		return searchText;
	}
	
	/**
	 * @param searchText
	 *            the searchText to set
	 */
	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}
	
}
