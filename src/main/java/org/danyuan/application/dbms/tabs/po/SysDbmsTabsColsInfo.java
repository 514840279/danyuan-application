package org.danyuan.application.dbms.tabs.po;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysDbmsTabsColsInfo.java
 * @包名 org.danyuan.application.dbms.tabs.po
 * @描述 sys_dbms_tabs_cols_info的实体类
 * @时间 2020年04月25日 12:15:38
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_dbms_tabs_cols_info")
@NamedQuery(name = "SysDbmsTabsColsInfo.findAll", query = "SELECT s FROM SysDbmsTabsColsInfo s")
public class SysDbmsTabsColsInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	// 表id
	@Column(name = "tabs_uuid")
	private String				tabsUuid;
	
	// 字段含义
	@Column(name = "cols_desc")
	private String				colsDesc;
	
	// 字段名
	@Column(name = "cols_name")
	private String				colsName;
	
	// 字段长度
	@Column(name = "cols_length", precision = 10)
	private Integer				colsLength;
	
	//
	@Column(name = "data_precision", precision = 10)
	private Integer				dataPrecision;
	
	// 停用标记
	@Column(name = "useful", precision = 10)
	private Integer				useful;
	
	// 用户查询列配置
	@Column(name = "user_index")
	private String				userIndex;
	
	// 字段顺序
	@Column(name = "cols_order", precision = 10)
	private Integer				colsOrder;
	
	// 字段类型（varchar,number,text）
	@Column(name = "cols_type")
	private String				colsType;
	
	//
	@Column(name = "nullable")
	private String				nullable;
	
	// 数据排序
	@Column(name = "cols_sort")
	private String				colsSort;
	
	//
	@Column(name = "data_scale", precision = 10)
	private Integer				dataScale;
	
	// 默认为true显示该列，设为false则禁用列项目的选项卡。
	@Column(name = "cols_switchable")
	private Boolean				colsSwitchable;
	
	// 对齐方式
	@Column(name = "cols_valign")
	private String				colsValign;
	
	// 字段列表展示隐藏
	@Column(name = "page_list", precision = 10)
	private Integer				pageList;
	
	// 用户查询显示图标
	@Column(name = "user_icon")
	private String				userIcon;
	
	// 每列的宽度
	@Column(name = "cols_width")
	private Integer				colsWidth;
	
	// 默认为true显示该列，设为false则禁用列项目的选项卡。
	@Column(name = "dime_flag", precision = 3)
	private Boolean				dimeFlag;
	
	// 默认为true显示该列，设为false则隐藏该列
	@Column(name = "cols_visible")
	private Boolean				colsVisible;
	
	//
	@Column(name = "cols_default")
	private String				colsDefault;
	
	// 对齐方式
	@Column(name = "cols_align")
	private String				colsAlign;
	
	/**
	 * 构造方法：
	 * 描 述： 默认构造函数
	 * 参 数：
	 * 作 者 ： test
	 * @throws
	 */
	public SysDbmsTabsColsInfo() {
		super();
	}
	
	public SysDbmsTabsColsInfo(String tabsUuid) {
		this.tabsUuid = tabsUuid;
	}
	
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param uuid
	 * 参 数： @param tabsUuid
	 * 参 数： @param colsName
	 * 参 数： @param colsDesc
	 * 参 数： @param colsType
	 * 参 数： @param colsLength
	 * 参 数： @param colsOrder
	 * 参 数： @param colsAlign
	 * 参 数： @param colsValign
	 * 参 数： @param colsWidth
	 * 参 数： @param colsVisible
	 * 参 数： @param colsSwitchable
	 * 参 数： @param userIndex
	 * 参 数： @param userIcon
	 * 参 数： @param discription
	 * 参 数： @param createTime
	 * 参 数： @param createUser
	 * 参 数： @param updateTime
	 * 参 数： @param updateUser
	 * 参 数： @param deleteFlag
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysDbmsTabsColsInfo(String uuid, String tabsUuid, String colsName, String colsDesc, String colsType, Integer colsLength, Integer pageList, Integer colsOrder, String colsAlign, String colsValign, Integer colsWidth, Boolean colsVisible, Boolean colsSwitchable, String userIndex, String userIcon, String discription, Date createTime, String createUser, Date updateTime, String updateUser, Integer deleteFlag) {
		super();
		this.uuid = uuid;
		this.tabsUuid = tabsUuid;
		this.colsName = colsName;
		this.colsDesc = colsDesc;
		this.colsType = colsType;
		this.colsLength = colsLength;
		this.colsOrder = colsOrder;
		this.colsAlign = colsAlign;
		this.colsValign = colsValign;
		this.colsWidth = colsWidth;
		this.colsVisible = colsVisible;
		this.colsSwitchable = colsSwitchable;
		this.userIndex = userIndex;
		this.userIcon = userIcon;
		this.discription = discription;
		this.createTime = createTime;
		this.createUser = createUser;
		this.updateTime = updateTime;
		this.updateUser = updateUser;
		this.deleteFlag = deleteFlag;
	}
	
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param uuid
	 * 参 数： @param tabsUuid
	 * 参 数： @param colsName
	 * 参 数： @param colsDesc
	 * 参 数： @param colsType
	 * 参 数： @param colsLength
	 * 参 数： @param colsOrder
	 * 参 数： @param colsAlign
	 * 参 数： @param colsValign
	 * 参 数： @param colsWidth
	 * 参 数： @param colsVisible
	 * 参 数： @param colsSwitchable
	 * 参 数： @param deleteFlag
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysDbmsTabsColsInfo(String uuid, String tabsUuid, String colsName, String colsDesc, String colsType, Integer colsLength, Integer pageList, Integer colsOrder, String colsAlign, String colsValign, Integer colsWidth, Boolean colsVisible, Boolean colsSwitchable, Integer deleteFlag) {
		super();
		this.uuid = uuid;
		this.tabsUuid = tabsUuid;
		this.colsName = colsName;
		this.colsDesc = colsDesc;
		this.colsType = colsType;
		this.colsLength = colsLength;
		this.colsOrder = colsOrder;
		this.colsAlign = colsAlign;
		this.colsValign = colsValign;
		this.colsWidth = colsWidth;
		this.colsVisible = colsVisible;
		this.colsSwitchable = colsSwitchable;
		this.deleteFlag = deleteFlag;
	}
	
	/**
	 * 方法名 ： getTabsUuid
	 * 功 能 ： 返回变量 tabsUuid 表id 的值
	 * @return: String
	 */
	public String getTabsUuid() {
		return tabsUuid;
	}
	
	/**
	 * 方法名 ： setTabsUuid
	 * 功 能 ： 设置变量 tabsUuid 表id 的值
	 */
	public void setTabsUuid(String tabsUuid) {
		this.tabsUuid = tabsUuid;
	}
	
	/**
	 * 方法名 ： getColsDesc
	 * 功 能 ： 返回变量 colsDesc 字段含义 的值
	 * @return: String
	 */
	public String getColsDesc() {
		return colsDesc;
	}
	
	/**
	 * 方法名 ： setColsDesc
	 * 功 能 ： 设置变量 colsDesc 字段含义 的值
	 */
	public void setColsDesc(String colsDesc) {
		this.colsDesc = colsDesc;
	}
	
	/**
	 * 方法名 ： getColsName
	 * 功 能 ： 返回变量 colsName 字段名 的值
	 * @return: String
	 */
	public String getColsName() {
		return colsName;
	}
	
	/**
	 * 方法名 ： setColsName
	 * 功 能 ： 设置变量 colsName 字段名 的值
	 */
	public void setColsName(String colsName) {
		this.colsName = colsName;
	}
	
	/**
	 * 方法名 ： getColsLength
	 * 功 能 ： 返回变量 colsLength 字段长度 的值
	 * @return: String
	 */
	public Integer getColsLength() {
		return colsLength;
	}
	
	/**
	 * 方法名 ： setColsLength
	 * 功 能 ： 设置变量 colsLength 字段长度 的值
	 */
	public void setColsLength(Integer colsLength) {
		this.colsLength = colsLength;
	}
	
	/**
	 * 方法名 ： getDataPrecision
	 * 功 能 ： 返回变量 dataPrecision 的值
	 * @return: String
	 */
	public Integer getDataPrecision() {
		return dataPrecision;
	}
	
	/**
	 * 方法名 ： setDataPrecision
	 * 功 能 ： 设置变量 dataPrecision 的值
	 */
	public void setDataPrecision(Integer dataPrecision) {
		this.dataPrecision = dataPrecision;
	}
	
	/**
	 * 方法名 ： getUseful
	 * 功 能 ： 返回变量 useful 停用标记 的值
	 * @return: String
	 */
	public Integer getUseful() {
		return useful;
	}
	
	/**
	 * 方法名 ： setUseful
	 * 功 能 ： 设置变量 useful 停用标记 的值
	 */
	public void setUseful(Integer useful) {
		this.useful = useful;
	}
	
	/**
	 * 方法名 ： getUserIndex
	 * 功 能 ： 返回变量 userIndex 用户查询列配置 的值
	 * @return: String
	 */
	public String getUserIndex() {
		return userIndex;
	}
	
	/**
	 * 方法名 ： setUserIndex
	 * 功 能 ： 设置变量 userIndex 用户查询列配置 的值
	 */
	public void setUserIndex(String userIndex) {
		this.userIndex = userIndex;
	}
	
	/**
	 * 方法名 ： getColsOrder
	 * 功 能 ： 返回变量 colsOrder 字段顺序 的值
	 * @return: String
	 */
	public Integer getColsOrder() {
		return colsOrder;
	}
	
	/**
	 * 方法名 ： setColsOrder
	 * 功 能 ： 设置变量 colsOrder 字段顺序 的值
	 */
	public void setColsOrder(Integer colsOrder) {
		this.colsOrder = colsOrder;
	}
	
	/**
	 * 方法名 ： getColsType
	 * 功 能 ： 返回变量 colsType 字段类型（varchar,number,text） 的值
	 * @return: String
	 */
	public String getColsType() {
		return colsType;
	}
	
	/**
	 * 方法名 ： setColsType
	 * 功 能 ： 设置变量 colsType 字段类型（varchar,number,text） 的值
	 */
	public void setColsType(String colsType) {
		this.colsType = colsType;
	}
	
	/**
	 * 方法名 ： getNullable
	 * 功 能 ： 返回变量 nullable 的值
	 * @return: String
	 */
	public String getNullable() {
		return nullable;
	}
	
	/**
	 * 方法名 ： getColsSort
	 * 功 能 ： 返回变量 colsSort 数据排序 的值
	 * @return: String
	 */
	public String getColsSort() {
		return colsSort;
	}
	
	/**
	 * 方法名 ： setColsSort
	 * 功 能 ： 设置变量 colsSort 数据排序 的值
	 */
	public void setColsSort(String colsSort) {
		this.colsSort = colsSort;
	}
	
	/**
	 * 方法名 ： getDataScale
	 * 功 能 ： 返回变量 dataScale 的值
	 * @return: String
	 */
	public Integer getDataScale() {
		return dataScale;
	}
	
	/**
	 * 方法名 ： setDataScale
	 * 功 能 ： 设置变量 dataScale 的值
	 */
	public void setDataScale(Integer dataScale) {
		this.dataScale = dataScale;
	}
	
	/**
	 * 方法名 ： getColsSwitchable
	 * 功 能 ： 返回变量 colsSwitchable 默认为true显示该列，设为false则禁用列项目的选项卡。 的值
	 * @return: String
	 */
	public Boolean getColsSwitchable() {
		return colsSwitchable;
	}
	
	/**
	 * 方法名 ： setColsSwitchable
	 * 功 能 ： 设置变量 colsSwitchable 默认为true显示该列，设为false则禁用列项目的选项卡。 的值
	 */
	public void setColsSwitchable(Boolean colsSwitchable) {
		this.colsSwitchable = colsSwitchable;
	}
	
	/**
	 * 方法名 ： getColsValign
	 * 功 能 ： 返回变量 colsValign 对齐方式 的值
	 * @return: String
	 */
	public String getColsValign() {
		return colsValign;
	}
	
	/**
	 * 方法名 ： setColsValign
	 * 功 能 ： 设置变量 colsValign 对齐方式 的值
	 */
	public void setColsValign(String colsValign) {
		this.colsValign = colsValign;
	}
	
	/**
	 * 方法名 ： getPageList
	 * 功 能 ： 返回变量 pageList 字段列表展示隐藏 的值
	 * @return: String
	 */
	public Integer getPageList() {
		return pageList;
	}
	
	/**
	 * 方法名 ： setPageList
	 * 功 能 ： 设置变量 pageList 字段列表展示隐藏 的值
	 */
	public void setPageList(Integer pageList) {
		this.pageList = pageList;
	}
	
	/**
	 * 方法名 ： getUserIcon
	 * 功 能 ： 返回变量 userIcon 用户查询显示图标 的值
	 * @return: String
	 */
	public String getUserIcon() {
		return userIcon;
	}
	
	/**
	 * 方法名 ： setUserIcon
	 * 功 能 ： 设置变量 userIcon 用户查询显示图标 的值
	 */
	public void setUserIcon(String userIcon) {
		this.userIcon = userIcon;
	}
	
	/**
	 * 方法名 ： getColsWidth
	 * 功 能 ： 返回变量 colsWidth 每列的宽度 的值
	 * @return: String
	 */
	public Integer getColsWidth() {
		return colsWidth;
	}
	
	/**
	 * 方法名 ： setColsWidth
	 * 功 能 ： 设置变量 colsWidth 每列的宽度 的值
	 */
	public void setColsWidth(Integer colsWidth) {
		this.colsWidth = colsWidth;
	}
	
	/**
	 * 方法名 ： getDimeFlag
	 * 功 能 ： 返回变量 dimeFlag 默认为true显示该列，设为false则禁用列项目的选项卡。 的值
	 * @return: String
	 */
	public Boolean getDimeFlag() {
		return dimeFlag;
	}
	
	/**
	 * 方法名 ： setDimeFlag
	 * 功 能 ： 设置变量 dimeFlag 默认为true显示该列，设为false则禁用列项目的选项卡。 的值
	 */
	public void setDimeFlag(Boolean dimeFlag) {
		this.dimeFlag = dimeFlag;
	}
	
	/**
	 * 方法名 ： getColsVisible
	 * 功 能 ： 返回变量 colsVisible 默认为true显示该列，设为false则隐藏该列 的值
	 * @return: String
	 */
	public Boolean getColsVisible() {
		return colsVisible;
	}
	
	/**
	 * 方法名 ： setColsVisible
	 * 功 能 ： 设置变量 colsVisible 默认为true显示该列，设为false则隐藏该列 的值
	 */
	public void setColsVisible(Boolean colsVisible) {
		this.colsVisible = colsVisible;
	}
	
	/**
	 * 方法名 ： getColsDefault
	 * 功 能 ： 返回变量 colsDefault 的值
	 * @return: String
	 */
	public String getColsDefault() {
		return colsDefault;
	}
	
	/**
	 * 方法名 ： setColsDefault
	 * 功 能 ： 设置变量 colsDefault 的值
	 */
	public void setColsDefault(String colsDefault) {
		this.colsDefault = colsDefault;
	}
	
	/**
	 * 方法名 ： getColsAlign
	 * 功 能 ： 返回变量 colsAlign 对齐方式 的值
	 * @return: String
	 */
	public String getColsAlign() {
		return colsAlign;
	}
	
	/**
	 * 方法名 ： setColsAlign
	 * 功 能 ： 设置变量 colsAlign 对齐方式 的值
	 */
	public void setColsAlign(String colsAlign) {
		this.colsAlign = colsAlign;
	}
	
	public void setNullable(String nullable) {
		if ("YES".equals(nullable)) {
			this.nullable = "Y";
		} else if ("NO".equals(nullable)) {
			this.nullable = "N";
		} else {
			this.nullable = nullable;
		}
	}
	
}
