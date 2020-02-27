package org.danyuan.application.resume.user.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysUserSkill.java
 * @包名 org.danyuan.application.resume.user.po
 * @描述 sys_user_skill的实体类
 * @时间 2019年02月28日 17:42:26
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_user_skill")
@NamedQuery(name = "SysUserSkill.findAll", query = "SELECT s FROM SysUserSkill s")
public class SysUserSkill extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 
	@Column(name = "month")
	private  Integer 	month;

	// 
	@Column(name = "skill")
	private  String 	skill;

	// 熟练
	@Column(name = "proficiency")
	private  String 	proficiency;

	// 
	@Column(name = "user_uuid")
	private  String 	userUuid;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysUserSkill() {
		super();
	}


	/**
	 * 方法名 ： getMonth
	 * 功 能 ： 返回变量 month  的值
	 *
	 * @return: String 
	 */
	public  Integer  getMonth() {
		return month;
	}

	/**
	 * 方法名 ： setMonth
	 * 功 能 ： 设置变量 month  的值
	 */
	public void setMonth( Integer  month) {
		this.month = month;
	}

	/**
	 * 方法名 ： getSkill
	 * 功 能 ： 返回变量 skill  的值
	 *
	 * @return: String 
	 */
	public  String  getSkill() {
		return skill;
	}

	/**
	 * 方法名 ： setSkill
	 * 功 能 ： 设置变量 skill  的值
	 */
	public void setSkill( String  skill) {
		this.skill = skill;
	}

	/**
	 * 方法名 ： getProficiency
	 * 功 能 ： 返回变量 proficiency  的值
	 *
	 * @return: String 
	 */
	public  String  getProficiency() {
		return proficiency;
	}

	/**
	 * 方法名 ： setProficiency
	 * 功 能 ： 设置变量 proficiency  的值
	 */
	public void setProficiency( String  proficiency) {
		this.proficiency = proficiency;
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


}
