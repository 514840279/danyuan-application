package org.danyuan.application.crawler.task.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysCrawlerTaskSelfCodeInfo.java
 * @包名 org.danyuan.application.crawler.task.po
 * @描述 sys_crawler_task_self_code_info的实体类
 * @时间 2020年04月25日 11:27:03
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_crawler_task_self_code_info")
@NamedQuery(name = "SysCrawlerTaskSelfCodeInfo.findAll", query = "SELECT s FROM SysCrawlerTaskSelfCodeInfo s")
public class SysCrawlerTaskSelfCodeInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 文件包名称
	@Column(name = "zip_file_name")
	private  String 	zipFileName;

	// 文件地址
	@Column(name = "file_path")
	private  String 	filePath;

	// 任务id
	@Column(name = "task_uuid")
	private  String 	taskUuid;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysCrawlerTaskSelfCodeInfo() {
		super();
	}


	/**
	 * 方法名 ： getZipFileName
	 * 功 能 ： 返回变量 zipFileName 文件包名称 的值
	 *
	 * @return: String 
	 */
	public  String  getZipFileName() {
		return zipFileName;
	}

	/**
	 * 方法名 ： setZipFileName
	 * 功 能 ： 设置变量 zipFileName 文件包名称 的值
	 */
	public void setZipFileName( String  zipFileName) {
		this.zipFileName = zipFileName;
	}

	/**
	 * 方法名 ： getFilePath
	 * 功 能 ： 返回变量 filePath 文件地址 的值
	 *
	 * @return: String 
	 */
	public  String  getFilePath() {
		return filePath;
	}

	/**
	 * 方法名 ： setFilePath
	 * 功 能 ： 设置变量 filePath 文件地址 的值
	 */
	public void setFilePath( String  filePath) {
		this.filePath = filePath;
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


}
