package tk.ainiyue.danyuan.application.softm.system.po;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 文件名 ： SysWebSystem.java
 * 包 名 ： tk.ainiyue.admin.system.po
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2016年6月24日 下午9:35:05
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_system_info")
public class SysSystemInfo {

	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "UUID", columnDefinition = "varchar(36) COMMENT '主键'")
	@NotNull
	private String	uuid = "99c74ada3a1411e6bdcb10bf48e1d36a";

	@Column(name = "system_name", columnDefinition = "varchar(200) COMMENT '系统名称'")
	@NotNull
	private String	systemName;

	@Column(name = "discription", columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String	discription;							  // discription 描述
	
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date	createTime;								  // create_time
	                                                          // 插入时间
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String	createUser;								  // create_user 插入人
	
	@Column(name = "updata_time", insertable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '更新人员'")
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date	updataTime;								  // updata_time
	                                                          // 更新时间
	
	@Column(name = "updata_user", insertable = false, columnDefinition = " varchar(50) default 'system'  COMMENT '更新时间'")
	private String	updataUser;								  // updata_user 更新人
	
	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer	deleteFlag;								  // delete_flag 标记

	/**
	 * 方法名 ： getUuid
	 * 功 能 ： 返回变量 uuid 的值
	 *
	 * @return: String
	 */
	public String getUuid() {
		return uuid;
	}

	/**
	 * 方法名 ： setUuid
	 * 功 能 ： 设置变量 uuid 的值
	 */
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	/**
	 * 方法名 ： getSystemName
	 * 功 能 ： 返回变量 systemName 的值
	 *
	 * @return: String
	 */
	public String getSystemName() {
		return systemName;
	}

	/**
	 * 方法名 ： setSystemName
	 * 功 能 ： 设置变量 systemName 的值
	 */
	public void setSystemName(String systemName) {
		this.systemName = systemName;
	}

	/**
	 * 方法名 ： getDiscription
	 * 功 能 ： 返回变量 discription 的值
	 *
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
	 * 方法名 ： getCreateTime
	 * 功 能 ： 返回变量 createTime 的值
	 *
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
	 *
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
	 * 方法名 ： getUpdataTime
	 * 功 能 ： 返回变量 updataTime 的值
	 *
	 * @return: Date
	 */
	public Date getUpdataTime() {
		return updataTime;
	}

	/**
	 * 方法名 ： setUpdataTime
	 * 功 能 ： 设置变量 updataTime 的值
	 */
	public void setUpdataTime(Date updataTime) {
		this.updataTime = updataTime;
	}

	/**
	 * 方法名 ： getUpdataUser
	 * 功 能 ： 返回变量 updataUser 的值
	 *
	 * @return: String
	 */
	public String getUpdataUser() {
		return updataUser;
	}

	/**
	 * 方法名 ： setUpdataUser
	 * 功 能 ： 设置变量 updataUser 的值
	 */
	public void setUpdataUser(String updataUser) {
		this.updataUser = updataUser;
	}

	/**
	 * 方法名 ： getDeleteFlag
	 * 功 能 ： 返回变量 deleteFlag 的值
	 *
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

}
