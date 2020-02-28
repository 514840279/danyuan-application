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

/**
 * @文件名 SysUserProject.java
 * @包名 org.danyuan.application.resume.user.po
 * @描述 sys_user_project的实体类
 * @时间 2019年03月04日 11:09:42
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_user_project")
@NamedQuery(name = "SysUserProject.findAll", query = "SELECT s FROM SysUserProject s")
public class SysUserProject extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	// 项目简介
	@Column(name = "project_content")
	private String				projectContent;
	
	// 用户id
	@Column(name = "user_uuid")
	private String				userUuid;
	
	// 开始时间
	@Column(name = "start_date")
	private String				startDate;
	
	// 职务
	@Column(name = "position")
	private String				position;
	
	// 项目名
	@Column(name = "project_name")
	private String				projectName;
	
	
	// 软件环境
	@Column(name = "software_environment")
	private String	softwareEnvironment;
	
	// 硬件环境
	@Column(name = "hardware_environment")
	private String	hardwareEnvironment;
	
	// 开发工具
	@Column(name = "developer_kits")
	private String	developerKits;
	
	// 责任描述
	@Column(name = "responsibility_description")
	private String	responsibilityDescription;
	
	
	// 结束日期
	@Column(name = "end_date")
	private String				endDate;
	
	
	// 结束日期
	@Column(name = "unit")
	private String				unit;
	
	/**
	 * 构造方法：
	 * 描 述： 默认构造函数
	 * 参 数：
	 * 作 者 ： test
	 * @throws
	 */
	public SysUserProject() {
		super();
	}
	
	/**
	 * 方法名 ： getProjectContent
	 * 功 能 ： 返回变量 projectContent 的值
	 *
	 * @return: String
	 */
	public String getProjectContent() {
		return projectContent;
	}
	
	/**
	 * 方法名 ： setProjectContent
	 * 功 能 ： 设置变量 projectContent 的值
	 */
	public void setProjectContent(String projectContent) {
		this.projectContent = projectContent;
	}
	
	/**
	 * 方法名 ： getUserUuid
	 * 功 能 ： 返回变量 userUuid 的值
	 *
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
	 * 方法名 ： getStartDate
	 * 功 能 ： 返回变量 startDate 的值
	 *
	 * @return: String
	 */
	public String getStartDate() {
		return startDate;
	}
	
	/**
	 * 方法名 ： setStartDate
	 * 功 能 ： 设置变量 startDate 的值
	 */
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	
	/**
	 * 方法名 ： getPosition
	 * 功 能 ： 返回变量 position 的值
	 *
	 * @return: String
	 */
	public String getPosition() {
		return position;
	}
	
	/**
	 * 方法名 ： setPosition
	 * 功 能 ： 设置变量 position 的值
	 */
	public void setPosition(String position) {
		this.position = position;
	}
	
	/**
	 * 方法名 ： getProjectName
	 * 功 能 ： 返回变量 projectName 的值
	 *
	 * @return: String
	 */
	public String getProjectName() {
		return projectName;
	}
	
	/**
	 * 方法名 ： setProjectName
	 * 功 能 ： 设置变量 projectName 的值
	 */
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	
	/**
	 * 方法名 ： getEndDate
	 * 功 能 ： 返回变量 endDate 的值
	 *
	 * @return: String
	 */
	public String getEndDate() {
		return endDate;
	}
	
	/**
	 * 方法名 ： setEndDate
	 * 功 能 ： 设置变量 endDate 的值
	 */
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	

	/**
	 * @return the softwareEnvironment
	 */
	public String getSoftwareEnvironment() {
		return softwareEnvironment;
	}

	/**
	 * @param softwareEnvironment the softwareEnvironment to set
	 */
	public void setSoftwareEnvironment(String softwareEnvironment) {
		this.softwareEnvironment = softwareEnvironment;
	}

	/**
	 * @return the hardwareEnvironment
	 */
	public String getHardwareEnvironment() {
		return hardwareEnvironment;
	}

	/**
	 * @param hardwareEnvironment the hardwareEnvironment to set
	 */
	public void setHardwareEnvironment(String hardwareEnvironment) {
		this.hardwareEnvironment = hardwareEnvironment;
	}

	/**
	 * @return the developerKits
	 */
	public String getDeveloperKits() {
		return developerKits;
	}

	/**
	 * @param developerKits the developerKits to set
	 */
	public void setDeveloperKits(String developerKits) {
		this.developerKits = developerKits;
	}

	/**
	 * @return the responsibilityDescription
	 */
	public String getResponsibilityDescription() {
		return responsibilityDescription;
	}

	/**
	 * @param responsibilityDescription the responsibilityDescription to set
	 */
	public void setResponsibilityDescription(String responsibilityDescription) {
		this.responsibilityDescription = responsibilityDescription;
	}

	/**
	 * @return the unit
	 */
	public String getUnit() {
		return unit;
	}

	/**
	 * @param unit the unit to set
	 */
	public void setUnit(String unit) {
		this.unit = unit;
	}
	
	
	
}
