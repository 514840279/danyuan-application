package tk.ainiyue.danyuan.application.crawler.seed.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
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
	@GeneratedValue(generator = "idGenerator")
	@Column(name = "uuid", columnDefinition = " varchar(36) COMMENT '主键'")
	private String	uuid;

	@Column(name = "seed_type", columnDefinition = " varchar(36) COMMENT '网站类型'")
	private String	seedType;

	@Column(name = "seed_name", columnDefinition = " varchar(50) COMMENT '网站名称'")
	private String	seecName;

	@Column(name = "seed_icon", columnDefinition = " varchar(1000) COMMENT '网站商标'")
	private String	seedIcon;
	
	@Column(name = "seed_url", columnDefinition = " varchar(2000) COMMENT '链接地址' ")
	private String	seedUrl;

	@Column(name = "charset", columnDefinition = "varchar(10) COMMENT '字符集'")
	private String	charset;

	@Column(name = "request_type", columnDefinition = "varchar(10) COMMENT '请求方式'")
	private String	requestType;

	@Column(name = "request_date", columnDefinition = "int COMMENT '请求时间'")
	private Integer	requestDate;

	@Column(name = "request_proxy", columnDefinition = "int COMMENT '请求时间'")
	private Integer	requestProxy;

	@Column(name = "discription", columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String	discription;

	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date	insertDatetime;

	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String	insertUser;

	@Column(name = "updata_time", insertable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '更新人员'")
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private String	updataDatatime;

	@Column(name = "updata_user", insertable = false, columnDefinition = " varchar(50) default 'system'  COMMENT '更新时间'")
	private String	updataUser;

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

	/**
	 * 方法名 ： getSeecName
	 * 功 能 ： 返回变量 seecName 的值
	 *
	 * @return: String
	 */
	public String getSeecName() {
		return seecName;
	}

	/**
	 * 方法名 ： setSeecName
	 * 功 能 ： 设置变量 seecName 的值
	 */
	public void setSeecName(String seecName) {
		this.seecName = seecName;
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
	 * 方法名 ： getInsertDatetime
	 * 功 能 ： 返回变量 insertDatetime 的值
	 *
	 * @return: Date
	 */
	public Date getInsertDatetime() {
		return insertDatetime;
	}

	/**
	 * 方法名 ： setInsertDatetime
	 * 功 能 ： 设置变量 insertDatetime 的值
	 */
	public void setInsertDatetime(Date insertDatetime) {
		this.insertDatetime = insertDatetime;
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
	 * 方法名 ： getUpdataDatatime
	 * 功 能 ： 返回变量 updataDatatime 的值
	 *
	 * @return: String
	 */
	public String getUpdataDatatime() {
		return updataDatatime;
	}

	/**
	 * 方法名 ： setUpdataDatatime
	 * 功 能 ： 设置变量 updataDatatime 的值
	 */
	public void setUpdataDatatime(String updataDatatime) {
		this.updataDatatime = updataDatatime;
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
