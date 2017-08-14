package tk.ainiyue.danyuan.application.dbm.table.vo;

import java.util.ArrayList;
import java.util.List;

import tk.ainiyue.danyuan.application.dbm.table.po.SysTableInfo;

public class SysTableVo {
	List<SysTableInfo> list = new ArrayList<>();

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

}
