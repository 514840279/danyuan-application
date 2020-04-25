package org.danyuan.application.resume.user.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysUserEvaluate.java
 * @包名 org.danyuan.application.resume.user.po
 * @描述 sys_user_evaluate的实体类
 * @时间 2020年04月25日 16:38:11
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_user_evaluate")
@NamedQuery(name = "SysUserEvaluate.findAll", query = "SELECT s FROM SysUserEvaluate s")
public class SysUserEvaluate extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 类型
	@Column(name = "type")
	private  String 	type;

	// 评论内容
	@Column(name = "content")
	private  String 	content;

	// 用户id
	@Column(name = "user_uuid")
	private  String 	userUuid;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysUserEvaluate() {
		super();
	}


	/**
	 * 方法名 ： getType
	 * 功 能 ： 返回变量 type 类型 的值
	 *
	 * @return: String 
	 */
	public  String  getType() {
		return type;
	}

	/**
	 * 方法名 ： setType
	 * 功 能 ： 设置变量 type 类型 的值
	 */
	public void setType( String  type) {
		this.type = type;
	}

	/**
	 * 方法名 ： getContent
	 * 功 能 ： 返回变量 content 评论内容 的值
	 *
	 * @return: String 
	 */
	public  String  getContent() {
		return content;
	}

	/**
	 * 方法名 ： setContent
	 * 功 能 ： 设置变量 content 评论内容 的值
	 */
	public void setContent( String  content) {
		this.content = content;
	}

	/**
	 * 方法名 ： getUserUuid
	 * 功 能 ： 返回变量 userUuid 用户id 的值
	 *
	 * @return: String 
	 */
	public  String  getUserUuid() {
		return userUuid;
	}

	/**
	 * 方法名 ： setUserUuid
	 * 功 能 ： 设置变量 userUuid 用户id 的值
	 */
	public void setUserUuid( String  userUuid) {
		this.userUuid = userUuid;
	}


}
