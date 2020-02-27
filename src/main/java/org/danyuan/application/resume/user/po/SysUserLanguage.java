package org.danyuan.application.resume.user.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysUserLanguage.java
 * @包名 org.danyuan.application.resume.user.po
 * @描述 sys_user_language的实体类
 * @时间 2020年02月22日 11:06:05
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_user_language")
@NamedQuery(name = "SysUserLanguage.findAll", query = "SELECT s FROM SysUserLanguage s")
public class SysUserLanguage extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 
	@Column(name = "user_uuid", columnDefinition = " varchar(36) COMMENT ''")
	private  String 	userUuid;

	// 语言
	@Column(name = "language", columnDefinition = " varchar(20) COMMENT '语言'")
	private  String 	language;

	// 听力
	@Column(name = "hearing", columnDefinition = " varchar(20) COMMENT '听力'")
	private  String 	hearing;


	// 听力
	@Column(name = "read_write", columnDefinition = " varchar(20) COMMENT '读写'")
	private  String 	readWrite;

	
	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysUserLanguage() {
		super();
	}


	/**
	 * 方法名 ： getUserUuid
	 * 功 能 ： 返回变量 userUuid  的值
	 *
	 * @return: String 
	 */
	public  String  getUserUuid() {
		return userUuid;
	}

	/**
	 * 方法名 ： setUserUuid
	 * 功 能 ： 设置变量 userUuid  的值
	 */
	public void setUserUuid( String  userUuid) {
		this.userUuid = userUuid;
	}

	/**
	 * 方法名 ： getLanguage
	 * 功 能 ： 返回变量 language 语言 的值
	 *
	 * @return: String 
	 */
	public  String  getLanguage() {
		return language;
	}

	/**
	 * 方法名 ： setLanguage
	 * 功 能 ： 设置变量 language 语言 的值
	 */
	public void setLanguage( String  language) {
		this.language = language;
	}

	/**
	 * 方法名 ： getHearing
	 * 功 能 ： 返回变量 hearing 听力 的值
	 *
	 * @return: String 
	 */
	public  String  getHearing() {
		return hearing;
	}

	/**
	 * 方法名 ： setHearing
	 * 功 能 ： 设置变量 hearing 听力 的值
	 */
	public void setHearing( String  hearing) {
		this.hearing = hearing;
	}


}
