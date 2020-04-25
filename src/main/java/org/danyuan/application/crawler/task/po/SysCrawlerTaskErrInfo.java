package org.danyuan.application.crawler.task.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysCrawlerTaskErrInfo.java
 * @包名 org.danyuan.application.crawler.task.po
 * @描述 sys_crawler_task_err_info的实体类
 * @时间 2020年04月25日 11:27:02
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_crawler_task_err_info")
@NamedQuery(name = "SysCrawlerTaskErrInfo.findAll", query = "SELECT s FROM SysCrawlerTaskErrInfo s")
public class SysCrawlerTaskErrInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 任务id
	@Column(name = "task_uuid")
	private  String 	taskUuid;

	// 错误消息
	@Column(name = "error_msg")
	private  String 	errorMsg;

	// 错误网址
	@Column(name = "url")
	private  String 	url;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysCrawlerTaskErrInfo() {
		super();
	}


	/**
	 * 方法名 ： getTaskUuid
	 * 功 能 ： 返回变量 taskUuid 任务id 的值
	 *
	 * @return: String 
	 */
	public  String  getTaskUuid() {
		return taskUuid;
	}

	/**
	 * 方法名 ： setTaskUuid
	 * 功 能 ： 设置变量 taskUuid 任务id 的值
	 */
	public void setTaskUuid( String  taskUuid) {
		this.taskUuid = taskUuid;
	}

	/**
	 * 方法名 ： getErrorMsg
	 * 功 能 ： 返回变量 errorMsg 错误消息 的值
	 *
	 * @return: String 
	 */
	public  String  getErrorMsg() {
		return errorMsg;
	}

	/**
	 * 方法名 ： setErrorMsg
	 * 功 能 ： 设置变量 errorMsg 错误消息 的值
	 */
	public void setErrorMsg( String  errorMsg) {
		this.errorMsg = errorMsg;
	}

	/**
	 * 方法名 ： getUrl
	 * 功 能 ： 返回变量 url 错误网址 的值
	 *
	 * @return: String 
	 */
	public  String  getUrl() {
		return url;
	}

	/**
	 * 方法名 ： setUrl
	 * 功 能 ： 设置变量 url 错误网址 的值
	 */
	public void setUrl( String  url) {
		this.url = url;
	}


}
