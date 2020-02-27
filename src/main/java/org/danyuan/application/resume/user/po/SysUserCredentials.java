package org.danyuan.application.resume.user.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysUserCredentials.java
 * @包名 org.danyuan.application.resume.user.po
 * @描述 sys_user_credentials的实体类
 * @时间 2020年02月22日 11:05:59
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_user_credentials")
@NamedQuery(name = "SysUserCredentials.findAll", query = "SELECT s FROM SysUserCredentials s")
public class SysUserCredentials extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 证书
	@Column(name = "credentials", columnDefinition = " varchar(20) COMMENT '证书'")
	private  String 	credentials;

	// 
	@Column(name = "user_uuid", columnDefinition = " varchar(36) COMMENT '用户id'")
	private  String 	userUuid;

	// 获证时间
	@Column(name = "gdate", columnDefinition = " varchar(20) COMMENT '获证时间'")
	private  String 	gdate;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysUserCredentials() {
		super();
	}


	/**
	 * 方法名 ： getCredentials
	 * 功 能 ： 返回变量 credentials 证书 的值
	 *
	 * @return: String 
	 */
	public  String  getCredentials() {
		return credentials;
	}

	/**
	 * 方法名 ： setCredentials
	 * 功 能 ： 设置变量 credentials 证书 的值
	 */
	public void setCredentials( String  credentials) {
		this.credentials = credentials;
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
	 * 方法名 ： getGdate
	 * 功 能 ： 返回变量 gdate 获证时间 的值
	 *
	 * @return: String 
	 */
	public  String  getGdate() {
		return gdate;
	}

	/**
	 * 方法名 ： setGdate
	 * 功 能 ： 设置变量 gdate 获证时间 的值
	 */
	public void setGdate( String  gdate) {
		this.gdate = gdate;
	}


}
