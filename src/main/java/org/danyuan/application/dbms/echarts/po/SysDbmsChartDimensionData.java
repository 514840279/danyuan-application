package org.danyuan.application.dbms.echarts.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysDbmsChartDimensionData.java
 * @包名 org.danyuan.application.dbms.echarts.po
 * @描述 sys_dbms_chart_dimension_data的实体类
 * @时间 2020年04月25日 12:15:43
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_dbms_chart_dimension_data")
@NamedQuery(name = "SysDbmsChartDimensionData.findAll", query = "SELECT s FROM SysDbmsChartDimensionData s")
public class SysDbmsChartDimensionData extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 字段含义
	@Column(name = "cols_desc")
	private  String 	colsDesc;

	// 符号
	@Column(name = "symbol")
	private  String 	symbol;

	// 字段id
	@Column(name = "cols_uuid")
	private  String 	colsUuid;

	// 图表id
	@Column(name = "dime_uuid")
	private  String 	dimeUuid;

	// 条件
	@Column(name = "conditions")
	private  String 	conditions;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysDbmsChartDimensionData() {
		super();
	}


	/**
	 * 方法名 ： getColsDesc
	 * 功 能 ： 返回变量 colsDesc 字段含义 的值
	 *
	 * @return: String 
	 */
	public  String  getColsDesc() {
		return colsDesc;
	}

	/**
	 * 方法名 ： setColsDesc
	 * 功 能 ： 设置变量 colsDesc 字段含义 的值
	 */
	public void setColsDesc( String  colsDesc) {
		this.colsDesc = colsDesc;
	}

	/**
	 * 方法名 ： getSymbol
	 * 功 能 ： 返回变量 symbol 符号 的值
	 *
	 * @return: String 
	 */
	public  String  getSymbol() {
		return symbol;
	}

	/**
	 * 方法名 ： setSymbol
	 * 功 能 ： 设置变量 symbol 符号 的值
	 */
	public void setSymbol( String  symbol) {
		this.symbol = symbol;
	}

	/**
	 * 方法名 ： getColsUuid
	 * 功 能 ： 返回变量 colsUuid 字段id 的值
	 *
	 * @return: String 
	 */
	public  String  getColsUuid() {
		return colsUuid;
	}

	/**
	 * 方法名 ： setColsUuid
	 * 功 能 ： 设置变量 colsUuid 字段id 的值
	 */
	public void setColsUuid( String  colsUuid) {
		this.colsUuid = colsUuid;
	}

	/**
	 * 方法名 ： getDimeUuid
	 * 功 能 ： 返回变量 dimeUuid 图表id 的值
	 *
	 * @return: String 
	 */
	public  String  getDimeUuid() {
		return dimeUuid;
	}

	/**
	 * 方法名 ： setDimeUuid
	 * 功 能 ： 设置变量 dimeUuid 图表id 的值
	 */
	public void setDimeUuid( String  dimeUuid) {
		this.dimeUuid = dimeUuid;
	}

	/**
	 * 方法名 ： getConditions
	 * 功 能 ： 返回变量 conditions 条件 的值
	 *
	 * @return: String 
	 */
	public  String  getConditions() {
		return conditions;
	}

	/**
	 * 方法名 ： setConditions
	 * 功 能 ： 设置变量 conditions 条件 的值
	 */
	public void setConditions( String  conditions) {
		this.conditions = conditions;
	}


}
