package org.danyuan.application.softm.dic.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * The persistent class for the sys_dic_name database table.
 */
@Entity
@Table(name = "sys_dic_name")
@NamedQuery(name = "SysDicName.findAll", query = "SELECT s FROM SysDicName s")
public class SysDicName extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	private String				code;
	
	private String				name;
	
	@Column(name = "button_type", columnDefinition = " varchar(20) default 0 COMMENT '按钮类型'")
	private String				buttonType;
	
	public SysDicName() {
	}
	
	public String getCode() {
		return this.code;
	}
	
	public void setCode(String code) {
		this.code = code;
	}
	
	public String getName() {
		return this.name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	/**
	 * 方法名 ： getButtonType <br />
	 * 功 能 ： 返回变量 buttonType 的值 <br />
	 * @return: String
	 */
	public String getButtonType() {
		return buttonType;
	}
	
	/**
	 * 方法名 ： setButtonType <br />
	 * 功 能 ： 设置变量 buttonType 的值
	 */
	public void setButtonType(String buttonType) {
		this.buttonType = buttonType;
	}
	
}