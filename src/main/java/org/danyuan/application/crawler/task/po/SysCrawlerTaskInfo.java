package org.danyuan.application.crawler.task.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysCrawlerTaskInfo.java
 * @包名 org.danyuan.application.crawler.task.po
 * @描述 sys_crawler_task_info的实体类
 * @时间 2020年04月25日 11:27:02
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_crawler_task_info")
@NamedQuery(name = "SysCrawlerTaskInfo.findAll", query = "SELECT s FROM SysCrawlerTaskInfo s")
public class SysCrawlerTaskInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 执行状态(执行中，已停止)
	@Column(name = "excute_flag",precision=10)
	private  Integer 	excuteFlag;

	// 是通用平台采集，还是执行上传的自定义采集程序,自定义采集程序将不会进入统计信息，需自己添加统计的内容
	@Column(name = "task_flag",precision=10)
	private  Integer 	taskFlag;

	// 网站类型
	@Column(name = "url_type")
	private  String 	urlType;

	// 请求时间
	@Column(name = "request_data")
	private  String 	requestData;

	// 字符集
	@Column(name = "charset")
	private  String 	charset;

	// 详细信息配置
	@Column(name = "detail_conf")
	private  String 	detailConf;

	// 请求方式
	@Column(name = "request_type")
	private  String 	requestType;

	// 网站名称
	@Column(name = "url_name")
	private  String 	urlName;

	// 任务名称
	@Column(name = "task_name")
	private  String 	taskName;

	// 字典或列表配置
	@Column(name = "dict_conf")
	private  String 	dictConf;

	// 网站商标
	@Column(name = "web_icon")
	private  String 	webIcon;

	// 执行的命令
	@Column(name = "excute_batch")
	private  String 	excuteBatch;

	// 链接地址
	@Column(name = "url")
	private  String 	url;

	// 列表配置
	@Column(name = "list_conf")
	private  String 	listConf;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysCrawlerTaskInfo() {
		super();
	}


	/**
	 * 方法名 ： getExcuteFlag
	 * 功 能 ： 返回变量 excuteFlag 执行状态(执行中，已停止) 的值
	 *
	 * @return: String 
	 */
	public  Integer  getExcuteFlag() {
		return excuteFlag;
	}

	/**
	 * 方法名 ： setExcuteFlag
	 * 功 能 ： 设置变量 excuteFlag 执行状态(执行中，已停止) 的值
	 */
	public void setExcuteFlag( Integer  excuteFlag) {
		this.excuteFlag = excuteFlag;
	}

	/**
	 * 方法名 ： getTaskFlag
	 * 功 能 ： 返回变量 taskFlag 是通用平台采集，还是执行上传的自定义采集程序,自定义采集程序将不会进入统计信息，需自己添加统计的内容 的值
	 *
	 * @return: String 
	 */
	public  Integer  getTaskFlag() {
		return taskFlag;
	}

	/**
	 * 方法名 ： setTaskFlag
	 * 功 能 ： 设置变量 taskFlag 是通用平台采集，还是执行上传的自定义采集程序,自定义采集程序将不会进入统计信息，需自己添加统计的内容 的值
	 */
	public void setTaskFlag( Integer  taskFlag) {
		this.taskFlag = taskFlag;
	}

	/**
	 * 方法名 ： getUrlType
	 * 功 能 ： 返回变量 urlType 网站类型 的值
	 *
	 * @return: String 
	 */
	public  String  getUrlType() {
		return urlType;
	}

	/**
	 * 方法名 ： setUrlType
	 * 功 能 ： 设置变量 urlType 网站类型 的值
	 */
	public void setUrlType( String  urlType) {
		this.urlType = urlType;
	}

	/**
	 * 方法名 ： getRequestData
	 * 功 能 ： 返回变量 requestData 请求时间 的值
	 *
	 * @return: String 
	 */
	public  String  getRequestData() {
		return requestData;
	}

	/**
	 * 方法名 ： setRequestData
	 * 功 能 ： 设置变量 requestData 请求时间 的值
	 */
	public void setRequestData( String  requestData) {
		this.requestData = requestData;
	}

	/**
	 * 方法名 ： getCharset
	 * 功 能 ： 返回变量 charset 字符集 的值
	 *
	 * @return: String 
	 */
	public  String  getCharset() {
		return charset;
	}

	/**
	 * 方法名 ： setCharset
	 * 功 能 ： 设置变量 charset 字符集 的值
	 */
	public void setCharset( String  charset) {
		this.charset = charset;
	}

	/**
	 * 方法名 ： getDetailConf
	 * 功 能 ： 返回变量 detailConf 详细信息配置 的值
	 *
	 * @return: String 
	 */
	public  String  getDetailConf() {
		return detailConf;
	}

	/**
	 * 方法名 ： setDetailConf
	 * 功 能 ： 设置变量 detailConf 详细信息配置 的值
	 */
	public void setDetailConf( String  detailConf) {
		this.detailConf = detailConf;
	}

	/**
	 * 方法名 ： getRequestType
	 * 功 能 ： 返回变量 requestType 请求方式 的值
	 *
	 * @return: String 
	 */
	public  String  getRequestType() {
		return requestType;
	}

	/**
	 * 方法名 ： setRequestType
	 * 功 能 ： 设置变量 requestType 请求方式 的值
	 */
	public void setRequestType( String  requestType) {
		this.requestType = requestType;
	}

	/**
	 * 方法名 ： getUrlName
	 * 功 能 ： 返回变量 urlName 网站名称 的值
	 *
	 * @return: String 
	 */
	public  String  getUrlName() {
		return urlName;
	}

	/**
	 * 方法名 ： setUrlName
	 * 功 能 ： 设置变量 urlName 网站名称 的值
	 */
	public void setUrlName( String  urlName) {
		this.urlName = urlName;
	}

	/**
	 * 方法名 ： getTaskName
	 * 功 能 ： 返回变量 taskName 任务名称 的值
	 *
	 * @return: String 
	 */
	public  String  getTaskName() {
		return taskName;
	}

	/**
	 * 方法名 ： setTaskName
	 * 功 能 ： 设置变量 taskName 任务名称 的值
	 */
	public void setTaskName( String  taskName) {
		this.taskName = taskName;
	}

	/**
	 * 方法名 ： getDictConf
	 * 功 能 ： 返回变量 dictConf 字典或列表配置 的值
	 *
	 * @return: String 
	 */
	public  String  getDictConf() {
		return dictConf;
	}

	/**
	 * 方法名 ： setDictConf
	 * 功 能 ： 设置变量 dictConf 字典或列表配置 的值
	 */
	public void setDictConf( String  dictConf) {
		this.dictConf = dictConf;
	}

	/**
	 * 方法名 ： getWebIcon
	 * 功 能 ： 返回变量 webIcon 网站商标 的值
	 *
	 * @return: String 
	 */
	public  String  getWebIcon() {
		return webIcon;
	}

	/**
	 * 方法名 ： setWebIcon
	 * 功 能 ： 设置变量 webIcon 网站商标 的值
	 */
	public void setWebIcon( String  webIcon) {
		this.webIcon = webIcon;
	}

	/**
	 * 方法名 ： getExcuteBatch
	 * 功 能 ： 返回变量 excuteBatch 执行的命令 的值
	 *
	 * @return: String 
	 */
	public  String  getExcuteBatch() {
		return excuteBatch;
	}

	/**
	 * 方法名 ： setExcuteBatch
	 * 功 能 ： 设置变量 excuteBatch 执行的命令 的值
	 */
	public void setExcuteBatch( String  excuteBatch) {
		this.excuteBatch = excuteBatch;
	}

	/**
	 * 方法名 ： getUrl
	 * 功 能 ： 返回变量 url 链接地址 的值
	 *
	 * @return: String 
	 */
	public  String  getUrl() {
		return url;
	}

	/**
	 * 方法名 ： setUrl
	 * 功 能 ： 设置变量 url 链接地址 的值
	 */
	public void setUrl( String  url) {
		this.url = url;
	}

	/**
	 * 方法名 ： getListConf
	 * 功 能 ： 返回变量 listConf 列表配置 的值
	 *
	 * @return: String 
	 */
	public  String  getListConf() {
		return listConf;
	}

	/**
	 * 方法名 ： setListConf
	 * 功 能 ： 设置变量 listConf 列表配置 的值
	 */
	public void setListConf( String  listConf) {
		this.listConf = listConf;
	}


}
