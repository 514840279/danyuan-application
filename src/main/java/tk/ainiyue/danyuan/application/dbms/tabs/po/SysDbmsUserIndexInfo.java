package tk.ainiyue.danyuan.application.dbms.tabs.po;

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
import org.springframework.format.annotation.DateTimeFormat;

/**
 * The persistent class for the sys_dic_user_index_code database table.
 */
@Entity
@Table(name = "sys_dbms_user_index_info")
@NamedQuery(name = "SysDbmsUserIndexInfo.findAll", query = "SELECT s FROM SysDbmsUserIndexInfo s")
public class SysDbmsUserIndexInfo implements Serializable {
	private static final long	serialVersionUID	= 1L;

	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "UUID", columnDefinition = " varchar(36) COMMENT '主键'")
	private String				uuid;

	@Column(name = "user_desc")
	private String				userDesc;

	@Column(name = "user_index")
	private String				userIndex;
	
	@Column(name = "user_placeholder")
	private String				userPlaceholder;

	@Column(name = "user_order")
	private Integer				userOrder;

	@Column(name = "multeity")
	private Integer				multeity;

	@Column(name = "chart")
	private Integer				chart;
	
	@Column(columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String				discription;

	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.CreationTimestamp
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date				createTime;					// create_time
	// 插入时间

	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String				createUser;					// create_user
	// 插入人

	@Column(name = "update_time", columnDefinition = " timestamp  default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.UpdateTimestamp
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date				updateTime;					// updata_time
	// 更新时间

	@Column(name = "update_user", columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String				updateUser;					// updata_user
	// 更新人

	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer				deleteFlag;
	// 标记

	public SysDbmsUserIndexInfo() {
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	/**
	 * 方法名 ： getUserDesc
	 * 功 能 ： 返回变量 userDesc 的值
	 * @return: String
	 */
	public String getUserDesc() {
		return userDesc;
	}

	/**
	 * 方法名 ： setUserDesc
	 * 功 能 ： 设置变量 userDesc 的值
	 */
	public void setUserDesc(String userDesc) {
		this.userDesc = userDesc;
	}

	public String getUserIndex() {
		return this.userIndex;
	}

	public void setUserIndex(String userIndex) {
		this.userIndex = userIndex;
	}

	public Integer getUserOrder() {
		return this.userOrder;
	}

	public void setUserOrder(Integer userOrder) {
		this.userOrder = userOrder;
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
	 * 方法名 ： getCreateUser
	 * 功 能 ： 返回变量 createUser 的值
	 * @return: String
	 */
	public String getCreateUser() {
		return createUser;
	}

	/**
	 * 方法名 ： setCreateUser
	 * 功 能 ： 设置变量 createUser 的值
	 */
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
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
	 * 方法名 ： getUpdateUser
	 * 功 能 ： 返回变量 updateUser 的值
	 * @return: String
	 */
	public String getUpdateUser() {
		return updateUser;
	}

	/**
	 * 方法名 ： setUpdateUser
	 * 功 能 ： 设置变量 updateUser 的值
	 */
	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

	public Integer getMulteity() {
		return multeity;
	}

	public void setMulteity(Integer multeity) {
		this.multeity = multeity;
	}

	public String getUserPlaceholder() {
		return userPlaceholder;
	}

	public void setUserPlaceholder(String userPlaceholder) {
		this.userPlaceholder = userPlaceholder;
	}

	public Integer getChart() {
		return chart;
	}

	public void setChart(Integer chart) {
		this.chart = chart;
	}
	
	/**
	 * 方法名 ： getDiscription
	 * 功 能 ： 返回变量 discription 的值
	 * @return: String
	 */
	public String getDiscription() {
		return discription;
	}
	
	/**
	 * 方法名 ： setDiscription
	 * 功 能 ： 设置变量 discription 的值
	 */
	public void setDiscription(String discription) {
		this.discription = discription;
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
	 * 方法名 ： toString
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see java.lang.Object#toString()
	 * 作 者 ： Administrator
	 */
	
	@Override
	public String toString() {
		return "SysDicUserIndexCode [uuid=" + uuid + ", userDesc=" + userDesc + ", userIndex=" + userIndex + ", userPlaceholder=" + userPlaceholder + ", userOrder=" + userOrder + ", multeity=" + multeity + ", chart=" + chart + ", discription=" + discription + ", createTime=" + createTime + ", createUser=" + createUser + ", updateTime=" + updateTime + ", updateUser=" + updateUser + ", deleteFlag=" + deleteFlag + "]";
	}

}