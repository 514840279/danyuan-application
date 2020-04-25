package org.danyuan.application.crawler.param.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysCrawlerRulerColumInfo.java
 * @包名 org.danyuan.application.crawler.param.po
 * @描述 sys_crawler_ruler_colum_info的实体类
 * @时间 2020年04月25日 08:00:23
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_crawler_ruler_colum_info")
@NamedQuery(name = "SysCrawlerRulerColumInfo.findAll", query = "SELECT s FROM SysCrawlerRulerColumInfo s")
public class SysCrawlerRulerColumInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 列名称
	@Column(name = "colum_name")
	private  String 	columName;

	// 规则id
	@Column(name = "ruler_uuid")
	private  String 	rulerUuid;

	// 拼接或替换的字符串
	@Column(name = "param")
	private  String 	param;

	// 
	@Column(name = "end",precision=10)
	private  Integer 	end;

	// 2整型脚标
	@Column(name = "spl2",precision=10)
	private  Integer 	spl2;

	// split 1字符串
	@Column(name = "spl1")
	private  String 	spl1;

	// 
	@Column(name = "start",precision=10)
	private  Integer 	start;

	// 取内容规则
	@Column(name = "ruler")
	private  String 	ruler;

	// 
	@Column(name = "param_new")
	private  String 	paramNew;

	// 取一个 整型
	@Column(name = "arr",precision=10)
	private  Integer 	arr;

	// 上一层
	@Column(name = "parent_uuid")
	private  String 	parentUuid;

	// apand 方式 字符
	@Column(name = "app1")
	private  String 	app1;

	// 处理方式
	@Column(name = "type")
	private  String 	type;

	// 
	@Column(name = "md5flag")
	private  String 	md5flag;

	// apand 字符
	@Column(name = "app2")
	private  String 	app2;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysCrawlerRulerColumInfo() {
		super();
	}


	/**
	 * 方法名 ： getColumName
	 * 功 能 ： 返回变量 columName 列名称 的值
	 *
	 * @return: String 
	 */
	public  String  getColumName() {
		return columName;
	}

	/**
	 * 方法名 ： setColumName
	 * 功 能 ： 设置变量 columName 列名称 的值
	 */
	public void setColumName( String  columName) {
		this.columName = columName;
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

	/**
	 * 方法名 ： getParam
	 * 功 能 ： 返回变量 param 拼接或替换的字符串 的值
	 *
	 * @return: String 
	 */
	public  String  getParam() {
		return param;
	}

	/**
	 * 方法名 ： setParam
	 * 功 能 ： 设置变量 param 拼接或替换的字符串 的值
	 */
	public void setParam( String  param) {
		this.param = param;
	}

	/**
	 * 方法名 ： getEnd
	 * 功 能 ： 返回变量 end  的值
	 *
	 * @return: String 
	 */
	public  Integer  getEnd() {
		return end;
	}

	/**
	 * 方法名 ： setEnd
	 * 功 能 ： 设置变量 end  的值
	 */
	public void setEnd( Integer  end) {
		this.end = end;
	}

	/**
	 * 方法名 ： getSpl2
	 * 功 能 ： 返回变量 spl2 2整型脚标 的值
	 *
	 * @return: String 
	 */
	public  Integer  getSpl2() {
		return spl2;
	}

	/**
	 * 方法名 ： setSpl2
	 * 功 能 ： 设置变量 spl2 2整型脚标 的值
	 */
	public void setSpl2( Integer  spl2) {
		this.spl2 = spl2;
	}

	/**
	 * 方法名 ： getSpl1
	 * 功 能 ： 返回变量 spl1 split 1字符串 的值
	 *
	 * @return: String 
	 */
	public  String  getSpl1() {
		return spl1;
	}

	/**
	 * 方法名 ： setSpl1
	 * 功 能 ： 设置变量 spl1 split 1字符串 的值
	 */
	public void setSpl1( String  spl1) {
		this.spl1 = spl1;
	}

	/**
	 * 方法名 ： getStart
	 * 功 能 ： 返回变量 start  的值
	 *
	 * @return: String 
	 */
	public  Integer  getStart() {
		return start;
	}

	/**
	 * 方法名 ： setStart
	 * 功 能 ： 设置变量 start  的值
	 */
	public void setStart( Integer  start) {
		this.start = start;
	}

	/**
	 * 方法名 ： getRuler
	 * 功 能 ： 返回变量 ruler 取内容规则 的值
	 *
	 * @return: String 
	 */
	public  String  getRuler() {
		return ruler;
	}

	/**
	 * 方法名 ： setRuler
	 * 功 能 ： 设置变量 ruler 取内容规则 的值
	 */
	public void setRuler( String  ruler) {
		this.ruler = ruler;
	}

	/**
	 * 方法名 ： getParamNew
	 * 功 能 ： 返回变量 paramNew  的值
	 *
	 * @return: String 
	 */
	public  String  getParamNew() {
		return paramNew;
	}

	/**
	 * 方法名 ： setParamNew
	 * 功 能 ： 设置变量 paramNew  的值
	 */
	public void setParamNew( String  paramNew) {
		this.paramNew = paramNew;
	}

	/**
	 * 方法名 ： getArr
	 * 功 能 ： 返回变量 arr 取一个 整型 的值
	 *
	 * @return: String 
	 */
	public  Integer  getArr() {
		return arr;
	}

	/**
	 * 方法名 ： setArr
	 * 功 能 ： 设置变量 arr 取一个 整型 的值
	 */
	public void setArr( Integer  arr) {
		this.arr = arr;
	}

	/**
	 * 方法名 ： getParentUuid
	 * 功 能 ： 返回变量 parentUuid 上一层 的值
	 *
	 * @return: String 
	 */
	public  String  getParentUuid() {
		return parentUuid;
	}

	/**
	 * 方法名 ： setParentUuid
	 * 功 能 ： 设置变量 parentUuid 上一层 的值
	 */
	public void setParentUuid( String  parentUuid) {
		this.parentUuid = parentUuid;
	}

	/**
	 * 方法名 ： getApp1
	 * 功 能 ： 返回变量 app1 apand 方式 字符 的值
	 *
	 * @return: String 
	 */
	public  String  getApp1() {
		return app1;
	}

	/**
	 * 方法名 ： setApp1
	 * 功 能 ： 设置变量 app1 apand 方式 字符 的值
	 */
	public void setApp1( String  app1) {
		this.app1 = app1;
	}

	/**
	 * 方法名 ： getType
	 * 功 能 ： 返回变量 type 处理方式 的值
	 *
	 * @return: String 
	 */
	public  String  getType() {
		return type;
	}

	/**
	 * 方法名 ： setType
	 * 功 能 ： 设置变量 type 处理方式 的值
	 */
	public void setType( String  type) {
		this.type = type;
	}

	/**
	 * 方法名 ： getMd5flag
	 * 功 能 ： 返回变量 md5flag  的值
	 *
	 * @return: String 
	 */
	public  String  getMd5flag() {
		return md5flag;
	}

	/**
	 * 方法名 ： setMd5flag
	 * 功 能 ： 设置变量 md5flag  的值
	 */
	public void setMd5flag( String  md5flag) {
		this.md5flag = md5flag;
	}

	/**
	 * 方法名 ： getApp2
	 * 功 能 ： 返回变量 app2 apand 字符 的值
	 *
	 * @return: String 
	 */
	public  String  getApp2() {
		return app2;
	}

	/**
	 * 方法名 ： setApp2
	 * 功 能 ： 设置变量 app2 apand 字符 的值
	 */
	public void setApp2( String  app2) {
		this.app2 = app2;
	}


}
