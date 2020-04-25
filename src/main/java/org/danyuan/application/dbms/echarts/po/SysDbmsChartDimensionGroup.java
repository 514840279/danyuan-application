package org.danyuan.application.dbms.echarts.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysDbmsChartDimensionGroup.java
 * @包名 org.danyuan.application.dbms.echarts.po
 * @描述 sys_dbms_chart_dimension_group的实体类
 * @时间 2020年04月25日 12:15:43
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_dbms_chart_dimension_group")
@NamedQuery(name = "SysDbmsChartDimensionGroup.findAll", query = "SELECT s FROM SysDbmsChartDimensionGroup s")
public class SysDbmsChartDimensionGroup extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 主题
	@Column(name = "theme")
	private  String 	theme;

	// 分组排序
	@Column(name = "group_order",precision=10)
	private  Integer 	groupOrder;

	// 标题
	@Column(name = "title")
	private  String 	title;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysDbmsChartDimensionGroup() {
		super();
	}


	/**
	 * 方法名 ： getTheme
	 * 功 能 ： 返回变量 theme 主题 的值
	 *
	 * @return: String 
	 */
	public  String  getTheme() {
		return theme;
	}

	/**
	 * 方法名 ： setTheme
	 * 功 能 ： 设置变量 theme 主题 的值
	 */
	public void setTheme( String  theme) {
		this.theme = theme;
	}

	/**
	 * 方法名 ： getGroupOrder
	 * 功 能 ： 返回变量 groupOrder 分组排序 的值
	 *
	 * @return: String 
	 */
	public  Integer  getGroupOrder() {
		return groupOrder;
	}

	/**
	 * 方法名 ： setGroupOrder
	 * 功 能 ： 设置变量 groupOrder 分组排序 的值
	 */
	public void setGroupOrder( Integer  groupOrder) {
		this.groupOrder = groupOrder;
	}

	/**
	 * 方法名 ： getTitle
	 * 功 能 ： 返回变量 title 标题 的值
	 *
	 * @return: String 
	 */
	public  String  getTitle() {
		return title;
	}

	/**
	 * 方法名 ： setTitle
	 * 功 能 ： 设置变量 title 标题 的值
	 */
	public void setTitle( String  title) {
		this.title = title;
	}


}
