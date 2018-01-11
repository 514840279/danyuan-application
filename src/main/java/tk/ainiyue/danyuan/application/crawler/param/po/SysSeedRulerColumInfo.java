package tk.ainiyue.danyuan.application.crawler.param.po;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 文件名 ： SysSeedRolerColumInfo.java
 * 包 名 ： tk.ainiyue.danyuan.application.crawler.seed.po
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年7月20日 下午4:36:37
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_seed_ruler_colum_info")
public class SysSeedRulerColumInfo implements Serializable {
	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long serialVersionUID = -8357322920888540203L;

	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "uuid", columnDefinition = " varchar(36) COMMENT '主键'")
	private String			  uuid;									   // uuid
	                                                                   // 唯一id

	@Column(name = "ruler_uuid", columnDefinition = "varchar(32) COMMENT '规则id'")
	private String			  rulerUuid;							   // roler_uuid
	                                                                   // 规则id
	@Column(name = "colum_name", columnDefinition = "varchar(30) COMMENT '列名称'")
	private String			  columName;							   // colum_name
	                                                                   // 列名称
	@Column(name = "ruler", columnDefinition = "varchar(300) COMMENT '取内容规则'")
	private String			  ruler;								   // roler
	                                                                   // 取内容规则
	@Column(name = "type", columnDefinition = "varchar(30) COMMENT '处理方式'")
	private String			  type;									   // type
	                                                                   // 处理方式
	@Column(name = "spl1", columnDefinition = "varchar(30) COMMENT 'split 1字符串'")
	private String			  spl1;									   // spl1
	                                                                   // split
	                                                                   // 1字符串
	@Column(name = "spl2", columnDefinition = "int COMMENT '2整型脚标'")
	private String			  spl2;									   // spl2
	                                                                   // split
	                                                                   // 2整型脚标
	@Column(name = "app1", columnDefinition = "varchar(30) COMMENT 'apand 方式 字符'")
	private String			  app1;									   // app1
	                                                                   // apand
	                                                                   // 方式 字符
	@Column(name = "app2", columnDefinition = "varchar(30) COMMENT 'apand 字符'")
	private String			  app2;									   // app2
	                                                                   // apand
	                                                                   // 字符
	@Column(name = "arr", columnDefinition = "int COMMENT '取一个 整型'")
	private String			  arr;									   // arr
	                                                                   // array
	                                                                   // 取一个 整型

	@Column(name = "discription", columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String			  discription;							   // discription
	                                                                   // 描述

	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date			  createTime;							   // create_time
	                                                                   // 插入时间

	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String			  createUser;							   // create_user
	                                                                   // 插入人

	@Column(name = "update_time", insertable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date			  updateTime;							   // updata_time
	                                                                   // 更新时间

	@Column(name = "update_user", insertable = false, columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String			  updateUser;							   // updata_user
	                                                                   // 更新人

	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer			  deleteFlag;							   // delete_flag
	                                                                   // 标记

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
	 * 方法名 ： getRolerUuid
	 * 功 能 ： 返回变量 rolerUuid 的值
	 *
	 * @return: String
	 */
	public String getRulerUuid() {
		return rulerUuid;
	}

	/**
	 * 方法名 ： setRolerUuid
	 * 功 能 ： 设置变量 rolerUuid 的值
	 */
	public void setRulerUuid(String rulerUuid) {
		this.rulerUuid = rulerUuid;
	}

	/**
	 * 方法名 ： getColumName
	 * 功 能 ： 返回变量 columName 的值
	 *
	 * @return: String
	 */
	public String getColumName() {
		return columName;
	}

	/**
	 * 方法名 ： setColumName
	 * 功 能 ： 设置变量 columName 的值
	 */
	public void setColumName(String columName) {
		this.columName = columName;
	}

	/**
	 * 方法名 ： getRoler
	 * 功 能 ： 返回变量 roler 的值
	 *
	 * @return: String
	 */
	public String getRuler() {
		return ruler;
	}

	/**
	 * 方法名 ： setRoler
	 * 功 能 ： 设置变量 roler 的值
	 */
	public void setRuler(String ruler) {
		this.ruler = ruler;
	}

	/**
	 * 方法名 ： getType
	 * 功 能 ： 返回变量 type 的值
	 *
	 * @return: String
	 */
	public String getType() {
		return type;
	}

	/**
	 * 方法名 ： setType
	 * 功 能 ： 设置变量 type 的值
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * 方法名 ： getSpl1
	 * 功 能 ： 返回变量 spl1 的值
	 *
	 * @return: String
	 */
	public String getSpl1() {
		return spl1;
	}

	/**
	 * 方法名 ： setSpl1
	 * 功 能 ： 设置变量 spl1 的值
	 */
	public void setSpl1(String spl1) {
		this.spl1 = spl1;
	}

	/**
	 * 方法名 ： getSpl2
	 * 功 能 ： 返回变量 spl2 的值
	 *
	 * @return: String
	 */
	public String getSpl2() {
		return spl2;
	}

	/**
	 * 方法名 ： setSpl2
	 * 功 能 ： 设置变量 spl2 的值
	 */
	public void setSpl2(String spl2) {
		this.spl2 = spl2;
	}

	/**
	 * 方法名 ： getApp1
	 * 功 能 ： 返回变量 app1 的值
	 *
	 * @return: String
	 */
	public String getApp1() {
		return app1;
	}

	/**
	 * 方法名 ： setApp1
	 * 功 能 ： 设置变量 app1 的值
	 */
	public void setApp1(String app1) {
		this.app1 = app1;
	}

	/**
	 * 方法名 ： getApp2
	 * 功 能 ： 返回变量 app2 的值
	 *
	 * @return: String
	 */
	public String getApp2() {
		return app2;
	}

	/**
	 * 方法名 ： setApp2
	 * 功 能 ： 设置变量 app2 的值
	 */
	public void setApp2(String app2) {
		this.app2 = app2;
	}

	/**
	 * 方法名 ： getArr
	 * 功 能 ： 返回变量 arr 的值
	 *
	 * @return: String
	 */
	public String getArr() {
		return arr;
	}

	/**
	 * 方法名 ： setArr
	 * 功 能 ： 设置变量 arr 的值
	 */
	public void setArr(String arr) {
		this.arr = arr;
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
	
	/**
	 * 方法名 ： getUpdateTime
	 * 功 能 ： 返回变量 updateTime 的值
	 *
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
	 *
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
	
	/**
	 * 方法名 ： toString
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see java.lang.Object#toString()
	 * 作 者 ： wang
	 */

	@Override
	public String toString() {
		return "SysSeedRulerColumInfo [uuid=" + uuid + ", rulerUuid=" + rulerUuid + ", columName=" + columName + ", ruler=" + ruler + ", type=" + type + ", spl1=" + spl1 + ", spl2=" + spl2 + ", app1=" + app1 + ", app2=" + app2 + ", arr=" + arr + ", discription=" + discription + ", createTime=" + createTime + ", createUser=" + createUser + ", updateTime=" + updateTime + ", updateUser=" + updateUser + ", deleteFlag=" + deleteFlag + "]";
	}
	
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数：
	 * 作 者 ： wang
	 * @throws
	 */
	public SysSeedRulerColumInfo() {
		super();
	}

}
