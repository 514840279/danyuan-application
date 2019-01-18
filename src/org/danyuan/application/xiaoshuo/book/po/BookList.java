package org.danyuan.application.xiaoshuo.book.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 BookList.java
 * @包名 org.danyuan.application.xiaoshuo.book.po
 * @描述 起点列表的实体类
 * @时间 2019年01月18日 14:24:42
 * @author admin
 * @版本 V1.0
 */
@Entity
@Table(name = "起点列表")
@NamedQuery(name = "BookList.findAll", query = "SELECT s FROM BookList s")
public class BookList extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 
	@Column(name = "作者首页")
	private  String 	作者首页;

	// 
	@Column(name = "小说简介")
	private  String 	小说简介;

	// 
	@Column(name = "发布状态")
	private  String 	发布状态;

	// 
	@Column(name = "分类1")
	private  String 	分类1;

	// 
	@Column(name = "作者")
	private  String 	作者;

	// url的md5值
	@Column(name = "md5")
	private  String 	md5;

	// 
	@Column(name = "小说主页")
	private  String 	小说主页;

	// 
	@Column(name = "书名")
	private  String 	书名;

	// 
	@Column(name = "书面")
	private  String 	书面;

	// 
	@Column(name = "数据id")
	private  String 	数据id;

	// 
	@Column(name = "分类2")
	private  String 	分类2;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： admin  
	*  @throws  
	*/
	public BookList() {
		super();
	}


	/**
	 * 方法名 ： get作者首页
	 * 功 能 ： 返回变量 作者首页  的值
	 *
	 * @return: String 
	 */
	public  String  get作者首页() {
		return 作者首页;
	}

	/**
	 * 方法名 ： set作者首页
	 * 功 能 ： 设置变量 作者首页  的值
	 */
	public void set作者首页( String  作者首页) {
		this.作者首页 = 作者首页;
	}

	/**
	 * 方法名 ： get小说简介
	 * 功 能 ： 返回变量 小说简介  的值
	 *
	 * @return: String 
	 */
	public  String  get小说简介() {
		return 小说简介;
	}

	/**
	 * 方法名 ： set小说简介
	 * 功 能 ： 设置变量 小说简介  的值
	 */
	public void set小说简介( String  小说简介) {
		this.小说简介 = 小说简介;
	}

	/**
	 * 方法名 ： get发布状态
	 * 功 能 ： 返回变量 发布状态  的值
	 *
	 * @return: String 
	 */
	public  String  get发布状态() {
		return 发布状态;
	}

	/**
	 * 方法名 ： set发布状态
	 * 功 能 ： 设置变量 发布状态  的值
	 */
	public void set发布状态( String  发布状态) {
		this.发布状态 = 发布状态;
	}

	/**
	 * 方法名 ： get分类1
	 * 功 能 ： 返回变量 分类1  的值
	 *
	 * @return: String 
	 */
	public  String  get分类1() {
		return 分类1;
	}

	/**
	 * 方法名 ： set分类1
	 * 功 能 ： 设置变量 分类1  的值
	 */
	public void set分类1( String  分类1) {
		this.分类1 = 分类1;
	}

	/**
	 * 方法名 ： get作者
	 * 功 能 ： 返回变量 作者  的值
	 *
	 * @return: String 
	 */
	public  String  get作者() {
		return 作者;
	}

	/**
	 * 方法名 ： set作者
	 * 功 能 ： 设置变量 作者  的值
	 */
	public void set作者( String  作者) {
		this.作者 = 作者;
	}

	/**
	 * 方法名 ： getMd5
	 * 功 能 ： 返回变量 md5 url的md5值 的值
	 *
	 * @return: String 
	 */
	public  String  getMd5() {
		return md5;
	}

	/**
	 * 方法名 ： setMd5
	 * 功 能 ： 设置变量 md5 url的md5值 的值
	 */
	public void setMd5( String  md5) {
		this.md5 = md5;
	}

	/**
	 * 方法名 ： get小说主页
	 * 功 能 ： 返回变量 小说主页  的值
	 *
	 * @return: String 
	 */
	public  String  get小说主页() {
		return 小说主页;
	}

	/**
	 * 方法名 ： set小说主页
	 * 功 能 ： 设置变量 小说主页  的值
	 */
	public void set小说主页( String  小说主页) {
		this.小说主页 = 小说主页;
	}

	/**
	 * 方法名 ： get书名
	 * 功 能 ： 返回变量 书名  的值
	 *
	 * @return: String 
	 */
	public  String  get书名() {
		return 书名;
	}

	/**
	 * 方法名 ： set书名
	 * 功 能 ： 设置变量 书名  的值
	 */
	public void set书名( String  书名) {
		this.书名 = 书名;
	}

	/**
	 * 方法名 ： get书面
	 * 功 能 ： 返回变量 书面  的值
	 *
	 * @return: String 
	 */
	public  String  get书面() {
		return 书面;
	}

	/**
	 * 方法名 ： set书面
	 * 功 能 ： 设置变量 书面  的值
	 */
	public void set书面( String  书面) {
		this.书面 = 书面;
	}

	/**
	 * 方法名 ： get数据id
	 * 功 能 ： 返回变量 数据id  的值
	 *
	 * @return: String 
	 */
	public  String  get数据id() {
		return 数据id;
	}

	/**
	 * 方法名 ： set数据id
	 * 功 能 ： 设置变量 数据id  的值
	 */
	public void set数据id( String  数据id) {
		this.数据id = 数据id;
	}

	/**
	 * 方法名 ： get分类2
	 * 功 能 ： 返回变量 分类2  的值
	 *
	 * @return: String 
	 */
	public  String  get分类2() {
		return 分类2;
	}

	/**
	 * 方法名 ： set分类2
	 * 功 能 ： 设置变量 分类2  的值
	 */
	public void set分类2( String  分类2) {
		this.分类2 = 分类2;
	}


}
