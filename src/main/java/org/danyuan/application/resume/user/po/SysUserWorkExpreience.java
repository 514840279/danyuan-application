package org.danyuan.application.resume.user.po;

import java.io.Serializable;
import java.math.BigDecimal;
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
 * @文件名 SysUserWorkExpreience.java
 * @包名 org.danyuan.application.resume.user.po
 * @描述 sys_user_work_expreience的实体类
 * @时间 2020年04月25日 16:38:10
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_user_work_expreience")
@NamedQuery(name = "SysUserWorkExpreience.findAll", query = "SELECT s FROM SysUserWorkExpreience s")
public class SysUserWorkExpreience extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	// 单位
	@Column(name = "unit")
	private String				unit;
	
	// 薪资范围
	@Column(name = "salary_range")
	private String				salaryRange;
	
	// 工作性质
	@Column(name = "working_life", precision = 4, scale = 2)
	private BigDecimal			workingLife;
	
	// 工作内容
	@Column(name = "working_content")
	private String				workingContent;
	
	// 结束时间
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(style = "yyyy-MM-dd")
	@JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd")
	@Column(name = "end_date", nullable = false)
	private Date				endDate;
	
	// 企业性质
	@Column(name = "nature_of_the_firm")
	private String				natureOfTheFirm;
	
	// 开始时间
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(style = "yyyy-MM-dd")
	@JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd")
	@Column(name = "start_date", nullable = false)
	private Date				startDate;
	
	// 职位
	@Column(name = "position")
	private String				position;
	
	// 工作时间
	@Column(name = "working_range")
	private String				workingRange;
	
	// 用户id
	@Column(name = "user_uuid")
	private String				userUuid;
	
	// 企业规模
	@Column(name = "firm_asset_size")
	private String				firmAssetSize;
	
	/**
	 * 构造方法：
	 * 描 述： 默认构造函数
	 * 参 数：
	 * 作 者 ： test
	 * @throws
	 */
	public SysUserWorkExpreience() {
		super();
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
	 * 方法名 ： getSalaryRange
	 * 功 能 ： 返回变量 salaryRange 薪资范围 的值
	 * @return: String
	 */
	public String getSalaryRange() {
		return salaryRange;
	}
	
	/**
	 * 方法名 ： setSalaryRange
	 * 功 能 ： 设置变量 salaryRange 薪资范围 的值
	 */
	public void setSalaryRange(String salaryRange) {
		this.salaryRange = salaryRange;
	}
	
	/**
	 * 方法名 ： getWorkingLife
	 * 功 能 ： 返回变量 workingLife 工作性质 的值
	 * @return: String
	 */
	public BigDecimal getWorkingLife() {
		return workingLife;
	}
	
	/**
	 * 方法名 ： setWorkingLife
	 * 功 能 ： 设置变量 workingLife 工作性质 的值
	 */
	public void setWorkingLife(BigDecimal workingLife) {
		this.workingLife = workingLife;
	}
	
	/**
	 * 方法名 ： getWorkingContent
	 * 功 能 ： 返回变量 workingContent 工作内容 的值
	 * @return: String
	 */
	public String getWorkingContent() {
		return workingContent;
	}
	
	/**
	 * 方法名 ： setWorkingContent
	 * 功 能 ： 设置变量 workingContent 工作内容 的值
	 */
	public void setWorkingContent(String workingContent) {
		this.workingContent = workingContent;
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
	 * 方法名 ： getNatureOfTheFirm
	 * 功 能 ： 返回变量 natureOfTheFirm 企业性质 的值
	 * @return: String
	 */
	public String getNatureOfTheFirm() {
		return natureOfTheFirm;
	}
	
	/**
	 * 方法名 ： setNatureOfTheFirm
	 * 功 能 ： 设置变量 natureOfTheFirm 企业性质 的值
	 */
	public void setNatureOfTheFirm(String natureOfTheFirm) {
		this.natureOfTheFirm = natureOfTheFirm;
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
	 * 方法名 ： getWorkingRange
	 * 功 能 ： 返回变量 workingRange 工作时间 的值
	 * @return: String
	 */
	public String getWorkingRange() {
		return workingRange;
	}
	
	/**
	 * 方法名 ： setWorkingRange
	 * 功 能 ： 设置变量 workingRange 工作时间 的值
	 */
	public void setWorkingRange(String workingRange) {
		this.workingRange = workingRange;
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
	 * 方法名 ： getFirmAssetSize
	 * 功 能 ： 返回变量 firmAssetSize 企业规模 的值
	 * @return: String
	 */
	public String getFirmAssetSize() {
		return firmAssetSize;
	}
	
	/**
	 * 方法名 ： setFirmAssetSize
	 * 功 能 ： 设置变量 firmAssetSize 企业规模 的值
	 */
	public void setFirmAssetSize(String firmAssetSize) {
		this.firmAssetSize = firmAssetSize;
	}
	
}
