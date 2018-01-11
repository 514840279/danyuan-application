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
 * 文件名 ： SysRolerInfo.java
 * 包 名 ： tk.ainiyue.danyuan.application.crawler.param.po
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年7月20日 下午2:51:48
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_seed_ruler_info")
public class SysRulerInfo implements Serializable {
	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long serialVersionUID = 7367302169131287220L;
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "uuid", columnDefinition = " varchar(36) COMMENT '主键'")
	private String			  uuid;									  // uuid
	                                                                  // 唯一id
	
	@Column(name = "seed_uuid", columnDefinition = "varchar(200) not null COMMENT '种子id'")
	private String			  seedUuid;								  // seed_uuid
	                                                                  // 种子id
	
	@Column(name = "type", columnDefinition = "varchar(200) COMMENT '规则类别'")
	private String			  type;									  // type
	                                                                  // 规则类别
	
	@Column(name = "name", columnDefinition = "varchar(200) COMMENT '名称'")
	private String			  name;									  // name 名称
	
	@Column(name = "sub_uri", columnDefinition = "varchar(200) COMMENT '配对网址段'")
	private String			  subUri;								  // sub_uri
	                                                                  // 配对网址段
	
	@Column(name = "request_type", columnDefinition = "varchar(20) COMMENT '请求操作'")
	private String			  requestType;							  // request_type
	                                                                  // 请求操作
	
	@Column(name = "charset", columnDefinition = "varchar(20) COMMENT '字符集'")
	private String			  charset;								  // charset
	                                                                  // 字符集
	
	@Column(name = "discription", columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String			  discription;							  // discription
	                                                                  // 描述
	
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date			  createTime;							  // create_time
	                                                                  // 插入时间
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String			  createUser;							  // create_user
	                                                                  // 插入人
	
	@Column(name = "update_time", insertable = false, columnDefinition = " timestamp  default CURRENT_TIMESTAMP   COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date			  updateTime;							  // updata_time
	                                                                  // 更新时间

	@Column(name = "update_user", insertable = false, columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String			  updateUser;							  // updata_user
	                                                                  // 更新人
	
	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer			  deleteFlag;							  // delete_flag
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
	 * 方法名 ： getSeedUuid
	 * 功 能 ： 返回变量 seedUuid 的值
	 *
	 * @return: String
	 */
	public String getSeedUuid() {
		return seedUuid;
	}
	
	/**
	 * 方法名 ： setSeedUuid
	 * 功 能 ： 设置变量 seedUuid 的值
	 */
	public void setSeedUuid(String seedUuid) {
		this.seedUuid = seedUuid;
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
	 * 方法名 ： getName
	 * 功 能 ： 返回变量 name 的值
	 *
	 * @return: String
	 */
	public String getName() {
		return name;
	}
	
	/**
	 * 方法名 ： setName
	 * 功 能 ： 设置变量 name 的值
	 */
	public void setName(String name) {
		this.name = name;
	}
	
	/**
	 * 方法名 ： getSubUri
	 * 功 能 ： 返回变量 subUri 的值
	 *
	 * @return: String
	 */
	public String getSubUri() {
		return subUri;
	}
	
	/**
	 * 方法名 ： setSubUri
	 * 功 能 ： 设置变量 subUri 的值
	 */
	public void setSubUri(String subUri) {
		this.subUri = subUri;
	}
	
	/**
	 * 方法名 ： getRequestType
	 * 功 能 ： 返回变量 requestType 的值
	 *
	 * @return: String
	 */
	public String getRequestType() {
		return requestType;
	}
	
	/**
	 * 方法名 ： setRequestType
	 * 功 能 ： 设置变量 requestType 的值
	 */
	public void setRequestType(String requestType) {
		this.requestType = requestType;
	}
	
	/**
	 * 方法名 ： getCharset
	 * 功 能 ： 返回变量 charset 的值
	 *
	 * @return: String
	 */
	public String getCharset() {
		return charset;
	}
	
	/**
	 * 方法名 ： setCharset
	 * 功 能 ： 设置变量 charset 的值
	 */
	public void setCharset(String charset) {
		this.charset = charset;
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

}
