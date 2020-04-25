package org.danyuan.application.dbms.echarts.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysDbmsChartDimension.java
 * @包名 org.danyuan.application.dbms.echarts.po
 * @描述 sys_dbms_chart_dimension的实体类
 * @时间 2020年04月25日 12:15:42
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_dbms_chart_dimension")
@NamedQuery(name = "SysDbmsChartDimension.findAll", query = "SELECT s FROM SysDbmsChartDimension s")
public class SysDbmsChartDimension extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 统计类型是个数,还是求和
	@Column(name = "count_type")
	private  String 	countType;

	// 高度
	@Column(name = "height")
	private  String 	height;

	// 排序
	@Column(name = "dime_order",precision=10)
	private  Integer 	dimeOrder;

	// 开始统计的位置
	@Column(name = "start_num",precision=10)
	private  Integer 	startNum;

	// 主题
	@Column(name = "theme")
	private  String 	theme;

	// 统计维度4
	@Column(name = "lable_uuid4")
	private  String 	lableUuid4;

	// 图表组id
	@Column(name = "group_uuid")
	private  String 	groupUuid;

	// 数据库id
	@Column(name = "db_uuid")
	private  String 	dbUuid;

	// 表id
	@Column(name = "table_uuid")
	private  String 	tableUuid;

	// 高度
	@Column(name = "heigth")
	private  String 	heigth;

	// 结束数量
	@Column(name = "end_num",precision=10)
	private  Integer 	endNum;

	// 统计维度1
	@Column(name = "lable_uuid")
	private  String 	lableUuid;

	// 宽度
	@Column(name = "width")
	private  String 	width;

	// 统计维度2
	@Column(name = "lable_uuid2")
	private  String 	lableUuid2;

	// 图标类型,柱图,折线图...
	@Column(name = "chart_type")
	private  String 	chartType;

	// 标题
	@Column(name = "title")
	private  String 	title;

	// 列维度3
	@Column(name = "lable_uuid3")
	private  String 	lableUuid3;

	// 表类型id
	@Column(name = "table_type_uuid")
	private  String 	tableTypeUuid;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysDbmsChartDimension() {
		super();
	}


	/**
	 * 方法名 ： getCountType
	 * 功 能 ： 返回变量 countType 统计类型是个数,还是求和 的值
	 *
	 * @return: String 
	 */
	public  String  getCountType() {
		return countType;
	}

	/**
	 * 方法名 ： setCountType
	 * 功 能 ： 设置变量 countType 统计类型是个数,还是求和 的值
	 */
	public void setCountType( String  countType) {
		this.countType = countType;
	}

	/**
	 * 方法名 ： getHeight
	 * 功 能 ： 返回变量 height 高度 的值
	 *
	 * @return: String 
	 */
	public  String  getHeight() {
		return height;
	}

	/**
	 * 方法名 ： setHeight
	 * 功 能 ： 设置变量 height 高度 的值
	 */
	public void setHeight( String  height) {
		this.height = height;
	}

	/**
	 * 方法名 ： getDimeOrder
	 * 功 能 ： 返回变量 dimeOrder 排序 的值
	 *
	 * @return: String 
	 */
	public  Integer  getDimeOrder() {
		return dimeOrder;
	}

	/**
	 * 方法名 ： setDimeOrder
	 * 功 能 ： 设置变量 dimeOrder 排序 的值
	 */
	public void setDimeOrder( Integer  dimeOrder) {
		this.dimeOrder = dimeOrder;
	}

	/**
	 * 方法名 ： getStartNum
	 * 功 能 ： 返回变量 startNum 开始统计的位置 的值
	 *
	 * @return: String 
	 */
	public  Integer  getStartNum() {
		return startNum;
	}

	/**
	 * 方法名 ： setStartNum
	 * 功 能 ： 设置变量 startNum 开始统计的位置 的值
	 */
	public void setStartNum( Integer  startNum) {
		this.startNum = startNum;
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
	 * 方法名 ： getLableUuid4
	 * 功 能 ： 返回变量 lableUuid4 统计维度4 的值
	 *
	 * @return: String 
	 */
	public  String  getLableUuid4() {
		return lableUuid4;
	}

	/**
	 * 方法名 ： setLableUuid4
	 * 功 能 ： 设置变量 lableUuid4 统计维度4 的值
	 */
	public void setLableUuid4( String  lableUuid4) {
		this.lableUuid4 = lableUuid4;
	}

	/**
	 * 方法名 ： getGroupUuid
	 * 功 能 ： 返回变量 groupUuid 图表组id 的值
	 *
	 * @return: String 
	 */
	public  String  getGroupUuid() {
		return groupUuid;
	}

	/**
	 * 方法名 ： setGroupUuid
	 * 功 能 ： 设置变量 groupUuid 图表组id 的值
	 */
	public void setGroupUuid( String  groupUuid) {
		this.groupUuid = groupUuid;
	}

	/**
	 * 方法名 ： getDbUuid
	 * 功 能 ： 返回变量 dbUuid 数据库id 的值
	 *
	 * @return: String 
	 */
	public  String  getDbUuid() {
		return dbUuid;
	}

	/**
	 * 方法名 ： setDbUuid
	 * 功 能 ： 设置变量 dbUuid 数据库id 的值
	 */
	public void setDbUuid( String  dbUuid) {
		this.dbUuid = dbUuid;
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
	 * 方法名 ： getHeigth
	 * 功 能 ： 返回变量 heigth 高度 的值
	 *
	 * @return: String 
	 */
	public  String  getHeigth() {
		return heigth;
	}

	/**
	 * 方法名 ： setHeigth
	 * 功 能 ： 设置变量 heigth 高度 的值
	 */
	public void setHeigth( String  heigth) {
		this.heigth = heigth;
	}

	/**
	 * 方法名 ： getEndNum
	 * 功 能 ： 返回变量 endNum 结束数量 的值
	 *
	 * @return: String 
	 */
	public  Integer  getEndNum() {
		return endNum;
	}

	/**
	 * 方法名 ： setEndNum
	 * 功 能 ： 设置变量 endNum 结束数量 的值
	 */
	public void setEndNum( Integer  endNum) {
		this.endNum = endNum;
	}

	/**
	 * 方法名 ： getLableUuid
	 * 功 能 ： 返回变量 lableUuid 统计维度1 的值
	 *
	 * @return: String 
	 */
	public  String  getLableUuid() {
		return lableUuid;
	}

	/**
	 * 方法名 ： setLableUuid
	 * 功 能 ： 设置变量 lableUuid 统计维度1 的值
	 */
	public void setLableUuid( String  lableUuid) {
		this.lableUuid = lableUuid;
	}

	/**
	 * 方法名 ： getWidth
	 * 功 能 ： 返回变量 width 宽度 的值
	 *
	 * @return: String 
	 */
	public  String  getWidth() {
		return width;
	}

	/**
	 * 方法名 ： setWidth
	 * 功 能 ： 设置变量 width 宽度 的值
	 */
	public void setWidth( String  width) {
		this.width = width;
	}

	/**
	 * 方法名 ： getLableUuid2
	 * 功 能 ： 返回变量 lableUuid2 统计维度2 的值
	 *
	 * @return: String 
	 */
	public  String  getLableUuid2() {
		return lableUuid2;
	}

	/**
	 * 方法名 ： setLableUuid2
	 * 功 能 ： 设置变量 lableUuid2 统计维度2 的值
	 */
	public void setLableUuid2( String  lableUuid2) {
		this.lableUuid2 = lableUuid2;
	}

	/**
	 * 方法名 ： getChartType
	 * 功 能 ： 返回变量 chartType 图标类型,柱图,折线图... 的值
	 *
	 * @return: String 
	 */
	public  String  getChartType() {
		return chartType;
	}

	/**
	 * 方法名 ： setChartType
	 * 功 能 ： 设置变量 chartType 图标类型,柱图,折线图... 的值
	 */
	public void setChartType( String  chartType) {
		this.chartType = chartType;
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

	/**
	 * 方法名 ： getLableUuid3
	 * 功 能 ： 返回变量 lableUuid3 列维度3 的值
	 *
	 * @return: String 
	 */
	public  String  getLableUuid3() {
		return lableUuid3;
	}

	/**
	 * 方法名 ： setLableUuid3
	 * 功 能 ： 设置变量 lableUuid3 列维度3 的值
	 */
	public void setLableUuid3( String  lableUuid3) {
		this.lableUuid3 = lableUuid3;
	}

	/**
	 * 方法名 ： getTableTypeUuid
	 * 功 能 ： 返回变量 tableTypeUuid 表类型id 的值
	 *
	 * @return: String 
	 */
	public  String  getTableTypeUuid() {
		return tableTypeUuid;
	}

	/**
	 * 方法名 ： setTableTypeUuid
	 * 功 能 ： 设置变量 tableTypeUuid 表类型id 的值
	 */
	public void setTableTypeUuid( String  tableTypeUuid) {
		this.tableTypeUuid = tableTypeUuid;
	}


}
