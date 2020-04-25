package org.danyuan.application.dbms.tabs.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysDbmsTabsTypeInfo.java
 * @包名 org.danyuan.application.dbms.tabs.po
 * @描述 sys_dbms_tabs_type_info的实体类
 * @时间 2020年04月25日 12:15:39
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_dbms_tabs_type_info")
@NamedQuery(name = "SysDbmsTabsTypeInfo.findAll", query = "SELECT s FROM SysDbmsTabsTypeInfo s")
public class SysDbmsTabsTypeInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 类型排序
	@Column(name = "type_order",precision=10)
	private  Integer 	typeOrder;

	// 类型
	@Column(name = "type_class")
	private  String 	typeClass;

	// 图标
	@Column(name = "type_icon")
	private  String 	typeIcon;

	// 类型名
	@Column(name = "type_name")
	private  String 	typeName;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysDbmsTabsTypeInfo() {
		super();
	}


	/**
	 * 方法名 ： getTypeOrder
	 * 功 能 ： 返回变量 typeOrder 类型排序 的值
	 *
	 * @return: String 
	 */
	public  Integer  getTypeOrder() {
		return typeOrder;
	}

	/**
	 * 方法名 ： setTypeOrder
	 * 功 能 ： 设置变量 typeOrder 类型排序 的值
	 */
	public void setTypeOrder( Integer  typeOrder) {
		this.typeOrder = typeOrder;
	}

	/**
	 * 方法名 ： getTypeClass
	 * 功 能 ： 返回变量 typeClass 类型 的值
	 *
	 * @return: String 
	 */
	public  String  getTypeClass() {
		return typeClass;
	}

	/**
	 * 方法名 ： setTypeClass
	 * 功 能 ： 设置变量 typeClass 类型 的值
	 */
	public void setTypeClass( String  typeClass) {
		this.typeClass = typeClass;
	}

	/**
	 * 方法名 ： getTypeIcon
	 * 功 能 ： 返回变量 typeIcon 图标 的值
	 *
	 * @return: String 
	 */
	public  String  getTypeIcon() {
		return typeIcon;
	}

	/**
	 * 方法名 ： setTypeIcon
	 * 功 能 ： 设置变量 typeIcon 图标 的值
	 */
	public void setTypeIcon( String  typeIcon) {
		this.typeIcon = typeIcon;
	}

	/**
	 * 方法名 ： getTypeName
	 * 功 能 ： 返回变量 typeName 类型名 的值
	 *
	 * @return: String 
	 */
	public  String  getTypeName() {
		return typeName;
	}

	/**
	 * 方法名 ： setTypeName
	 * 功 能 ： 设置变量 typeName 类型名 的值
	 */
	public void setTypeName( String  typeName) {
		this.typeName = typeName;
	}


}
