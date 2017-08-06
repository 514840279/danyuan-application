package tk.ainiyue.danyuan.application.dbm.addr.vo;

import java.util.ArrayList;
import java.util.List;

import tk.ainiyue.danyuan.application.dbm.addr.po.SysDatabaseInfo;

public class SysDatabaseVo {
	List<SysDatabaseInfo> list = new ArrayList<>();
	
	/**
	 * 方法名 ： getList
	 * 功 能 ： 返回变量 list 的值
	 * 
	 * @return: List<SysDatabaseInfo>
	 */
	public List<SysDatabaseInfo> getList() {
		return list;
	}
	
	/**
	 * 方法名 ： setList
	 * 功 能 ： 设置变量 list 的值
	 */
	public void setList(List<SysDatabaseInfo> list) {
		this.list = list;
	}
	
}
