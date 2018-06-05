package tk.ainiyue.danyuan.application.dbms.tabs.po;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * The persistent class for the sys_column_info database table.
 */
@Entity
@Table(name = "sys_dbms_tabs_cols_info")
@NamedQuery(name = "SysColumnInfo.findAll", query = "SELECT s FROM SysDbmsTabsColsInfo s")
public class SysDbmsTabsColsInfo implements Serializable {
	private static final long	serialVersionUID	= 1L;

	@Id
	@GenericGenerator(name = "idGenerator", strategy = " uuid ")
	@Column(unique = true, nullable = false, columnDefinition = " varchar(36) COMMENT '主键'")
	private String				uuid;
	
	@Column(name = "tabs_uuid", columnDefinition = " varchar(36) COMMENT '表id'")
	private String				tabsUuid;
	
	@Column(name = "cols_name", columnDefinition = " varchar(30) COMMENT '字段名'")
	private String				colsName;
	
	@Column(name = "cols_desc", columnDefinition = " varchar(50) COMMENT '字段含义'")
	private String				colsDesc;
	
	@Column(name = "cols_type", columnDefinition = " varchar(30) COMMENT '字段类型（varchar,number,text）'")
	private String				colsType;

	@Column(name = "cols_length", columnDefinition = " int COMMENT '字段长度'")
	private Integer				colsLength;
	
	@Column(name = "page_list", columnDefinition = " int COMMENT '字段列表展示隐藏'")
	private Integer				pageList;

	@Column(name = "cols_order", columnDefinition = " int COMMENT '字段顺序'")
	private Integer				colsOrder;

	@Column(name = "cols_align", columnDefinition = " varchar(36) default 'center' COMMENT '对齐方式'")
	private String				colsAlign;
	
	@Column(name = "cols_valign", columnDefinition = " varchar(36) default 'middle' COMMENT '对齐方式'")
	private String				colsValign;
	
	@Column(name = "cols_width", columnDefinition = " varchar(36) default 150 COMMENT '每列的宽度'")
	private String				colsWidth;

	@Column(name = "cols_visible", columnDefinition = " varchar(36) default 1 COMMENT '默认为true显示该列，设为false则隐藏该列'")
	private Boolean				colsVisible;

	@Column(name = "cols_switchable", columnDefinition = " varchar(36) default 1 COMMENT '默认为true显示该列，设为false则禁用列项目的选项卡。'")
	private Boolean				colsSwitchable;

	@Column(name = "user_index", columnDefinition = " varchar(10) COMMENT '用户查询列配置'")
	private String				userIndex;
	
	@Column(name = "user_icon", columnDefinition = " varchar(10) COMMENT '用户查询显示图标'")
	private String				userIcon;

	@Column(columnDefinition = " varchar(200) COMMENT '资源功能描述'")
	private String				discription;
	
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	private Date				createTime;
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String				createUser;
	
	@Column(name = "update_time", insertable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP   COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date				updateTime;					// updata_time 更新时间
	
	@Column(name = "update_user", insertable = false, columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String				updateUser;					// updata_user 更新人

	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer				deleteFlag;
	
	public SysDbmsTabsColsInfo() {
	}
	
	/**
	 * 方法名 ： getUuid
	 * 功 能 ： 返回变量 uuid 的值
	 * @return: String
	 */
	public String getUuid() {
		return uuid;
	}
	
	/**
	 * 方法名 ： setUuid
	 * 功 能 ： 设置变量 uuid 的值
	 */
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	/**
	 * 方法名 ： getColsLength
	 * 功 能 ： 返回变量 colsLength 的值
	 * @return: Integer
	 */
	public Integer getColsLength() {
		return colsLength;
	}
	
	/**
	 * 方法名 ： setColsLength
	 * 功 能 ： 设置变量 colsLength 的值
	 */
	public void setColsLength(Integer colsLength) {
		this.colsLength = colsLength;
	}
	
	/**
	 * 方法名 ： getColsDesc
	 * 功 能 ： 返回变量 colsDesc 的值
	 * @return: String
	 */
	public String getColsDesc() {
		return colsDesc;
	}
	
	/**
	 * 方法名 ： setColsDesc
	 * 功 能 ： 设置变量 colsDesc 的值
	 */
	public void setColsDesc(String colsDesc) {
		this.colsDesc = colsDesc;
	}
	
	/**
	 * 方法名 ： getColsName
	 * 功 能 ： 返回变量 colsName 的值
	 * @return: String
	 */
	public String getColsName() {
		return colsName;
	}
	
	/**
	 * 方法名 ： setColsName
	 * 功 能 ： 设置变量 colsName 的值
	 */
	public void setColsName(String colsName) {
		this.colsName = colsName;
	}
	
	/**
	 * 方法名 ： getColsOrder
	 * 功 能 ： 返回变量 colsOrder 的值
	 * @return: Integer
	 */
	public Integer getColsOrder() {
		return colsOrder;
	}
	
	/**
	 * 方法名 ： setColsOrder
	 * 功 能 ： 设置变量 colsOrder 的值
	 */
	public void setColsOrder(Integer colsOrder) {
		this.colsOrder = colsOrder;
	}
	
	/**
	 * 方法名 ： getColsType
	 * 功 能 ： 返回变量 colsType 的值
	 * @return: String
	 */
	public String getColsType() {
		return colsType;
	}
	
	/**
	 * 方法名 ： setColsType
	 * 功 能 ： 设置变量 colsType 的值
	 */
	public void setColsType(String colsType) {
		this.colsType = colsType;
	}
	
	/**
	 * 方法名 ： getCreateTime
	 * 功 能 ： 返回变量 createTime 的值
	 * @return: Date
	 */
	public Date getCreateTime() {
		return createTime;
	}
	
	/**
	 * 方法名 ： setCreateTime
	 * 功 能 ： 设置变量 createTime 的值
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	/**
	 * 方法名 ： getCreateUser
	 * 功 能 ： 返回变量 createUser 的值
	 * @return: String
	 */
	public String getCreateUser() {
		return createUser;
	}
	
	/**
	 * 方法名 ： setCreateUser
	 * 功 能 ： 设置变量 createUser 的值
	 */
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	
	/**
	 * 方法名 ： getDeleteFlag
	 * 功 能 ： 返回变量 deleteFlag 的值
	 * @return: Integer
	 */
	public Integer getDeleteFlag() {
		return deleteFlag;
	}
	
	/**
	 * 方法名 ： setDeleteFlag
	 * 功 能 ： 设置变量 deleteFlag 的值
	 */
	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	
	/**
	 * 方法名 ： getDiscription
	 * 功 能 ： 返回变量 discription 的值
	 * @return: String
	 */
	public String getDiscription() {
		return discription;
	}
	
	/**
	 * 方法名 ： setDiscription
	 * 功 能 ： 设置变量 discription 的值
	 */
	public void setDiscription(String discription) {
		this.discription = discription;
	}

	/**
	 * 方法名 ： getTabsUuid
	 * 功 能 ： 返回变量 tabsUuid 的值
	 * @return: String
	 */
	public String getTabsUuid() {
		return tabsUuid;
	}

	/**
	 * 方法名 ： setTabsUuid
	 * 功 能 ： 设置变量 tabsUuid 的值
	 */
	public void setTabsUuid(String tabsUuid) {
		this.tabsUuid = tabsUuid;
	}

	/**
	 * 方法名 ： getUpdateTime
	 * 功 能 ： 返回变量 updateTime 的值
	 * @return: Date
	 */
	public Date getUpdateTime() {
		return updateTime;
	}
	
	/**
	 * 方法名 ： setUpdateTime
	 * 功 能 ： 设置变量 updateTime 的值
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	/**
	 * 方法名 ： getUpdateUser
	 * 功 能 ： 返回变量 updateUser 的值
	 * @return: String
	 */
	public String getUpdateUser() {
		return updateUser;
	}
	
	/**
	 * 方法名 ： setUpdateUser
	 * 功 能 ： 设置变量 updateUser 的值
	 */
	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}
	
	public String getColsAlign() {
		return colsAlign;
	}

	public void setColsAlign(String colsAlign) {
		this.colsAlign = colsAlign;
	}

	public String getColsValign() {
		return colsValign;
	}

	public void setColsValign(String colsValign) {
		this.colsValign = colsValign;
	}

	public String getColsWidth() {
		return colsWidth;
	}

	public void setColsWidth(String colsWidth) {
		this.colsWidth = colsWidth;
	}

	public Boolean getColsVisible() {
		return colsVisible;
	}

	public void setColsVisible(Boolean colsVisible) {
		this.colsVisible = colsVisible;
	}

	public Boolean getColsSwitchable() {
		return colsSwitchable;
	}

	public void setColsSwitchable(Boolean colsSwitchable) {
		this.colsSwitchable = colsSwitchable;
	}

	/**
	 * 方法名 ： getUserIndex
	 * 功 能 ： 返回变量 userIndex 的值
	 * @return: String
	 */
	public String getUserIndex() {
		return userIndex;
	}

	/**
	 * 方法名 ： setUserIndex
	 * 功 能 ： 设置变量 userIndex 的值
	 */
	public void setUserIndex(String userIndex) {
		this.userIndex = userIndex;
	}

	/**
	 * 方法名 ： getUserIcon
	 * 功 能 ： 返回变量 userIcon 的值
	 * @return: String
	 */
	public String getUserIcon() {
		return userIcon;
	}
	
	/**
	 * 方法名 ： setUserIcon
	 * 功 能 ： 设置变量 userIcon 的值
	 */
	public void setUserIcon(String userIcon) {
		this.userIcon = userIcon;
	}
	
	/**
	 * 方法名 ： getPageList
	 * 功 能 ： 返回变量 pageList 的值
	 * @return: Integer
	 */
	public Integer getPageList() {
		return pageList;
	}
	
	/**
	 * 方法名 ： setPageList
	 * 功 能 ： 设置变量 pageList 的值
	 */
	public void setPageList(Integer pageList) {
		this.pageList = pageList;
	}
	
}