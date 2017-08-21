package tk.ainiyue.danyuan.application.crawler.config.vo;

import java.util.ArrayList;
import java.util.List;

import tk.ainiyue.danyuan.application.crawler.config.po.SysSeedResultRulerInfo;

public class SysSeedResultRulerVo {
	private String				 tableUuid;
	private String				 rulerUuid;

	List<SysSeedResultRulerInfo> list = new ArrayList<>();
	
	/**
	 * 方法名 ： getList
	 * 功 能 ： 返回变量 list 的值
	 *
	 * @return: List<SysDatabaseInfo>
	 */
	public List<SysSeedResultRulerInfo> getList() {
		return list;
	}
	
	/**
	 * 方法名 ： setList
	 * 功 能 ： 设置变量 list 的值
	 */
	public void setList(List<SysSeedResultRulerInfo> list) {
		this.list = list;
	}
	
	/**
	 * @return the tableUuid
	 */
	public String getTableUuid() {
		return tableUuid;
	}
	
	/**
	 * @param tableUuid
	 *            the tableUuid to set
	 */
	public void setTableUuid(String tableUuid) {
		this.tableUuid = tableUuid;
	}
	
	/**
	 * @return the rulerUuid
	 */
	public String getRulerUuid() {
		return rulerUuid;
	}
	
	/**
	 * @param rulerUuid
	 *            the rulerUuid to set
	 */
	public void setRulerUuid(String rulerUuid) {
		this.rulerUuid = rulerUuid;
	}
	
}
