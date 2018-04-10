package tk.ainiyue.danyuan.application.common.config.syslog;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.hibernate.annotations.GenericGenerator;


/**    
 *  文件名 ： SysComnLogs.java 
 *  包    名 ： tk.ainiyue.danyuan.application.common.config.syslog 
 *  描    述 ： TODO(用一句话描述该文件做什么) 
 *  机能名称：
 *  技能ID ：
 *  作    者 ： Administrator  
 *  时    间 ： 2018年4月9日 下午2:18:23  
 *  版    本 ： V1.0 
 */
@Entity
@Table(name = "sys_comn_logs")
@DynamicInsert
@DynamicUpdate
public class SysComnLogs implements Serializable {
	/**  
	 *  @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)  
	 */
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "uuid", columnDefinition = " varchar(36) COMMENT '主键'")
	private String				uuid;
	@Column(name = "url", columnDefinition = " varchar(200) COMMENT '地址'")
	private String				url;
	@Column(name = "method", columnDefinition = " varchar(200) COMMENT '请求method'")
	private String				method;
	@Column(name = "ip", columnDefinition = " varchar(200) COMMENT 'ip'")
	private String				ip;
	@Column(name = "class_method", columnDefinition = " varchar(200) COMMENT '方法名'")
	private String				classMethod;
	@Column(name = "class_name", columnDefinition = " varchar(500) COMMENT '类名'")
	private String				className;
	@Column(name = "args", columnDefinition = " text COMMENT '请求参数'")
	private String				args;
	@Column(name = "request_long", columnDefinition = " int  COMMENT '请求响应时间'")
	private Long				requestLong;
	@Column(name = "create_time", columnDefinition = " timestamp default CURRENT_TIMESTAMP  COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	private Date				createTime;
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String				createUser;																								  // create_user
	@Column(name = "discription", columnDefinition = " varchar(200) COMMENT '资源功能描述'")
	private String				discription;
	
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
	 *  方法名 ： getMethod 
	 *  功    能 ： 返回变量 method 的值  
	 *  @return: String 
	 */
	public String getMethod() {
		return method;
	}
	
	/**  
	 *  方法名 ： setMethod 
	 *  功    能 ： 设置变量 method 的值
	 */
	public void setMethod(String method) {
		this.method = method;
	}
	
	/**  
	 *  方法名 ： getIp 
	 *  功    能 ： 返回变量 ip 的值  
	 *  @return: String 
	 */
	public String getIp() {
		return ip;
	}
	
	/**  
	 *  方法名 ： setIp 
	 *  功    能 ： 设置变量 ip 的值
	 */
	public void setIp(String ip) {
		this.ip = ip;
	}
	
	/**  
	 *  方法名 ： getClassMethod 
	 *  功    能 ： 返回变量 classMethod 的值  
	 *  @return: String 
	 */
	public String getClassMethod() {
		return classMethod;
	}
	
	/**  
	 *  方法名 ： setClassMethod 
	 *  功    能 ： 设置变量 classMethod 的值
	 */
	public void setClassMethod(String classMethod) {
		this.classMethod = classMethod;
	}
	
	/**  
	 *  方法名 ： getClassName 
	 *  功    能 ： 返回变量 className 的值  
	 *  @return: String 
	 */
	public String getClassName() {
		return className;
	}
	
	/**  
	 *  方法名 ： setClassName 
	 *  功    能 ： 设置变量 className 的值
	 */
	public void setClassName(String className) {
		this.className = className;
	}
	
	/**  
	 *  方法名 ： getArgs 
	 *  功    能 ： 返回变量 args 的值  
	 *  @return: String 
	 */
	public String getArgs() {
		return args;
	}
	
	/**  
	 *  方法名 ： setArgs 
	 *  功    能 ： 设置变量 args 的值
	 */
	public void setArgs(String args) {
		this.args = args;
	}

	/**  
	 *  方法名 ： getRequestLong 
	 *  功    能 ： 返回变量 requestLong 的值  
	 *  @return: Integer 
	 */
	public Long getRequestLong() {
		return requestLong;
	}

	/**  
	 *  方法名 ： setRequestLong 
	 *  功    能 ： 设置变量 requestLong 的值
	 */
	public void setRequestLong(Long requestLong) {
		this.requestLong = requestLong;
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
	
	
}
