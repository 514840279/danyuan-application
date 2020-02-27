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

/**
 * @文件名 SysUserWorkExpreience.java
 * @包名 org.danyuan.application.resume.user.po
 * @描述 sys_user_work_expreience的实体类
 * @时间 2019年02月28日 17:42:26
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_user_work_expreience")
@NamedQuery(name = "SysUserWorkExpreience.findAll", query = "SELECT s FROM SysUserWorkExpreience s")
public class SysUserWorkExpreience extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;

	//
	@Column(name = "unit")
	private String				unit;

	//
	@Column(name = "end_date")
	private String				endDate;

	//
	@Column(name = "working_life")
	private String			workingLife;

	//
	@Column(name = "start_date")
	private String				startDate;

	//
	@Column(name = "position")
	private String				position;

	//
	@Column(name = "nature_of_the_firm")
	private String				natureOfTheFirm;
	
	//
	@Column(name = "firm_asset_size")
	private String				firmAssetSize;

	//
	@Column(name = "working_range")
	private String				workingRange;
	
	//
	@Column(name = "salary_range")
	private String				salaryRange;
	
	//
	@Column(name = "user_uuid")
	private String				userUuid;

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
	
	

	public SysUserWorkExpreience(String uuid) {
		super(uuid);
	}



	/**
	 * 方法名 ： getUnit
	 * 功 能 ： 返回变量 unit 的值
	 *
	 * @return: String
	 */
	public String getUnit() {
		return unit;
	}

	/**
	 * 方法名 ： setUnit
	 * 功 能 ： 设置变量 unit 的值
	 */
	public void setUnit(String unit) {
		this.unit = unit;
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
	 * 方法名 ： getUserUuid
	 * 功 能 ： 返回变量 userUuid 的值
	 *
	 * @return: String
	 */
	public String getUserUuid() {
		return userUuid;
	}
	
	

	/**
	 * @return the endDate
	 */
	public String getEndDate() {
		return endDate;
	}



	/**
	 * @param endDate the endDate to set
	 */
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}



	/**
	 * @return the workingLife
	 */
	public String getWorkingLife() {
		return workingLife;
	}



	/**
	 * @return the salaryRange
	 */
	public String getSalaryRange() {
		return salaryRange;
	}



	/**
	 * @param salaryRange the salaryRange to set
	 */
	public void setSalaryRange(String salaryRange) {
		this.salaryRange = salaryRange;
	}



	/**
	 * @param workingLife the workingLife to set
	 */
	public void setWorkingLife(String workingLife) {
		this.workingLife = workingLife;
	}



	/**
	 * @return the startDate
	 */
	public String getStartDate() {
		return startDate;
	}



	/**
	 * @param startDate the startDate to set
	 */
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}



	/**
	 * @return the natureOfTheFirm
	 */
	public String getNatureOfTheFirm() {
		return natureOfTheFirm;
	}



	/**
	 * @param natureOfTheFirm the natureOfTheFirm to set
	 */
	public void setNatureOfTheFirm(String natureOfTheFirm) {
		this.natureOfTheFirm = natureOfTheFirm;
	}



	/**
	 * @return the firmAssetSize
	 */
	public String getFirmAssetSize() {
		return firmAssetSize;
	}



	/**
	 * @param firmAssetSize the firmAssetSize to set
	 */
	public void setFirmAssetSize(String firmAssetSize) {
		this.firmAssetSize = firmAssetSize;
	}



	/**
	 * @return the workingRange
	 */
	public String getWorkingRange() {
		return workingRange;
	}



	/**
	 * @param workingRange the workingRange to set
	 */
	public void setWorkingRange(String workingRange) {
		this.workingRange = workingRange;
	}



	/**
	 * 方法名 ： setUserUuid
	 * 功 能 ： 设置变量 userUuid 的值
	 */
	public void setUserUuid(String userUuid) {
		this.userUuid = userUuid;
	}

}
