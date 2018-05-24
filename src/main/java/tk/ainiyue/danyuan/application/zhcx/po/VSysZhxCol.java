package tk.ainiyue.danyuan.application.zhcx.po;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * The persistent class for the V_SYS_ZHX_COLS database table.
 */
@Entity
@Table(name = "V_SYS_ZHX_COLS")
@NamedQuery(name = "VSysZhxCol.findAll", query = "SELECT v FROM VSysZhxCol v")
public class VSysZhxCol implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Column(name = "COLS_DESC")
	private String				colsDesc;
	
	@Column(name = "TABS_UUID")
	private String				tabsUuid;
	
	@Column(name = "COLS_LENTH")
	private BigDecimal			coldLenth;
	
	@Column(name = "COLS_NAME")
	private String				colsName;
	
	@Column(name = "COLS_ORDER")
	private BigDecimal			colsOrder;
	
	@Column(name = "COLS_TYPE")
	private String				coldType;
	
	@Column(name = "DELETE_FLAG")
	private String				deleteFlag;
	
	@Column(name = "PAGE_INPUT")
	private BigDecimal			pageInput;
	
	@Column(name = "PAGE_LIST")
	private BigDecimal			pageList;
	
	@Column(name = "PAGE_VIEW")
	private BigDecimal			pageView;
	
	@Column(name = "TABLE_NAME")
	private String				tableName;
	
	@Column(name = "USER_INDEX")
	private String				userIndex;
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "UUID", columnDefinition = "varchar(36) COMMENT '主键'")
	private String				uuid;
	
	public VSysZhxCol() {
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
	
	public BigDecimal getColsOrder() {
		return this.colsOrder;
	}
	
	public void setColsOrder(BigDecimal colsOrder) {
		this.colsOrder = colsOrder;
	}
	
	/**
	 * 方法名 ： getColdLenth
	 * 功 能 ： 返回变量 coldLenth 的值
	 * @return: BigDecimal
	 */
	public BigDecimal getColdLenth() {
		return coldLenth;
	}
	
	/**
	 * 方法名 ： setColdLenth
	 * 功 能 ： 设置变量 coldLenth 的值
	 */
	public void setColdLenth(BigDecimal coldLenth) {
		this.coldLenth = coldLenth;
	}
	
	/**
	 * 方法名 ： getColdType
	 * 功 能 ： 返回变量 coldType 的值
	 * @return: String
	 */
	public String getColdType() {
		return coldType;
	}
	
	/**
	 * 方法名 ： setColdType
	 * 功 能 ： 设置变量 coldType 的值
	 */
	public void setColdType(String coldType) {
		this.coldType = coldType;
	}
	
	public String getDeleteFlag() {
		return this.deleteFlag;
	}
	
	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	
	public BigDecimal getPageInput() {
		return this.pageInput;
	}
	
	public void setPageInput(BigDecimal pageInput) {
		this.pageInput = pageInput;
	}
	
	public BigDecimal getPageList() {
		return this.pageList;
	}
	
	public void setPageList(BigDecimal pageList) {
		this.pageList = pageList;
	}
	
	public BigDecimal getPageView() {
		return this.pageView;
	}
	
	public void setPageView(BigDecimal pageView) {
		this.pageView = pageView;
	}
	
	public String getTableName() {
		return this.tableName;
	}
	
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	
	public String getUserIndex() {
		return this.userIndex;
	}
	
	public void setUserIndex(String userIndex) {
		this.userIndex = userIndex;
	}
	
	public String getUuid() {
		return this.uuid;
	}
	
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
}