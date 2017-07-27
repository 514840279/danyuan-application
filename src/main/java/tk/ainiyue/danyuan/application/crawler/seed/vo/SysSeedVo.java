package tk.ainiyue.danyuan.application.crawler.seed.vo;

import java.util.ArrayList;
import java.util.List;

import tk.ainiyue.danyuan.application.crawler.seed.po.SysSeedInfo;

public class SysSeedVo {
	List<SysSeedInfo> list		 = new ArrayList<>();
	int				  pageNumber = 1;
	int				  pageSize	 = 10;
	String			  name;

	/**
	 * @return the list
	 */
	public List<SysSeedInfo> getList() {
		return list;
	}

	/**
	 * @param list
	 *            the list to set
	 */
	public void setList(List<SysSeedInfo> list) {
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
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	
	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	
}
