package org.danyuan.application.dbms.tabs.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * The persistent class for the sys_dic_user_index_code database table.
 */
@Entity
@Table(name = "sys_dbms_user_index_info")
@NamedQuery(name = "SysDbmsUserIndexInfo.findAll", query = "SELECT s FROM SysDbmsUserIndexInfo s")
public class SysDbmsUserIndexInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Column(name = "user_desc")
	private String				userDesc;
	
	@Column(name = "user_index")
	private String				userIndex;
	
	@Column(name = "user_placeholder")
	private String				userPlaceholder;
	
	@Column(name = "user_order")
	private Integer				userOrder;
	
	@Column(name = "multeity")
	private Integer				multeity;
	
	@Column(name = "chart")
	private Integer				chart;
	
	public SysDbmsUserIndexInfo() {
	}
	
	/**
	 * 方法名 ： getUserDesc
	 * 功 能 ： 返回变量 userDesc 的值
	 * @return: String
	 */
	public String getUserDesc() {
		return userDesc;
	}
	
	/**
	 * 方法名 ： setUserDesc
	 * 功 能 ： 设置变量 userDesc 的值
	 */
	public void setUserDesc(String userDesc) {
		this.userDesc = userDesc;
	}
	
	public String getUserIndex() {
		return this.userIndex;
	}
	
	public void setUserIndex(String userIndex) {
		this.userIndex = userIndex;
	}
	
	public Integer getUserOrder() {
		return this.userOrder;
	}
	
	public void setUserOrder(Integer userOrder) {
		this.userOrder = userOrder;
	}
	
	public Integer getMulteity() {
		return multeity;
	}
	
	public void setMulteity(Integer multeity) {
		this.multeity = multeity;
	}
	
	public String getUserPlaceholder() {
		return userPlaceholder;
	}
	
	public void setUserPlaceholder(String userPlaceholder) {
		this.userPlaceholder = userPlaceholder;
	}
	
	public Integer getChart() {
		return chart;
	}
	
	public void setChart(Integer chart) {
		this.chart = chart;
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
		return "SysDicUserIndexCode [uuid=" + uuid + ", userDesc=" + userDesc + ", userIndex=" + userIndex + ", userPlaceholder=" + userPlaceholder + ", userOrder=" + userOrder + ", multeity=" + multeity + ", chart=" + chart + ", discription=" + discription + ", createTime=" + createTime + ", createUser=" + createUser + ", updateTime=" + updateTime + ", updateUser=" + updateUser + ", deleteFlag=" + deleteFlag + "]";
	}
	
}