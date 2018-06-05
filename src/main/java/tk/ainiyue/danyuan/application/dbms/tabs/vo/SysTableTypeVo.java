package tk.ainiyue.danyuan.application.dbms.tabs.vo;

import java.util.ArrayList;
import java.util.List;

import tk.ainiyue.danyuan.application.dbms.tabs.po.SysTableTypeInfo;

public class SysTableTypeVo {
	public int					  pageNumber;
	public int					  pageSize;
	public SysTableTypeInfo		  sysTableTypeInfo = new SysTableTypeInfo();
	public List<SysTableTypeInfo> list			   = new ArrayList<>();

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public SysTableTypeInfo getSysTableTypeInfo() {
		return sysTableTypeInfo;
	}

	public void setSysTableTypeInfo(SysTableTypeInfo sysTableTypeInfo) {
		this.sysTableTypeInfo = sysTableTypeInfo;
	}

	public List<SysTableTypeInfo> getList() {
		return list;
	}

	public void setList(List<SysTableTypeInfo> list) {
		this.list = list;
	}

}
