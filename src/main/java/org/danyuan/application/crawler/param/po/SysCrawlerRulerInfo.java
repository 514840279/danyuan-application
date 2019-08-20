package org.danyuan.application.crawler.param.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysCrawlerRulerInfo.java
 * @包名 org.danyuan.application.crawler.ruler.po
 * @描述 sys_crawler_ruler_info的实体类
 * @时间 2019年08月20日 12:49:37
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_crawler_ruler_info")
@NamedQuery(name = "SysCrawlerRulerInfo.findAll", query = "SELECT s FROM SysCrawlerRulerInfo s")
public class SysCrawlerRulerInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	// 规则类别
	@Column(name = "type")
	private String				type;
	
	// 规则信息
	@Column(name = "content_info")
	private String				contentInfo;
	// json格式化的信息
	@Column(name = "content_json_info")
	private String				contentJsonInfo;
	
	//
	@Column(name = "statue")
	private String				statue;
	
	// 任务id
	@Column(name = "task_uuid")
	private String				taskUuid;
	
	// 名称
	@Column(name = "name")
	private String				name;
	
	/**
	 * 构造方法：
	 * 描 述： 默认构造函数
	 * 参 数：
	 * 作 者 ： test
	 * @throws
	 */
	public SysCrawlerRulerInfo() {
		super();
	}
	
	/**
	 * 方法名 ： getType
	 * 功 能 ： 返回变量 type 规则类别 的值
	 *
	 * @return: String
	 */
	public String getType() {
		return type;
	}
	
	/**
	 * 方法名 ： setType
	 * 功 能 ： 设置变量 type 规则类别 的值
	 */
	public void setType(String type) {
		this.type = type;
	}
	
	/**
	 * 方法名 ： getContentInfo
	 * 功 能 ： 返回变量 contentInfo 规则信息 的值
	 *
	 * @return: String
	 */
	public String getContentInfo() {
		return contentInfo;
	}
	
	/**
	 * 方法名 ： setContentInfo
	 * 功 能 ： 设置变量 contentInfo 规则信息 的值
	 */
	public void setContentInfo(String contentInfo) {
		this.contentInfo = contentInfo;
	}
	
	/**
	 * 方法名 ： getStatue
	 * 功 能 ： 返回变量 statue 的值
	 *
	 * @return: String
	 */
	public String getStatue() {
		return statue;
	}
	
	/**
	 * 方法名 ： setStatue
	 * 功 能 ： 设置变量 statue 的值
	 */
	public void setStatue(String statue) {
		this.statue = statue;
	}
	
	/**
	 * 方法名 ： getTaskUuid
	 * 功 能 ： 返回变量 taskUuid 任务id 的值
	 *
	 * @return: String
	 */
	public String getTaskUuid() {
		return taskUuid;
	}
	
	/**
	 * 方法名 ： setTaskUuid
	 * 功 能 ： 设置变量 taskUuid 任务id 的值
	 */
	public void setTaskUuid(String taskUuid) {
		this.taskUuid = taskUuid;
	}
	
	/**
	 * 方法名 ： getName
	 * 功 能 ： 返回变量 name 名称 的值
	 *
	 * @return: String
	 */
	public String getName() {
		return name;
	}
	
	/**
	 * 方法名 ： setName
	 * 功 能 ： 设置变量 name 名称 的值
	 */
	public void setName(String name) {
		this.name = name;
	}
	
	/**
	 * @方法名 getContentJsonInfo
	 * @功能 返回变量 contentJsonInfo 的值
	 * @return String
	 */
	public String getContentJsonInfo() {
		return contentJsonInfo;
	}
	
	/**
	 * @方法名 setContentJsonInfo
	 * @功能 设置变量 contentJsonInfo 的值
	 */
	public void setContentJsonInfo(String contentJsonInfo) {
		this.contentJsonInfo = contentJsonInfo;
	}
	
}
