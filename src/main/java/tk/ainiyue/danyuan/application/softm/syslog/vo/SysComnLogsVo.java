package tk.ainiyue.danyuan.application.softm.syslog.vo;

import tk.ainiyue.danyuan.application.common.base.Pagination;
import tk.ainiyue.danyuan.application.softm.syslog.po.SysComnLogs;

/**
 * 文件名 ： SysComnLogsVo.java
 * 包 名 ： com.shumeng.application.softm.syslog.vo
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月23日 下午4:32:32
 * 版 本 ： V1.0
 */
public class SysComnLogsVo extends Pagination<SysComnLogs> {
	
	String	strartCreateTime;
	String	endCreateTime;

	/**
	 * 方法名 ： getStrartCreateTime <br />
	 * 功 能 ： 返回变量 strartCreateTime 的值 <br />
	 * @return: String
	 */
	public String getStrartCreateTime() {
		return strartCreateTime;
	}

	/**
	 * 方法名 ： setStrartCreateTime <br />
	 * 功 能 ： 设置变量 strartCreateTime 的值
	 */
	public void setStrartCreateTime(String strartCreateTime) {
		this.strartCreateTime = strartCreateTime;
	}

	/**
	 * 方法名 ： getEndCreateTime <br />
	 * 功 能 ： 返回变量 endCreateTime 的值 <br />
	 * @return: String
	 */
	public String getEndCreateTime() {
		return endCreateTime;
	}

	/**
	 * 方法名 ： setEndCreateTime <br />
	 * 功 能 ： 设置变量 endCreateTime 的值
	 */
	public void setEndCreateTime(String endCreateTime) {
		this.endCreateTime = endCreateTime;
	}

	/**
	 * 方法名 ： toString
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see java.lang.Object#toString()
	 * 作 者 ： Administrator
	 */
	
	@Override
	public String toString() {
		return "SysComnLogsVo [pageNumber=" + pageNumber + ", pageSize=" + pageSize + ", uuid=" + uuid + ", searchText=" + searchText + ", username=" + username + ", info=" + info + "]";
	}
	
}
