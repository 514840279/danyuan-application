package tk.ainiyue.danyuan.application.zhcx.po;

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

/**
 * The persistent class for the sys_zhcx_cols database table.
 */
@Entity
@Table(name = "SYS_ZHCX_COLS")
@NamedQuery(name = "SysZhcxCol.findAll", query = "SELECT s FROM SysZhcxCol s")
public class SysZhcxCol implements Serializable {
	private static final long	serialVersionUID	= 1L;

	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "UUID")
	private String				uuid;

	@Column(name = "COLD_LENGTH")
	private Long				coldLength;

	@Column(name = "COLD_TYPE")
	private String				coldType;

	@Column(name = "COLS_DESC")
	private String				colsDesc;

	@Column(name = "COLS_NAME")
	private String				colsName;

	@Column(name = "COLS_ORDER")
	private Integer				colsOrder;

	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default sysdate COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.CreationTimestamp
	private Date				createTime;					// create_time
	// 插入时间

	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String				createUser;					// create_user
	// 插入人

	@Column(name = "update_time", columnDefinition = " timestamp  default sysdate  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.UpdateTimestamp
	private Date				updateTime;					// updata_time
	// 更新时间

	@Column(name = "update_user", columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String				updateUser;					// updata_user
	// 更新人

	@Column(name = "delete_flag")
	private Long				deleteFlag;					// delete_flag

	@Column(name = "MAX_LENGTH")
	private Long				maxLength;

	@Column(name = "PAGE_INPUT")
	private Boolean				pageInput;

	@Column(name = "PAGE_LIST")
	private Boolean				pageList;

	@Column(name = "PAGE_VIEW")
	private Boolean				pageView;

	@Column(name = "USER_INDEX")
	private String				userIndex;

	@Column(name = "TABS_UUID")
	private String				tabsUuid;
	@Column(name = "USER_ICON")
	private String				userIcon;

	// cols_align varchar 36 0 -1 0 0 0 0 0 对齐方式 utf8 utf8_general_ci 0 0
	@Column(name = "COLS_ALIGN")
	private String				colsAlign;
	// cols_valign varchar 36 0 -1 0 0 0 0 0 对齐方式 utf8 utf8_general_ci 0 0
	@Column(name = "COLS_VALIGN")
	private String				colsValign;
	// cols_switchable varchar 36 0 -1 0 0 0 0 0 默认为true显示该列，设为false则禁用列项目的选项卡。 utf8 utf8_general_ci 0 0
	@Column(name = "COLS_SWITCHABLE")
	private String				colsSwitchable;
	// cols_width varchar 36 0 -1 0 0 0 0 0 每列的宽度 utf8 utf8_general_ci 0 0
	@Column(name = "COLS_WIDTH")
	private String				colsWidth;

	// index_index CHAR(1),
	@Column(name = "INDEX_INDEX")
	private String				indexIndex;
	// index_keyword CHAR(1),
	@Column(name = "INDEX_KEYWORD")
	private String				indexKeyword;
	// index_ikmaxword CHAR(1),
	@Column(name = "INDEX_IKMAXWORD")
	private String				indexIkmaxword;
	// index_geopoint CHAR(1),
	@Column(name = "INDEX_GEOPOINT")
	private String				indexGeopoint;
	// index_ipaddress CHAR(1),
	@Column(name = "INDEX_IPADDRESS")
	private String				indexIpaddress;
	// index_pinyin CHAR(1),
	@Column(name = "INDEX_PINYIN")
	private String				indexPinyin;
	// index_all CHAR(1),
	@Column(name = "INDEX_ALL")
	private String				indexAll;

	public SysZhcxCol() {
	}

	public String getUuid() {
		return this.uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	/**
	 * 方法名 ： getColdLength
	 * 功 能 ： 返回变量 coldLength 的值
	 * @return: Long
	 */
	public Long getColdLength() {
		return coldLength;
	}

	/**
	 * 方法名 ： setColdLength
	 * 功 能 ： 设置变量 coldLength 的值
	 */
	public void setColdLength(Long coldLength) {
		this.coldLength = coldLength;
	}

	public String getColdType() {
		return this.coldType;
	}

	public void setColdType(String coldType) {
		this.coldType = coldType;
	}

	public String getColsDesc() {
		return this.colsDesc;
	}

	public void setColsDesc(String colsDesc) {
		this.colsDesc = colsDesc;
	}

	public String getColsName() {
		return this.colsName;
	}

	public void setColsName(String colsName) {
		this.colsName = colsName;
	}

	public Integer getColsOrder() {
		return this.colsOrder;
	}

	public void setColsOrder(Integer colsOrder) {
		this.colsOrder = colsOrder;
	}

	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getCreateUser() {
		return this.createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	/**
	 * 方法名 ： getDeleteFlag
	 * 功 能 ： 返回变量 deleteFlag 的值
	 * @return: Long
	 */
	public Long getDeleteFlag() {
		return deleteFlag;
	}

	/**
	 * 方法名 ： setDeleteFlag
	 * 功 能 ： 设置变量 deleteFlag 的值
	 */
	public void setDeleteFlag(Long deleteFlag) {
		this.deleteFlag = deleteFlag;
	}

	/**
	 * 方法名 ： getMaxLength
	 * 功 能 ： 返回变量 maxLength 的值
	 * @return: Long
	 */
	public Long getMaxLength() {
		return maxLength;
	}

	/**
	 * 方法名 ： setMaxLength
	 * 功 能 ： 设置变量 maxLength 的值
	 */
	public void setMaxLength(Long maxLength) {
		this.maxLength = maxLength;
	}

	/**
	 * 方法名 ： getPageInput
	 * 功 能 ： 返回变量 pageInput 的值
	 * @return: Boolean
	 */
	public Boolean getPageInput() {
		return pageInput;
	}

	/**
	 * 方法名 ： setPageInput
	 * 功 能 ： 设置变量 pageInput 的值
	 */
	public void setPageInput(Boolean pageInput) {
		this.pageInput = pageInput;
	}

	/**
	 * 方法名 ： getPageList
	 * 功 能 ： 返回变量 pageList 的值
	 * @return: Boolean
	 */
	public Boolean getPageList() {
		return pageList;
	}

	/**
	 * 方法名 ： setPageList
	 * 功 能 ： 设置变量 pageList 的值
	 */
	public void setPageList(Boolean pageList) {
		this.pageList = pageList;
	}

	/**
	 * 方法名 ： getPageView
	 * 功 能 ： 返回变量 pageView 的值
	 * @return: Boolean
	 */
	public Boolean getPageView() {
		return pageView;
	}

	/**
	 * 方法名 ： setPageView
	 * 功 能 ： 设置变量 pageView 的值
	 */
	public void setPageView(Boolean pageView) {
		this.pageView = pageView;
	}

	public Date getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getUpdateUser() {
		return this.updateUser;
	}

	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

	public String getUserIndex() {
		return this.userIndex;
	}

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
	 * 方法名 ： getColsAlign
	 * 功 能 ： 返回变量 colsAlign 的值
	 * @return: String
	 */
	public String getColsAlign() {
		return colsAlign;
	}

	/**
	 * 方法名 ： setColsAlign
	 * 功 能 ： 设置变量 colsAlign 的值
	 */
	public void setColsAlign(String colsAlign) {
		this.colsAlign = colsAlign;
	}

	/**
	 * 方法名 ： getColsValign
	 * 功 能 ： 返回变量 colsValign 的值
	 * @return: String
	 */
	public String getColsValign() {
		return colsValign;
	}

	/**
	 * 方法名 ： setColsValign
	 * 功 能 ： 设置变量 colsValign 的值
	 */
	public void setColsValign(String colsValign) {
		this.colsValign = colsValign;
	}

	/**
	 * 方法名 ： getColsSwitchable
	 * 功 能 ： 返回变量 colsSwitchable 的值
	 * @return: String
	 */
	public String getColsSwitchable() {
		return colsSwitchable;
	}

	/**
	 * 方法名 ： setColsSwitchable
	 * 功 能 ： 设置变量 colsSwitchable 的值
	 */
	public void setColsSwitchable(String colsSwitchable) {
		this.colsSwitchable = colsSwitchable;
	}

	/**
	 * 方法名 ： getColsWidth
	 * 功 能 ： 返回变量 colsWidth 的值
	 * @return: String
	 */
	public String getColsWidth() {
		return colsWidth;
	}

	/**
	 * 方法名 ： setColsWidth
	 * 功 能 ： 设置变量 colsWidth 的值
	 */
	public void setColsWidth(String colsWidth) {
		this.colsWidth = colsWidth;
	}

	/**
	 * 方法名 ： getIndexIndex
	 * 功 能 ： 返回变量 indexIndex 的值
	 * @return: String
	 */
	public String getIndexIndex() {
		return indexIndex;
	}

	/**
	 * 方法名 ： setIndexIndex
	 * 功 能 ： 设置变量 indexIndex 的值
	 */
	public void setIndexIndex(String indexIndex) {
		this.indexIndex = indexIndex;
	}

	/**
	 * 方法名 ： getIndexKeyword
	 * 功 能 ： 返回变量 indexKeyword 的值
	 * @return: String
	 */
	public String getIndexKeyword() {
		return indexKeyword;
	}

	/**
	 * 方法名 ： setIndexKeyword
	 * 功 能 ： 设置变量 indexKeyword 的值
	 */
	public void setIndexKeyword(String indexKeyword) {
		this.indexKeyword = indexKeyword;
	}

	/**
	 * 方法名 ： getIndexIkmaxword
	 * 功 能 ： 返回变量 indexIkmaxword 的值
	 * @return: String
	 */
	public String getIndexIkmaxword() {
		return indexIkmaxword;
	}

	/**
	 * 方法名 ： setIndexIkmaxword
	 * 功 能 ： 设置变量 indexIkmaxword 的值
	 */
	public void setIndexIkmaxword(String indexIkmaxword) {
		this.indexIkmaxword = indexIkmaxword;
	}

	/**
	 * 方法名 ： getIndexGeopoint
	 * 功 能 ： 返回变量 indexGeopoint 的值
	 * @return: String
	 */
	public String getIndexGeopoint() {
		return indexGeopoint;
	}

	/**
	 * 方法名 ： setIndexGeopoint
	 * 功 能 ： 设置变量 indexGeopoint 的值
	 */
	public void setIndexGeopoint(String indexGeopoint) {
		this.indexGeopoint = indexGeopoint;
	}

	/**
	 * 方法名 ： getIndexIpaddress
	 * 功 能 ： 返回变量 indexIpaddress 的值
	 * @return: String
	 */
	public String getIndexIpaddress() {
		return indexIpaddress;
	}

	/**
	 * 方法名 ： setIndexIpaddress
	 * 功 能 ： 设置变量 indexIpaddress 的值
	 */
	public void setIndexIpaddress(String indexIpaddress) {
		this.indexIpaddress = indexIpaddress;
	}

	/**
	 * 方法名 ： getIndexPinyin
	 * 功 能 ： 返回变量 indexPinyin 的值
	 * @return: String
	 */
	public String getIndexPinyin() {
		return indexPinyin;
	}

	/**
	 * 方法名 ： setIndexPinyin
	 * 功 能 ： 设置变量 indexPinyin 的值
	 */
	public void setIndexPinyin(String indexPinyin) {
		this.indexPinyin = indexPinyin;
	}

	/**
	 * 方法名 ： getIndexAll
	 * 功 能 ： 返回变量 indexAll 的值
	 * @return: String
	 */
	public String getIndexAll() {
		return indexAll;
	}

	/**
	 * 方法名 ： setIndexAll
	 * 功 能 ： 设置变量 indexAll 的值
	 */
	public void setIndexAll(String indexAll) {
		this.indexAll = indexAll;
	}

	/**
	 * 方法名 ： toString
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see java.lang.Object#toString()
	 * 作 者 ： Administrator
	 */

	@Override
	public String toString() {
		return "SysZhcxCol [uuid=" + uuid + ", coldLength=" + coldLength + ", coldType=" + coldType + ", colsDesc=" + colsDesc + ", colsName=" + colsName + ", colsOrder=" + colsOrder + ", createTime=" + createTime + ", createUser=" + createUser + ", updateTime=" + updateTime + ", updateUser=" + updateUser + ", deleteFlag=" + deleteFlag + ", maxLength=" + maxLength + ", pageInput=" + pageInput + ", pageList=" + pageList + ", pageView=" + pageView + ", userIndex=" + userIndex + ", tabsUuid=" + tabsUuid + ", userIcon=" + userIcon + ", colsAlign=" + colsAlign + ", colsValign=" + colsValign + ", colsSwitchable=" + colsSwitchable + ", colsWidth=" + colsWidth + ", indexIndex=" + indexIndex + ", indexKeyword=" + indexKeyword + ", indexIkmaxword=" + indexIkmaxword + ", indexGeopoint=" + indexGeopoint + ", indexIpaddress=" + indexIpaddress + ", indexPinyin=" + indexPinyin + ", indexAll=" + indexAll + "]";
	}

}