package org.danyuan.application.softm.dic.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * The persistent class for the sys_dic_key_list database table.
 * sss
 */
@Entity
@Table(name = "sys_dic_key_list")
@NamedQuery(name = "SysDicKeyList.findAll", query = "SELECT s FROM SysDicKeyList s")
public class SysDicKeyList extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	private String				keyword;
	
	@Column(name = "name_uuid")
	private String				nameUuid;
	@Column(name = "key_value")
	private String				keyValue;
	
	@Column(name = "key_order")
	private Integer				keyOrder;
	
	public SysDicKeyList() {
	}
	
	/**
	 * 方法名 ： getKeyword <br />
	 * 功 能 ： 返回变量 keyword 的值 <br />
	 * @return: String
	 */
	public String getKeyword() {
		return keyword;
	}
	
	/**
	 * 方法名 ： setKeyword <br />
	 * 功 能 ： 设置变量 keyword 的值
	 */
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	public String getNameUuid() {
		return this.nameUuid;
	}
	
	public void setNameUuid(String nameUuid) {
		this.nameUuid = nameUuid;
	}
	
	/**
	 * 方法名 ： getKeyValue <br />
	 * 功 能 ： 返回变量 keyValue 的值 <br />
	 * @return: String
	 */
	public String getKeyValue() {
		return keyValue;
	}
	
	/**
	 * 方法名 ： setKeyValue <br />
	 * 功 能 ： 设置变量 keyValue 的值
	 */
	public void setKeyValue(String keyValue) {
		this.keyValue = keyValue;
	}
	
	/**
	 * 方法名 ： getKeyOrder <br />
	 * 功 能 ： 返回变量 keyOrder 的值 <br />
	 * @return: Integer
	 */
	public Integer getKeyOrder() {
		return keyOrder;
	}
	
	/**
	 * 方法名 ： setKeyOrder <br />
	 * 功 能 ： 设置变量 keyOrder 的值
	 */
	public void setKeyOrder(Integer keyOrder) {
		this.keyOrder = keyOrder;
	}
	
}