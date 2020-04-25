package org.danyuan.application.softm.dic.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysDicName.java
 * @包名 org.danyuan.application.softm.dic.po
 * @描述 sys_dic_name的实体类
 * @时间 2020年04月25日 16:38:21
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_dic_name")
@NamedQuery(name = "SysDicName.findAll", query = "SELECT s FROM SysDicName s")
public class SysDicName extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 按钮类型
	@Column(name = "button_type")
	private  String 	buttonType;

	// 调用代码
	@Column(name = "code")
	private  String 	code;

	// 显示名称
	@Column(name = "name")
	private  String 	name;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysDicName() {
		super();
	}


	/**
	 * 方法名 ： getButtonType
	 * 功 能 ： 返回变量 buttonType 按钮类型 的值
	 *
	 * @return: String 
	 */
	public  String  getButtonType() {
		return buttonType;
	}

	/**
	 * 方法名 ： setButtonType
	 * 功 能 ： 设置变量 buttonType 按钮类型 的值
	 */
	public void setButtonType( String  buttonType) {
		this.buttonType = buttonType;
	}

	/**
	 * 方法名 ： getCode
	 * 功 能 ： 返回变量 code 调用代码 的值
	 *
	 * @return: String 
	 */
	public  String  getCode() {
		return code;
	}

	/**
	 * 方法名 ： setCode
	 * 功 能 ： 设置变量 code 调用代码 的值
	 */
	public void setCode( String  code) {
		this.code = code;
	}

	/**
	 * 方法名 ： getName
	 * 功 能 ： 返回变量 name 显示名称 的值
	 *
	 * @return: String 
	 */
	public  String  getName() {
		return name;
	}

	/**
	 * 方法名 ： setName
	 * 功 能 ： 设置变量 name 显示名称 的值
	 */
	public void setName( String  name) {
		this.name = name;
	}


}
