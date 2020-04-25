package org.danyuan.application.resume.user.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysUserModal.java
 * @包名 org.danyuan.application.resume.user.po
 * @描述 sys_user_modal的实体类
 * @时间 2020年04月25日 16:38:11
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_user_modal")
@NamedQuery(name = "SysUserModal.findAll", query = "SELECT s FROM SysUserModal s")
public class SysUserModal extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 模板id
	@Column(name = "modal_uuid")
	private  String 	modalUuid;

	// 用户id
	@Column(name = "user_uuid")
	private  String 	userUuid;

	// 用户
	@Column(name = "use",precision=10)
	private  Integer 	use;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysUserModal() {
		super();
	}


	/**
	 * 方法名 ： getModalUuid
	 * 功 能 ： 返回变量 modalUuid 模板id 的值
	 *
	 * @return: String 
	 */
	public  String  getModalUuid() {
		return modalUuid;
	}

	/**
	 * 方法名 ： setModalUuid
	 * 功 能 ： 设置变量 modalUuid 模板id 的值
	 */
	public void setModalUuid( String  modalUuid) {
		this.modalUuid = modalUuid;
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

	/**
	 * 方法名 ： getUse
	 * 功 能 ： 返回变量 use 用户 的值
	 *
	 * @return: String 
	 */
	public  Integer  getUse() {
		return use;
	}

	/**
	 * 方法名 ： setUse
	 * 功 能 ： 设置变量 use 用户 的值
	 */
	public void setUse( Integer  use) {
		this.use = use;
	}


}
