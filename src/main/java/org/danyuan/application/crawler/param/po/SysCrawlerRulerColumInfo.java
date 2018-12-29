package org.danyuan.application.crawler.param.po;

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
@Table(name = "sys_crawler_ruler_colum_info")
public class SysCrawlerRulerColumInfo implements Serializable {
	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long	serialVersionUID	= -8357322920888540203L;
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "uuid", columnDefinition = " varchar(36) COMMENT '主键'")
	private String				uuid;										// 唯一id
	
	@Column(name = "parent_uuid", columnDefinition = " varchar(36) COMMENT '上一层'")
	private String				parentUuid;
	
	@Column(name = "ruler_uuid", columnDefinition = " varchar(36) COMMENT '规则id'")
	private String				rulerUuid;									// 规则id
	
	@Column(name = "colum_name", columnDefinition = " varchar(30) COMMENT '列名称'")
	private String				columName;									// 列名称
	
	@Column(name = "ruler", columnDefinition = "varchar(300) COMMENT '取内容规则'")
	private String				ruler;										// 取内容规则
	
	@Column(name = "type", columnDefinition = " varchar(30) COMMENT '处理方式'")
	private String				type;										// type
	
	private Integer				start; // 截取开始下标 
	private Integer				end; // 截取结束的下标
	@Column(name = "param", columnDefinition = " varchar(500) COMMENT '拼接或替换的字符串'")
	private String				param;  // 需要替换的字符串
	private String				paramNew; // 需要替换成新的字符串
	private String				md5Flag; // 是否作为md5计算的连接字段
	
	@Column(name = "discription", columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String				discription;								// 描述
	
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date				createTime;									// 插入时间
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String				createUser;									// 插入人
	
	@Column(name = "update_time", insertable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date				updateTime;									// 更新时间
	
	@Column(name = "update_user", insertable = false, columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String				updateUser;									// 更新人
	
	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer				deleteFlag;									// 标记
	
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
	 * 方法名 ： getStart
	 * 功 能 ： 返回变量 start 的值
	 *
	 * @return: Integer
	 */
	public Integer getStart() {
		return start;
	}
	
	/**
	 * 方法名 ： setStart
	 * 功 能 ： 设置变量 start 的值
	 */
	public void setStart(Integer start) {
		this.start = start;
	}
	
	/**
	 * 方法名 ： getEnd
	 * 功 能 ： 返回变量 end 的值
	 *
	 * @return: Integer
	 */
	public Integer getEnd() {
		return end;
	}
	
	/**
	 * 方法名 ： setEnd
	 * 功 能 ： 设置变量 end 的值
	 */
	public void setEnd(Integer end) {
		this.end = end;
	}
	
	/**
	 * 方法名 ： getParam
	 * 功 能 ： 返回变量 param 的值
	 *
	 * @return: String
	 */
	public String getParam() {
		return param;
	}
	
	/**
	 * 方法名 ： setParam
	 * 功 能 ： 设置变量 param 的值
	 */
	public void setParam(String param) {
		this.param = param;
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
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数：
	 * 作 者 ： wang
	 * @throws
	 */
	public SysCrawlerRulerColumInfo() {
		super();
	}
	
	/**
	 * 方法名 ： getParamNew
	 * 功 能 ： 返回变量 paramNew 的值
	 *
	 * @return: String
	 */
	public String getParamNew() {
		return paramNew;
	}
	
	/**
	 * 方法名 ： setParamNew
	 * 功 能 ： 设置变量 paramNew 的值
	 */
	public void setParamNew(String paramNew) {
		this.paramNew = paramNew;
	}
	
	/**  
	 *  方法名 ： getParentUuid 
	 *  功    能 ： 返回变量 parentUuid 的值  
	 *  @return: String 
	 */
	public String getParentUuid() {
		return parentUuid;
	}
	
	/**  
	 *  方法名 ： setParentUuid 
	 *  功    能 ： 设置变量 parentUuid 的值
	 */
	public void setParentUuid(String parentUuid) {
		this.parentUuid = parentUuid;
	}
	
	/**  
	 *  方法名 ： getMd5Flag 
	 *  功    能 ： 返回变量 md5Flag 的值  
	 *  @return: String 
	 */
	public String getMd5Flag() {
		return md5Flag;
	}
	
	/**  
	 *  方法名 ： setMd5Flag 
	 *  功    能 ： 设置变量 md5Flag 的值
	 */
	public void setMd5Flag(String md5Flag) {
		this.md5Flag = md5Flag;
	}
	
}
