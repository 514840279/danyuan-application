package org.danyuan.application.dbms.tabs.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysDbmsUserIndexInfo.java
 * @包名 org.danyuan.application.dbms.tabs.po
 * @描述 sys_dbms_user_index_info的实体类
 * @时间 2020年04月25日 12:15:39
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_dbms_user_index_info")
@NamedQuery(name = "SysDbmsUserIndexInfo.findAll", query = "SELECT s FROM SysDbmsUserIndexInfo s")
public class SysDbmsUserIndexInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 
	@Column(name = "user_order",precision=10)
	private  Integer 	userOrder;

	// 
	@Column(name = "user_placeholder")
	private  String 	userPlaceholder;

	// 
	@Column(name = "multeity",precision=10)
	private  Integer 	multeity;

	// 
	@Column(name = "user_index")
	private  String 	userIndex;

	// 
	@Column(name = "user_desc")
	private  String 	userDesc;

	// 
	@Column(name = "chart",precision=10)
	private  Integer 	chart;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysDbmsUserIndexInfo() {
		super();
	}


	/**
	 * 方法名 ： getUserOrder
	 * 功 能 ： 返回变量 userOrder  的值
	 *
	 * @return: String 
	 */
	public  Integer  getUserOrder() {
		return userOrder;
	}

	/**
	 * 方法名 ： setUserOrder
	 * 功 能 ： 设置变量 userOrder  的值
	 */
	public void setUserOrder( Integer  userOrder) {
		this.userOrder = userOrder;
	}

	/**
	 * 方法名 ： getUserPlaceholder
	 * 功 能 ： 返回变量 userPlaceholder  的值
	 *
	 * @return: String 
	 */
	public  String  getUserPlaceholder() {
		return userPlaceholder;
	}

	/**
	 * 方法名 ： setUserPlaceholder
	 * 功 能 ： 设置变量 userPlaceholder  的值
	 */
	public void setUserPlaceholder( String  userPlaceholder) {
		this.userPlaceholder = userPlaceholder;
	}

	/**
	 * 方法名 ： getMulteity
	 * 功 能 ： 返回变量 multeity  的值
	 *
	 * @return: String 
	 */
	public  Integer  getMulteity() {
		return multeity;
	}

	/**
	 * 方法名 ： setMulteity
	 * 功 能 ： 设置变量 multeity  的值
	 */
	public void setMulteity( Integer  multeity) {
		this.multeity = multeity;
	}

	/**
	 * 方法名 ： getUserIndex
	 * 功 能 ： 返回变量 userIndex  的值
	 *
	 * @return: String 
	 */
	public  String  getUserIndex() {
		return userIndex;
	}

	/**
	 * 方法名 ： setUserIndex
	 * 功 能 ： 设置变量 userIndex  的值
	 */
	public void setUserIndex( String  userIndex) {
		this.userIndex = userIndex;
	}

	/**
	 * 方法名 ： getUserDesc
	 * 功 能 ： 返回变量 userDesc  的值
	 *
	 * @return: String 
	 */
	public  String  getUserDesc() {
		return userDesc;
	}

	/**
	 * 方法名 ： setUserDesc
	 * 功 能 ： 设置变量 userDesc  的值
	 */
	public void setUserDesc( String  userDesc) {
		this.userDesc = userDesc;
	}

	/**
	 * 方法名 ： getChart
	 * 功 能 ： 返回变量 chart  的值
	 *
	 * @return: String 
	 */
	public  Integer  getChart() {
		return chart;
	}

	/**
	 * 方法名 ： setChart
	 * 功 能 ： 设置变量 chart  的值
	 */
	public void setChart( Integer  chart) {
		this.chart = chart;
	}


}
