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
 * @文件名 SysUserProject.java
 * @包名 org.danyuan.application.resume.user.po
 * @描述 sys_user_project的实体类
 * @时间 2020年04月25日 16:38:12
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_user_project")
@NamedQuery(name = "SysUserProject.findAll", query = "SELECT s FROM SysUserProject s")
public class SysUserProject extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	// 硬件环境
	@Column(name = "hardware_environment")
	private String				hardwareEnvironment;
	
	// 用户id
	@Column(name = "user_uuid")
	private String				userUuid;
	
	// 项目内容
	@Column(name = "project_content")
	private String				projectContent;
	
	// 开发工具
	@Column(name = "developer_kits")
	private String				developerKits;
	
	// 项目名称
	@Column(name = "project_name")
	private String				projectName;
	
	// 职位
	@Column(name = "position")
	private String				position;
	
	// 开始时间
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(style = "yyyy-MM-dd")
	@JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd")
	@Column(name = "start_date", nullable = false)
	private Date				startDate;
	
	// 软件环境
	@Column(name = "software_environment")
	private String				softwareEnvironment;
	
	// 单位
	@Column(name = "unit")
	private String				unit;
	
	// 结束时间
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(style = "yyyy-MM-dd")
	@JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd")
	@Column(name = "end_date", nullable = false)
	private Date				endDate;
	
	// 职务描述
	@Column(name = "responsibility_description")
	private String				responsibilityDescription;
	
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
	 * 方法名 ： getHardwareEnvironment
	 * 功 能 ： 返回变量 hardwareEnvironment 硬件环境 的值
	 * @return: String
	 */
	public String getHardwareEnvironment() {
		return hardwareEnvironment;
	}
	
	/**
	 * 方法名 ： setHardwareEnvironment
	 * 功 能 ： 设置变量 hardwareEnvironment 硬件环境 的值
	 */
	public void setHardwareEnvironment(String hardwareEnvironment) {
		this.hardwareEnvironment = hardwareEnvironment;
	}
	
	/**
	 * 方法名 ： getUserUuid
	 * 功 能 ： 返回变量 userUuid 用户id 的值
	 * @return: String
	 */
	public String getUserUuid() {
		return userUuid;
	}
	
	/**
	 * 方法名 ： setUserUuid
	 * 功 能 ： 设置变量 userUuid 用户id 的值
	 */
	public void setUserUuid(String userUuid) {
		this.userUuid = userUuid;
	}
	
	/**
	 * 方法名 ： getProjectContent
	 * 功 能 ： 返回变量 projectContent 项目内容 的值
	 * @return: String
	 */
	public String getProjectContent() {
		return projectContent;
	}
	
	/**
	 * 方法名 ： setProjectContent
	 * 功 能 ： 设置变量 projectContent 项目内容 的值
	 */
	public void setProjectContent(String projectContent) {
		this.projectContent = projectContent;
	}
	
	/**
	 * 方法名 ： getDeveloperKits
	 * 功 能 ： 返回变量 developerKits 开发工具 的值
	 * @return: String
	 */
	public String getDeveloperKits() {
		return developerKits;
	}
	
	/**
	 * 方法名 ： setDeveloperKits
	 * 功 能 ： 设置变量 developerKits 开发工具 的值
	 */
	public void setDeveloperKits(String developerKits) {
		this.developerKits = developerKits;
	}
	
	/**
	 * 方法名 ： getProjectName
	 * 功 能 ： 返回变量 projectName 项目名称 的值
	 * @return: String
	 */
	public String getProjectName() {
		return projectName;
	}
	
	/**
	 * 方法名 ： setProjectName
	 * 功 能 ： 设置变量 projectName 项目名称 的值
	 */
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	
	/**
	 * 方法名 ： getPosition
	 * 功 能 ： 返回变量 position 职位 的值
	 * @return: String
	 */
	public String getPosition() {
		return position;
	}
	
	/**
	 * 方法名 ： setPosition
	 * 功 能 ： 设置变量 position 职位 的值
	 */
	public void setPosition(String position) {
		this.position = position;
	}
	
	/**
	 * 方法名 ： getStartDate
	 * 功 能 ： 返回变量 startDate 开始时间 的值
	 * @return: String
	 */
	public Date getStartDate() {
		return startDate;
	}
	
	/**
	 * 方法名 ： setStartDate
	 * 功 能 ： 设置变量 startDate 开始时间 的值
	 */
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	
	/**
	 * 方法名 ： getSoftwareEnvironment
	 * 功 能 ： 返回变量 softwareEnvironment 软件环境 的值
	 * @return: String
	 */
	public String getSoftwareEnvironment() {
		return softwareEnvironment;
	}
	
	/**
	 * 方法名 ： setSoftwareEnvironment
	 * 功 能 ： 设置变量 softwareEnvironment 软件环境 的值
	 */
	public void setSoftwareEnvironment(String softwareEnvironment) {
		this.softwareEnvironment = softwareEnvironment;
	}
	
	/**
	 * 方法名 ： getUnit
	 * 功 能 ： 返回变量 unit 单位 的值
	 * @return: String
	 */
	public String getUnit() {
		return unit;
	}
	
	/**
	 * 方法名 ： setUnit
	 * 功 能 ： 设置变量 unit 单位 的值
	 */
	public void setUnit(String unit) {
		this.unit = unit;
	}
	
	/**
	 * 方法名 ： getEndDate
	 * 功 能 ： 返回变量 endDate 结束时间 的值
	 * @return: String
	 */
	public Date getEndDate() {
		return endDate;
	}
	
	/**
	 * 方法名 ： setEndDate
	 * 功 能 ： 设置变量 endDate 结束时间 的值
	 */
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	/**
	 * 方法名 ： getResponsibilityDescription
	 * 功 能 ： 返回变量 responsibilityDescription 职务描述 的值
	 * @return: String
	 */
	public String getResponsibilityDescription() {
		return responsibilityDescription;
	}
	
	/**
	 * 方法名 ： setResponsibilityDescription
	 * 功 能 ： 设置变量 responsibilityDescription 职务描述 的值
	 */
	public void setResponsibilityDescription(String responsibilityDescription) {
		this.responsibilityDescription = responsibilityDescription;
	}
	
}
