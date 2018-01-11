package tk.ainiyue.danyuan.application.crawler.seed.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 文件名 ： SysSeedInfo.java
 * 包 名 ： tk.ainiyue.danyuan.application.crawler.seed.po
 * 描 述 ： 采集种子配置
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年7月10日 下午5:21:51
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_seed_url_info", uniqueConstraints = { @UniqueConstraint(columnNames = "seed_url") })
public class SysSeedInfo {
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "uuid", columnDefinition = " varchar(36) COMMENT '主键'")
	private String	uuid;
	
	@Column(name = "seed_type", columnDefinition = " varchar(36) COMMENT '网站类型'")
	private String	seedType;
	
	@Column(name = "seed_name", columnDefinition = " varchar(50) COMMENT '网站名称'")
	private String	seedName;
	
	@Column(name = "seed_icon", columnDefinition = " varchar(1000) COMMENT '网站商标'")
	private String	seedIcon;
	
	@Column(name = "seed_url", columnDefinition = " varchar(2000) COMMENT '链接地址' ")
	private String	seedUrl;
	
	@Column(name = "request_date", columnDefinition = "int COMMENT '请求时间'")
	private Integer	requestDate;
	
	@Column(name = "request_proxy", columnDefinition = "int COMMENT '请求时间'")
	private Integer	requestProxy;
	
	@Column(name = "discription", columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String	discription;
	
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date	insertTime;
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String	insertUser;
	
	@Column(name = "update_time", insertable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP   COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date	updateTime;	 // updata_time 更新时间
	
	@Column(name = "update_user", insertable = false, columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String	updateUser;	 // updata_user 更新人

	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer	deleteFlag;
	
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
	 * 方法名 ： getSeedType
	 * 功 能 ： 返回变量 seedType 的值
	 *
	 * @return: String
	 */
	public String getSeedType() {
		return seedType;
	}
	
	/**
	 * 方法名 ： setSeedType
	 * 功 能 ： 设置变量 seedType 的值
	 */
	public void setSeedType(String seedType) {
		this.seedType = seedType;
	}
	
	public String getSeedName() {
		return seedName;
	}
	
	public void setSeedName(String seedName) {
		this.seedName = seedName;
	}
	
	public String getSeedIcon() {
		return seedIcon;
	}
	
	public void setSeedIcon(String seedIcon) {
		this.seedIcon = seedIcon;
	}
	
	/**
	 * 方法名 ： getSeedUrl
	 * 功 能 ： 返回变量 seedUrl 的值
	 *
	 * @return: String
	 */
	public String getSeedUrl() {
		return seedUrl;
	}
	
	/**
	 * 方法名 ： setSeedUrl
	 * 功 能 ： 设置变量 seedUrl 的值
	 */
	public void setSeedUrl(String seedUrl) {
		this.seedUrl = seedUrl;
	}
	
	public Integer getRequestDate() {
		return requestDate;
	}
	
	public void setRequestDate(Integer requestDate) {
		this.requestDate = requestDate;
	}
	
	public Integer getRequestProxy() {
		return requestProxy;
	}
	
	public void setRequestProxy(Integer requestProxy) {
		this.requestProxy = requestProxy;
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
	 * 方法名 ： getInsertUser
	 * 功 能 ： 返回变量 insertUser 的值
	 *
	 * @return: String
	 */
	public String getInsertUser() {
		return insertUser;
	}
	
	/**
	 * 方法名 ： setInsertUser
	 * 功 能 ： 设置变量 insertUser 的值
	 */
	public void setInsertUser(String insertUser) {
		this.insertUser = insertUser;
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
	 * 方法名 ： getInsertTime
	 * 功 能 ： 返回变量 insertTime 的值
	 *
	 * @return: Date
	 */
	public Date getInsertTime() {
		return insertTime;
	}

	/**
	 * 方法名 ： setInsertTime
	 * 功 能 ： 设置变量 insertTime 的值
	 */
	public void setInsertTime(Date insertTime) {
		this.insertTime = insertTime;
	}

}
