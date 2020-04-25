package org.danyuan.application.resume.user.po;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.danyuan.application.common.base.BaseEntity;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * @文件名 SysUserEducation.java
 * @包名 org.danyuan.application.resume.user.po
 * @描述 sys_user_education的实体类
 * @时间 2020年04月25日 16:38:11
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_user_education")
@NamedQuery(name = "SysUserEducation.findAll", query = "SELECT s FROM SysUserEducation s")
public class SysUserEducation extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	//
	@Column(name = "user_uuid")
	private String				userUuid;
	
	//
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(style = "yyyy-MM-dd")
	@JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd")
	@Column(name = "graduation_time", nullable = false)
	private Date				graduationTime;
	
	//
	@Column(name = "unified_strategy")
	private String				unifiedStrategy;
	
	//
	@Column(name = "education")
	private String				education;
	
	//
	@Column(name = "length_of_schooling")
	private String				lengthOfSchooling;
	
	//
	@Column(name = "major")
	private String				major;
	
	//
	@Column(name = "graduation_school")
	private String				graduationSchool;
	
	/**
	 * 构造方法：
	 * 描 述： 默认构造函数
	 * 参 数：
	 * 作 者 ： test
	 * @throws
	 */
	public SysUserEducation() {
		super();
	}
	
	/**
	 * 方法名 ： getUserUuid
	 * 功 能 ： 返回变量 userUuid 的值
	 * @return: String
	 */
	public String getUserUuid() {
		return userUuid;
	}
	
	/**
	 * 方法名 ： setUserUuid
	 * 功 能 ： 设置变量 userUuid 的值
	 */
	public void setUserUuid(String userUuid) {
		this.userUuid = userUuid;
	}
	
	/**
	 * 方法名 ： getGraduationTime
	 * 功 能 ： 返回变量 graduationTime 的值
	 * @return: String
	 */
	public Date getGraduationTime() {
		return graduationTime;
	}
	
	/**
	 * 方法名 ： setGraduationTime
	 * 功 能 ： 设置变量 graduationTime 的值
	 */
	public void setGraduationTime(Date graduationTime) {
		this.graduationTime = graduationTime;
	}
	
	/**
	 * 方法名 ： getUnifiedStrategy
	 * 功 能 ： 返回变量 unifiedStrategy 的值
	 * @return: String
	 */
	public String getUnifiedStrategy() {
		return unifiedStrategy;
	}
	
	/**
	 * 方法名 ： setUnifiedStrategy
	 * 功 能 ： 设置变量 unifiedStrategy 的值
	 */
	public void setUnifiedStrategy(String unifiedStrategy) {
		this.unifiedStrategy = unifiedStrategy;
	}
	
	/**
	 * 方法名 ： getEducation
	 * 功 能 ： 返回变量 education 的值
	 * @return: String
	 */
	public String getEducation() {
		return education;
	}
	
	/**
	 * 方法名 ： setEducation
	 * 功 能 ： 设置变量 education 的值
	 */
	public void setEducation(String education) {
		this.education = education;
	}
	
	/**
	 * 方法名 ： getLengthOfSchooling
	 * 功 能 ： 返回变量 lengthOfSchooling 的值
	 * @return: String
	 */
	public String getLengthOfSchooling() {
		return lengthOfSchooling;
	}
	
	/**
	 * 方法名 ： setLengthOfSchooling
	 * 功 能 ： 设置变量 lengthOfSchooling 的值
	 */
	public void setLengthOfSchooling(String lengthOfSchooling) {
		this.lengthOfSchooling = lengthOfSchooling;
	}
	
	/**
	 * 方法名 ： getMajor
	 * 功 能 ： 返回变量 major 的值
	 * @return: String
	 */
	public String getMajor() {
		return major;
	}
	
	/**
	 * 方法名 ： setMajor
	 * 功 能 ： 设置变量 major 的值
	 */
	public void setMajor(String major) {
		this.major = major;
	}
	
	/**
	 * 方法名 ： getGraduationSchool
	 * 功 能 ： 返回变量 graduationSchool 的值
	 * @return: String
	 */
	public String getGraduationSchool() {
		return graduationSchool;
	}
	
	/**
	 * 方法名 ： setGraduationSchool
	 * 功 能 ： 设置变量 graduationSchool 的值
	 */
	public void setGraduationSchool(String graduationSchool) {
		this.graduationSchool = graduationSchool;
	}
	
}
