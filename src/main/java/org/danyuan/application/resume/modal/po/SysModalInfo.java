package org.danyuan.application.resume.modal.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysModalInfo.java
 * @包名 org.danyuan.application.resume.modal.po
 * @描述 sys_modal_info的实体类
 * @时间 2019年02月28日 17:42:26
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_modal_info")
@NamedQuery(name = "SysModalInfo.findAll", query = "SELECT s FROM SysModalInfo s")
public class SysModalInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 
	@Column(name = "file_paht")
	private  String 	filePaht;

	// 
	@Column(name = "major")
	private  String 	major;

	// 
	@Column(name = "from_user")
	private  String 	fromUser;

	// 姓名
	@Column(name = "name")
	private  String 	name;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysModalInfo() {
		super();
	}


	/**
	 * 方法名 ： getFilePaht
	 * 功 能 ： 返回变量 filePaht  的值
	 *
	 * @return: String 
	 */
	public  String  getFilePaht() {
		return filePaht;
	}

	/**
	 * 方法名 ： setFilePaht
	 * 功 能 ： 设置变量 filePaht  的值
	 */
	public void setFilePaht( String  filePaht) {
		this.filePaht = filePaht;
	}

	/**
	 * 方法名 ： getMajor
	 * 功 能 ： 返回变量 major  的值
	 *
	 * @return: String 
	 */
	public  String  getMajor() {
		return major;
	}

	/**
	 * 方法名 ： setMajor
	 * 功 能 ： 设置变量 major  的值
	 */
	public void setMajor( String  major) {
		this.major = major;
	}

	/**
	 * 方法名 ： getFromUser
	 * 功 能 ： 返回变量 fromUser  的值
	 *
	 * @return: String 
	 */
	public  String  getFromUser() {
		return fromUser;
	}

	/**
	 * 方法名 ： setFromUser
	 * 功 能 ： 设置变量 fromUser  的值
	 */
	public void setFromUser( String  fromUser) {
		this.fromUser = fromUser;
	}

	/**
	 * 方法名 ： getName
	 * 功 能 ： 返回变量 name 姓名 的值
	 *
	 * @return: String 
	 */
	public  String  getName() {
		return name;
	}

	/**
	 * 方法名 ： setName
	 * 功 能 ： 设置变量 name 姓名 的值
	 */
	public void setName( String  name) {
		this.name = name;
	}


}
