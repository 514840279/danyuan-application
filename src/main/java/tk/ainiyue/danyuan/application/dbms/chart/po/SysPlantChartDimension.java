package tk.ainiyue.danyuan.application.dbms.chart.po;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;

/**
 * The persistent class for the sys_plant_chart_dimension database table.
 */
@Entity
@Table(name = "sys_plant_chart_dimension")
@NamedQuery(name = "SysPlantChartDimension.findAll", query = "SELECT s FROM SysPlantChartDimension s")
public class SysPlantChartDimension implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "UUID", columnDefinition = " varchar(36) COMMENT '主键'")
	private String				uuid;
	
	@Column(name = "chart_type")
	private String				chartType;
	
	@Column(name = "end_num")
	private Integer				endNum;
	
	@Column(name = "lable_uuid")
	private String				lableUuid;

	@Column(name = "lable_uuid2")
	private String				lableUuid2;
	// 折线、柱图、树图，旭日图 允许有2个

	@Column(name = "lable_uuid3")
	private String				lableUuid3;
	// 树图，旭日图 允许有3个

	@Column(name = "lable_uuid4")
	private String				lableUuid4;
	// 树图，旭日图 允许有4个
	@Column(name = "group_uuid")
	private String				groupUuid;
	
	@Column(name = "start_num")
	private Integer				startNum;
	
	private String				title;
	@Column(name = "dime_order")
	private Integer				dimeOrder;
	@Column(name = "count_type")
	private String				countType;
	
	private String				theme;
	private String				width;
	private String				heigth;
	
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.CreationTimestamp
	private Date				createTime;					// create_time

	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String				createUser;					// create_user

	@Column(name = "update_time", columnDefinition = " timestamp  default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.UpdateTimestamp
	private Date				updateTime;					// updata_time

	@Column(name = "update_user", columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String				updateUser;					// updata_user

	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer				deleteFlag;
	
	@Column(name = "discription", columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String				discription;
	
	public SysPlantChartDimension() {
	}
	
	public String getUuid() {
		return this.uuid;
	}
	
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	public String getChartType() {
		return this.chartType;
	}
	
	public void setChartType(String chartType) {
		this.chartType = chartType;
	}

	public String getCreateUser() {
		return this.createUser;
	}
	
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public String getDiscription() {
		return this.discription;
	}
	
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	
	public Integer getEndNum() {
		return this.endNum;
	}
	
	public void setEndNum(Integer endNum) {
		this.endNum = endNum;
	}
	
	public String getLableUuid() {
		return this.lableUuid;
	}
	
	public void setLableUuid(String lableUuid) {
		this.lableUuid = lableUuid;
	}
	
	public Integer getStartNum() {
		return this.startNum;
	}
	
	public void setStartNum(Integer startNum) {
		this.startNum = startNum;
	}
	
	public String getTitle() {
		return this.title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	/**
	 * 方法名 ： getCountType
	 * 功 能 ： 返回变量 countType 的值
	 * @return: String
	 */
	public String getCountType() {
		return countType;
	}
	
	/**
	 * 方法名 ： setCountType
	 * 功 能 ： 设置变量 countType 的值
	 */
	public void setCountType(String countType) {
		this.countType = countType;
	}
	
	public String getUpdateUser() {
		return this.updateUser;
	}
	
	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

	/**
	 * 方法名 ： getCreateTime
	 * 功 能 ： 返回变量 createTime 的值
	 * @return: Date
	 */
	public Date getCreateTime() {
		return createTime;
	}

	/**
	 * 方法名 ： setCreateTime
	 * 功 能 ： 设置变量 createTime 的值
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	/**
	 * 方法名 ： getUpdateTime
	 * 功 能 ： 返回变量 updateTime 的值
	 * @return: Date
	 */
	public Date getUpdateTime() {
		return updateTime;
	}

	/**
	 * 方法名 ： setUpdateTime
	 * 功 能 ： 设置变量 updateTime 的值
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	/**
	 * 方法名 ： getDeleteFlag
	 * 功 能 ： 返回变量 deleteFlag 的值
	 * @return: Integer
	 */
	public Integer getDeleteFlag() {
		return deleteFlag;
	}

	/**
	 * 方法名 ： setDeleteFlag
	 * 功 能 ： 设置变量 deleteFlag 的值
	 */
	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}

	/**
	 * 方法名 ： getDimeOrder
	 * 功 能 ： 返回变量 dimeOrder 的值
	 * @return: Integer
	 */
	public Integer getDimeOrder() {
		return dimeOrder;
	}

	/**
	 * 方法名 ： setDimeOrder
	 * 功 能 ： 设置变量 dimeOrder 的值
	 */
	public void setDimeOrder(Integer dimeOrder) {
		this.dimeOrder = dimeOrder;
	}

	/**
	 * 方法名 ： getTheme
	 * 功 能 ： 返回变量 theme 的值
	 * @return: String
	 */
	public String getTheme() {
		return theme;
	}

	/**
	 * 方法名 ： setTheme
	 * 功 能 ： 设置变量 theme 的值
	 */
	public void setTheme(String theme) {
		this.theme = theme;
	}
	
	/**
	 * 方法名 ： getWidth
	 * 功 能 ： 返回变量 width 的值
	 * @return: String
	 */
	public String getWidth() {
		return width;
	}
	
	/**
	 * 方法名 ： setWidth
	 * 功 能 ： 设置变量 width 的值
	 */
	public void setWidth(String width) {
		this.width = width;
	}
	
	/**
	 * 方法名 ： getHeigth
	 * 功 能 ： 返回变量 heigth 的值
	 * @return: String
	 */
	public String getHeigth() {
		return heigth;
	}
	
	/**
	 * 方法名 ： setHeigth
	 * 功 能 ： 设置变量 heigth 的值
	 */
	public void setHeigth(String heigth) {
		this.heigth = heigth;
	}

	/**
	 * 方法名 ： getLableUuid2
	 * 功 能 ： 返回变量 lableUuid2 的值
	 * @return: String
	 */
	public String getLableUuid2() {
		return lableUuid2;
	}

	/**
	 * 方法名 ： setLableUuid2
	 * 功 能 ： 设置变量 lableUuid2 的值
	 */
	public void setLableUuid2(String lableUuid2) {
		this.lableUuid2 = lableUuid2;
	}

	/**
	 * 方法名 ： getLableUuid3
	 * 功 能 ： 返回变量 lableUuid3 的值
	 * @return: String
	 */
	public String getLableUuid3() {
		return lableUuid3;
	}

	/**
	 * 方法名 ： setLableUuid3
	 * 功 能 ： 设置变量 lableUuid3 的值
	 */
	public void setLableUuid3(String lableUuid3) {
		this.lableUuid3 = lableUuid3;
	}

	/**
	 * 方法名 ： getLableUuid4
	 * 功 能 ： 返回变量 lableUuid4 的值
	 * @return: String
	 */
	public String getLableUuid4() {
		return lableUuid4;
	}

	/**
	 * 方法名 ： setLableUuid4
	 * 功 能 ： 设置变量 lableUuid4 的值
	 */
	public void setLableUuid4(String lableUuid4) {
		this.lableUuid4 = lableUuid4;
	}

	/**
	 * 方法名 ： getGroupUuid
	 * 功 能 ： 返回变量 groupUuid 的值
	 * @return: String
	 */
	public String getGroupUuid() {
		return groupUuid;
	}

	/**
	 * 方法名 ： setGroupUuid
	 * 功 能 ： 设置变量 groupUuid 的值
	 */
	public void setGroupUuid(String groupUuid) {
		this.groupUuid = groupUuid;
	}
	
	/**
	 * 方法名 ： toString
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see java.lang.Object#toString()
	 * 作 者 ： Administrator
	 */

	@Override
	public String toString() {
		return "SysPlantChartDimension [uuid=" + uuid + ", chartType=" + chartType + ", endNum=" + endNum + ", lableUuid=" + lableUuid + ", lableUuid2=" + lableUuid2 + ", lableUuid3=" + lableUuid3 + ", lableUuid4=" + lableUuid4 + ", groupUuid=" + groupUuid + ", startNum=" + startNum + ", title=" + title + ", dimeOrder=" + dimeOrder + ", countType=" + countType + ", theme=" + theme + ", width=" + width + ", heigth=" + heigth + ", createTime=" + createTime + ", createUser=" + createUser + ", updateTime=" + updateTime + ", updateUser=" + updateUser + ", deleteFlag=" + deleteFlag + ", discription=" + discription + "]";
	}
	
}