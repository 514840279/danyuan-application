package org.danyuan.application.softm.dic.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysDicKeyList.java
 * @包名 org.danyuan.application.softm.dic.po
 * @描述 sys_dic_key_list的实体类
 * @时间 2020年04月25日 16:38:20
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_dic_key_list")
@NamedQuery(name = "SysDicKeyList.findAll", query = "SELECT s FROM SysDicKeyList s")
public class SysDicKeyList extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 排序
	@Column(name = "key_order",precision=10)
	private  Integer 	keyOrder;

	// 关键字
	@Column(name = "keyword")
	private  String 	keyword;

	// 列表value
	@Column(name = "key_value")
	private  String 	keyValue;

	// 外键
	@Column(name = "name_uuid")
	private  String 	nameUuid;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysDicKeyList() {
		super();
	}


	/**
	 * 方法名 ： getKeyOrder
	 * 功 能 ： 返回变量 keyOrder 排序 的值
	 *
	 * @return: String 
	 */
	public  Integer  getKeyOrder() {
		return keyOrder;
	}

	/**
	 * 方法名 ： setKeyOrder
	 * 功 能 ： 设置变量 keyOrder 排序 的值
	 */
	public void setKeyOrder( Integer  keyOrder) {
		this.keyOrder = keyOrder;
	}

	/**
	 * 方法名 ： getKeyword
	 * 功 能 ： 返回变量 keyword 关键字 的值
	 *
	 * @return: String 
	 */
	public  String  getKeyword() {
		return keyword;
	}

	/**
	 * 方法名 ： setKeyword
	 * 功 能 ： 设置变量 keyword 关键字 的值
	 */
	public void setKeyword( String  keyword) {
		this.keyword = keyword;
	}

	/**
	 * 方法名 ： getKeyValue
	 * 功 能 ： 返回变量 keyValue 列表value 的值
	 *
	 * @return: String 
	 */
	public  String  getKeyValue() {
		return keyValue;
	}

	/**
	 * 方法名 ： setKeyValue
	 * 功 能 ： 设置变量 keyValue 列表value 的值
	 */
	public void setKeyValue( String  keyValue) {
		this.keyValue = keyValue;
	}

	/**
	 * 方法名 ： getNameUuid
	 * 功 能 ： 返回变量 nameUuid 外键 的值
	 *
	 * @return: String 
	 */
	public  String  getNameUuid() {
		return nameUuid;
	}

	/**
	 * 方法名 ： setNameUuid
	 * 功 能 ： 设置变量 nameUuid 外键 的值
	 */
	public void setNameUuid( String  nameUuid) {
		this.nameUuid = nameUuid;
	}


}
