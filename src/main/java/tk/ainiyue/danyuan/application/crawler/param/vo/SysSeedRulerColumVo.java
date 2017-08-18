package tk.ainiyue.danyuan.application.crawler.param.vo;

import java.util.ArrayList;
import java.util.List;

import tk.ainiyue.danyuan.application.crawler.param.po.SysSeedRulerColumInfo;

public class SysSeedRulerColumVo {
	List<SysSeedRulerColumInfo>	list	   = new ArrayList<>();
	int							pageNumber = 1;
	int							pageSize   = 10;
	String						uuid;

	/**
	 * @return the list
	 */
	public List<SysSeedRulerColumInfo> getList() {
		return list;
	}

	/**
	 * @param list
	 *            the list to set
	 */
	public void setList(List<SysSeedRulerColumInfo> list) {
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

}
