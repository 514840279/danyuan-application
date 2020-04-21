package org.danyuan.application.dbms.echarts.po;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * The persistent class for the sys_plant_chart_dimension_data database table.
 */
@Entity
@Table(name = "sys_dbms_chart_dimension_data")
@NamedQuery(name = "SysDbmsChartDimensionData.findAll", query = "SELECT s FROM SysDbmsChartDimensionData s")
public class SysDbmsChartDimensionData extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Column(name = "cols_uuid")
	private String				colsUuid;
	
	@Column(name = "cols_desc")
	private String				colsDesc;
	
	private String				conditions;
	
	@Column(name = "dime_uuid")
	private String				dimeUuid;
	
	private String				symbol;
	
	public SysDbmsChartDimensionData() {
	}
	
	public String getUuid() {
		return this.uuid;
	}
	
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	public String getColsUuid() {
		return this.colsUuid;
	}
	
	public void setColsUuid(String colsUuid) {
		this.colsUuid = colsUuid;
	}
	
	/**
	 * 方法名 ： getConditions
	 * 功 能 ： 返回变量 conditions 的值
	 * @return: String
	 */
	public String getConditions() {
		return conditions;
	}
	
	/**
	 * 方法名 ： setConditions
	 * 功 能 ： 设置变量 conditions 的值
	 */
	public void setConditions(String conditions) {
		this.conditions = conditions;
	}
	
	/**
	 * 方法名 ： getDeleteFlag
	 * 功 能 ： 返回变量 deleteFlag 的值
	 * @return: Integer
	 */
	public Integer getDeleteFlag() {
		return deleteFlag;
	}
	
	public String getCreateUser() {
		return this.createUser;
	}
	
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	
	public String getDimeUuid() {
		return this.dimeUuid;
	}
	
	public void setDimeUuid(String dimeUuid) {
		this.dimeUuid = dimeUuid;
	}
	
	public String getDiscription() {
		return this.discription;
	}
	
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	
	public String getSymbol() {
		return this.symbol;
	}
	
	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}
	
	/**
	 * 方法名 ： getCreateTime
	 * 功 能 ： 返回变量 createTime 的值
	 * @return: Date
	 */
	public Date getCreateTime() {
		return createTime;
	}
	
	/**
	 * 方法名 ： setCreateTime
	 * 功 能 ： 设置变量 createTime 的值
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	/**
	 * 方法名 ： getUpdateTime
	 * 功 能 ： 返回变量 updateTime 的值
	 * @return: Date
	 */
	public Date getUpdateTime() {
		return updateTime;
	}
	
	/**
	 * 方法名 ： setUpdateTime
	 * 功 能 ： 设置变量 updateTime 的值
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	/**
	 * 方法名 ： setDeleteFlag
	 * 功 能 ： 设置变量 deleteFlag 的值
	 */
	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	
	public String getUpdateUser() {
		return this.updateUser;
	}
	
	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}
	
	/**
	 * 方法名 ： getColsDesc
	 * 功 能 ： 返回变量 colsDesc 的值
	 * @return: String
	 */
	public String getColsDesc() {
		return colsDesc;
	}
	
	/**
	 * 方法名 ： setColsDesc
	 * 功 能 ： 设置变量 colsDesc 的值
	 */
	public void setColsDesc(String colsDesc) {
		this.colsDesc = colsDesc;
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
		return "SysPlantChartDimensionData [uuid=" + uuid + ", colsUuid=" + colsUuid + ", colsDesc=" + colsDesc + ", conditions=" + conditions + ", createTime=" + createTime + ", createUser=" + createUser + ", updateTime=" + updateTime + ", updateUser=" + updateUser + ", deleteFlag=" + deleteFlag + ", discription=" + discription + ", dimeUuid=" + dimeUuid + ", symbol=" + symbol + "]";
	}
	
}