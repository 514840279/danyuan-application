package org.danyuan.application.crawler.config.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysCrawlerResultRulerInfo.java
 * @包名 org.danyuan.application.crawler.config.po
 * @描述 sys_crawler_result_ruler_info的实体类
 * @时间 2020年04月25日 08:00:23
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_crawler_result_ruler_info")
@NamedQuery(name = "SysCrawlerResultRulerInfo.findAll", query = "SELECT s FROM SysCrawlerResultRulerInfo s")
public class SysCrawlerResultRulerInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 表字段名
	@Column(name = "cols_name")
	private  String 	colsName;

	// 规则字段名
	@Column(name = "ruler_colum_name")
	private  String 	rulerColumName;

	// 表id
	@Column(name = "table_uuid")
	private  String 	tableUuid;

	// 规则字段id
	@Column(name = "ruler_colum_uuid")
	private  String 	rulerColumUuid;

	// 表字段id
	@Column(name = "cols_uuid")
	private  String 	colsUuid;

	// 规则id
	@Column(name = "ruler_uuid")
	private  String 	rulerUuid;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysCrawlerResultRulerInfo() {
		super();
	}


	/**
	 * 方法名 ： getColsName
	 * 功 能 ： 返回变量 colsName 表字段名 的值
	 *
	 * @return: String 
	 */
	public  String  getColsName() {
		return colsName;
	}

	/**
	 * 方法名 ： setColsName
	 * 功 能 ： 设置变量 colsName 表字段名 的值
	 */
	public void setColsName( String  colsName) {
		this.colsName = colsName;
	}

	/**
	 * 方法名 ： getRulerColumName
	 * 功 能 ： 返回变量 rulerColumName 规则字段名 的值
	 *
	 * @return: String 
	 */
	public  String  getRulerColumName() {
		return rulerColumName;
	}

	/**
	 * 方法名 ： setRulerColumName
	 * 功 能 ： 设置变量 rulerColumName 规则字段名 的值
	 */
	public void setRulerColumName( String  rulerColumName) {
		this.rulerColumName = rulerColumName;
	}

	/**
	 * 方法名 ： getTableUuid
	 * 功 能 ： 返回变量 tableUuid 表id 的值
	 *
	 * @return: String 
	 */
	public  String  getTableUuid() {
		return tableUuid;
	}

	/**
	 * 方法名 ： setTableUuid
	 * 功 能 ： 设置变量 tableUuid 表id 的值
	 */
	public void setTableUuid( String  tableUuid) {
		this.tableUuid = tableUuid;
	}

	/**
	 * 方法名 ： getRulerColumUuid
	 * 功 能 ： 返回变量 rulerColumUuid 规则字段id 的值
	 *
	 * @return: String 
	 */
	public  String  getRulerColumUuid() {
		return rulerColumUuid;
	}

	/**
	 * 方法名 ： setRulerColumUuid
	 * 功 能 ： 设置变量 rulerColumUuid 规则字段id 的值
	 */
	public void setRulerColumUuid( String  rulerColumUuid) {
		this.rulerColumUuid = rulerColumUuid;
	}

	/**
	 * 方法名 ： getColsUuid
	 * 功 能 ： 返回变量 colsUuid 表字段id 的值
	 *
	 * @return: String 
	 */
	public  String  getColsUuid() {
		return colsUuid;
	}

	/**
	 * 方法名 ： setColsUuid
	 * 功 能 ： 设置变量 colsUuid 表字段id 的值
	 */
	public void setColsUuid( String  colsUuid) {
		this.colsUuid = colsUuid;
	}

	/**
	 * 方法名 ： getRulerUuid
	 * 功 能 ： 返回变量 rulerUuid 规则id 的值
	 *
	 * @return: String 
	 */
	public  String  getRulerUuid() {
		return rulerUuid;
	}

	/**
	 * 方法名 ： setRulerUuid
	 * 功 能 ： 设置变量 rulerUuid 规则id 的值
	 */
	public void setRulerUuid( String  rulerUuid) {
		this.rulerUuid = rulerUuid;
	}


}
