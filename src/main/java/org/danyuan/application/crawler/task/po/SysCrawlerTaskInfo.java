package org.danyuan.application.crawler.task.po;

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
 * 文件名 ： SysSeedInfo.java
 * 包 名 ： tk.ainiyue.danyuan.application.crawler.task.po
 * 描 述 ： 采集种子配置
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年7月10日 下午5:21:51
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_crawler_task_info")
public class SysCrawlerTaskInfo {
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "uuid", columnDefinition = " varchar(36) COMMENT '主键'")
	private String	uuid;
	
	@Column(name = "url", columnDefinition = " varchar(2000) COMMENT '链接地址' ")
	private String	url;
	
	@Column(name = "task_name", columnDefinition = " varchar(50) COMMENT '主键'")
	private String	taskName;
	
	@Column(name = "url_type", columnDefinition = " varchar(36) COMMENT '网站类型'")
	private String	urlType;
	
	@Column(name = "charset", columnDefinition = " varchar(20) COMMENT '字符集'")
	private String	charset;
	
	@Column(name = "web_icon", columnDefinition = " varchar(1000) COMMENT '网站商标'")
	private String	webIcon;
	
	@Column(name = "request_data", columnDefinition = " varchar(2000) COMMENT '请求时间'")
	private String	requestData;
	
	@Column(name = "request_type", columnDefinition = " varchar(50)  COMMENT '请求方式'")
	private String	requestType;
	
	@Column(name = "start_time", insertable = false, columnDefinition = " timestamp COMMENT ' 任务执行开始时间' ")
	@Temporal(TemporalType.TIMESTAMP)
	private Date	startTime;
	
	@Column(name = "last_excute_time", insertable = false, columnDefinition = " timestamp COMMENT '最近一次执行时间'")
	@Temporal(TemporalType.TIMESTAMP)
	private Date	lastExcuteTime;
	
	@Column(name = "surplus_num", columnDefinition = " int default 0  COMMENT '预计剩余采集数量'")
	private Integer	surplusNum;
	
	@Column(name = "success_num", columnDefinition = " int default 0  COMMENT '完成数量'")
	private Integer	successNum;
	
	@Column(name = "task_flag", columnDefinition = " int default 0  COMMENT '采集通用标识' ")
	private Integer	taskFlag;
	
	@Column(name = "error_num", columnDefinition = " int default 0  COMMENT '采集出错数量'")
	private Integer	errorNum;
	
	@Column(name = "excute_flag", columnDefinition = " int default 0 COMMENT '执行状态'")
	private Integer	excuteFlag;
	
	@Column(name = "excute_batch", columnDefinition = " varchar(500) COMMENT '执行的命令'")
	private String	excuteBatch;
	
	@Column(name = "discription", columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String	discription;
	
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date	createTime;
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String	createUser;
	
	@Column(name = "update_time", insertable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP   COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date	updateTime;	 // updata_time 更新时间
	
	@Column(name = "update_user", insertable = false, columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String	updateUser;	 // updata_user 更新人
	
	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer	deleteFlag	= 0;
	
	private String	homeStatue;
	
	/**  
	 *  方法名 ： getUuid 
	 *  功    能 ： 返回变量 uuid 的值  
	 *  @return: String 
	 */
	public String getUuid() {
		return uuid;
	}
	
	/**  
	 *  方法名 ： setUuid 
	 *  功    能 ： 设置变量 uuid 的值
	 */
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	/**  
	 *  方法名 ： getTaskName 
	 *  功    能 ： 返回变量 taskName 的值  
	 *  @return: String 
	 */
	public String getTaskName() {
		return taskName;
	}
	
	/**  
	 *  方法名 ： setTaskName 
	 *  功    能 ： 设置变量 taskName 的值
	 */
	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}
	
	/**  
	 *  方法名 ： getStartTime 
	 *  功    能 ： 返回变量 startTime 的值  
	 *  @return: Date 
	 */
	public Date getStartTime() {
		return startTime;
	}
	
	/**  
	 *  方法名 ： setStartTime 
	 *  功    能 ： 设置变量 startTime 的值
	 */
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	
	/**  
	 *  方法名 ： getLastExcuteTime 
	 *  功    能 ： 返回变量 lastExcuteTime 的值  
	 *  @return: Date 
	 */
	public Date getLastExcuteTime() {
		return lastExcuteTime;
	}
	
	/**  
	 *  方法名 ： setLastExcuteTime 
	 *  功    能 ： 设置变量 lastExcuteTime 的值
	 */
	public void setLastExcuteTime(Date lastExcuteTime) {
		this.lastExcuteTime = lastExcuteTime;
	}
	
	/**  
	 *  方法名 ： getSurplusNum 
	 *  功    能 ： 返回变量 surplusNum 的值  
	 *  @return: Integer 
	 */
	public Integer getSurplusNum() {
		return surplusNum;
	}
	
	/**  
	 *  方法名 ： setSurplusNum 
	 *  功    能 ： 设置变量 surplusNum 的值
	 */
	public void setSurplusNum(Integer surplusNum) {
		this.surplusNum = surplusNum;
	}
	
	/**  
	 *  方法名 ： getSuccessNum 
	 *  功    能 ： 返回变量 successNum 的值  
	 *  @return: Integer 
	 */
	public Integer getSuccessNum() {
		return successNum;
	}
	
	/**  
	 *  方法名 ： setSuccessNum 
	 *  功    能 ： 设置变量 successNum 的值
	 */
	public void setSuccessNum(Integer successNum) {
		this.successNum = successNum;
	}
	
	/**  
	 *  方法名 ： getTaskFlag 
	 *  功    能 ： 返回变量 taskFlag 的值  
	 *  @return: Integer 
	 */
	public Integer getTaskFlag() {
		return taskFlag;
	}
	
	/**  
	 *  方法名 ： setTaskFlag 
	 *  功    能 ： 设置变量 taskFlag 的值
	 */
	public void setTaskFlag(Integer taskFlag) {
		this.taskFlag = taskFlag;
	}
	
	/**  
	 *  方法名 ： getErrorNum 
	 *  功    能 ： 返回变量 errorNum 的值  
	 *  @return: Integer 
	 */
	public Integer getErrorNum() {
		return errorNum;
	}
	
	/**  
	 *  方法名 ： setErrorNum 
	 *  功    能 ： 设置变量 errorNum 的值
	 */
	public void setErrorNum(Integer errorNum) {
		this.errorNum = errorNum;
	}
	
	/**  
	 *  方法名 ： getExcuteFlag 
	 *  功    能 ： 返回变量 excuteFlag 的值  
	 *  @return: Integer 
	 */
	public Integer getExcuteFlag() {
		return excuteFlag;
	}
	
	/**  
	 *  方法名 ： setExcuteFlag 
	 *  功    能 ： 设置变量 excuteFlag 的值
	 */
	public void setExcuteFlag(Integer excuteFlag) {
		this.excuteFlag = excuteFlag;
	}
	
	/**  
	 *  方法名 ： getExcuteBatch 
	 *  功    能 ： 返回变量 excuteBatch 的值  
	 *  @return: String 
	 */
	public String getExcuteBatch() {
		return excuteBatch;
	}
	
	/**  
	 *  方法名 ： setExcuteBatch 
	 *  功    能 ： 设置变量 excuteBatch 的值
	 */
	public void setExcuteBatch(String excuteBatch) {
		this.excuteBatch = excuteBatch;
	}
	
	/**  
	 *  方法名 ： getDiscription 
	 *  功    能 ： 返回变量 discription 的值  
	 *  @return: String 
	 */
	public String getDiscription() {
		return discription;
	}
	
	/**  
	 *  方法名 ： setDiscription 
	 *  功    能 ： 设置变量 discription 的值
	 */
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	
	/**  
	 *  方法名 ： getCreateTime 
	 *  功    能 ： 返回变量 createTime 的值  
	 *  @return: Date 
	 */
	public Date getCreateTime() {
		return createTime;
	}
	
	/**  
	 *  方法名 ： setCreateTime 
	 *  功    能 ： 设置变量 createTime 的值
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	/**  
	 *  方法名 ： getCreateUser 
	 *  功    能 ： 返回变量 createUser 的值  
	 *  @return: String 
	 */
	public String getCreateUser() {
		return createUser;
	}
	
	/**  
	 *  方法名 ： setCreateUser 
	 *  功    能 ： 设置变量 createUser 的值
	 */
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	
	/**  
	 *  方法名 ： getUpdateTime 
	 *  功    能 ： 返回变量 updateTime 的值  
	 *  @return: Date 
	 */
	public Date getUpdateTime() {
		return updateTime;
	}
	
	/**  
	 *  方法名 ： setUpdateTime 
	 *  功    能 ： 设置变量 updateTime 的值
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	/**  
	 *  方法名 ： getUpdateUser 
	 *  功    能 ： 返回变量 updateUser 的值  
	 *  @return: String 
	 */
	public String getUpdateUser() {
		return updateUser;
	}
	
	/**  
	 *  方法名 ： setUpdateUser 
	 *  功    能 ： 设置变量 updateUser 的值
	 */
	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}
	
	/**  
	 *  方法名 ： getDeleteFlag 
	 *  功    能 ： 返回变量 deleteFlag 的值  
	 *  @return: Integer 
	 */
	public Integer getDeleteFlag() {
		return deleteFlag;
	}
	
	/**  
	 *  方法名 ： setDeleteFlag 
	 *  功    能 ： 设置变量 deleteFlag 的值
	 */
	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	
	/**  
	 *  方法名 ： getUrlType 
	 *  功    能 ： 返回变量 urlType 的值  
	 *  @return: String 
	 */
	public String getUrlType() {
		return urlType;
	}
	
	/**  
	 *  方法名 ： setUrlType 
	 *  功    能 ： 设置变量 urlType 的值
	 */
	public void setUrlType(String urlType) {
		this.urlType = urlType;
	}
	
	/**  
	 *  方法名 ： getWebIcon 
	 *  功    能 ： 返回变量 webIcon 的值  
	 *  @return: String 
	 */
	public String getWebIcon() {
		return webIcon;
	}
	
	/**  
	 *  方法名 ： setWebIcon 
	 *  功    能 ： 设置变量 webIcon 的值
	 */
	public void setWebIcon(String webIcon) {
		this.webIcon = webIcon;
	}
	
	/**  
	 *  方法名 ： getUrl 
	 *  功    能 ： 返回变量 url 的值  
	 *  @return: String 
	 */
	public String getUrl() {
		return url;
	}
	
	/**  
	 *  方法名 ： setUrl 
	 *  功    能 ： 设置变量 url 的值
	 */
	public void setUrl(String url) {
		this.url = url;
	}
	
	/**  
	 *  方法名 ： getRequestData 
	 *  功    能 ： 返回变量 requestData 的值  
	 *  @return: String 
	 */
	public String getRequestData() {
		return requestData;
	}
	
	/**  
	 *  方法名 ： setRequestData 
	 *  功    能 ： 设置变量 requestData 的值
	 */
	public void setRequestData(String requestData) {
		this.requestData = requestData;
	}
	
	/**  
	 *  方法名 ： getRequestType 
	 *  功    能 ： 返回变量 requestType 的值  
	 *  @return: Integer 
	 */
	public String getRequestType() {
		return requestType;
	}
	
	/**  
	 *  方法名 ： setRequestType 
	 *  功    能 ： 设置变量 requestType 的值
	 */
	public void setRequestType(String requestType) {
		this.requestType = requestType;
	}
	
	/**  
	 *  方法名 ： getCharset 
	 *  功    能 ： 返回变量 charset 的值  
	 *  @return: String 
	 */
	public String getCharset() {
		return charset;
	}
	
	/**  
	 *  方法名 ： setCharset 
	 *  功    能 ： 设置变量 charset 的值
	 */
	public void setCharset(String charset) {
		this.charset = charset;
	}
	
	/** 
	*  方法名 ： toString
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @return  
	*  参    考 ： @see java.lang.Object#toString()  
	*  作    者 ： wang  
	*/
	
	@Override
	public String toString() {
		return "SysCrawlerTaskInfo [uuid=" + uuid + ", url=" + url + ", taskName=" + taskName + ", urlType=" + urlType + ", charset=" + charset + ", webIcon=" + webIcon + ", requestData=" + requestData + ", requestType=" + requestType + ", startTime=" + startTime + ", lastExcuteTime=" + lastExcuteTime + ", surplusNum=" + surplusNum + ", successNum=" + successNum + ", taskFlag=" + taskFlag + ", errorNum=" + errorNum + ", excuteFlag=" + excuteFlag + ", excuteBatch=" + excuteBatch + ", discription=" + discription + ", createTime=" + createTime + ", createUser=" + createUser + ", updateTime=" + updateTime + ", updateUser=" + updateUser + ", deleteFlag=" + deleteFlag + "]";
	}
	
	/**  
	 *  方法名 ： getHomeStatue 
	 *  功    能 ： 返回变量 homeStatue 的值  
	 *  @return: String 
	 */
	public String getHomeStatue() {
		return homeStatue;
	}
	
	/**  
	 *  方法名 ： setHomeStatue 
	 *  功    能 ： 设置变量 homeStatue 的值
	 */
	public void setHomeStatue(String homeStatue) {
		this.homeStatue = homeStatue;
	}
	
}
