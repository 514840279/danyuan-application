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
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	@Column(name = "end_date")
	private Date				endDate;

	//
	@Column(name = "working_life")
	private BigDecimal			workingLife;

	//
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	@Column(name = "start_date")
	private Date				startDate;

	//
	@Column(name = "position")
	private String				position;

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
	 * 方法名 ： getEndDate
	 * 功 能 ： 返回变量 endDate 的值
	 *
	 * @return: String
	 */
	public Date getEndDate() {
		return endDate;
	}

	/**
	 * 方法名 ： setEndDate
	 * 功 能 ： 设置变量 endDate 的值
	 */
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	/**
	 * 方法名 ： getWorkingLife
	 * 功 能 ： 返回变量 workingLife 的值
	 *
	 * @return: String
	 */
	public BigDecimal getWorkingLife() {
		return workingLife;
	}

	/**
	 * 方法名 ： setWorkingLife
	 * 功 能 ： 设置变量 workingLife 的值
	 */
	public void setWorkingLife(BigDecimal workingLife) {
		this.workingLife = workingLife;
	}

	/**
	 * 方法名 ： getStartDate
	 * 功 能 ： 返回变量 startDate 的值
	 *
	 * @return: String
	 */
	public Date getStartDate() {
		return startDate;
	}

	/**
	 * 方法名 ： setStartDate
	 * 功 能 ： 设置变量 startDate 的值
	 */
	public void setStartDate(Date startDate) {
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

}
