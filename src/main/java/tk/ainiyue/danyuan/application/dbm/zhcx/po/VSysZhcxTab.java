package tk.ainiyue.danyuan.application.dbm.zhcx.po;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the V_SYS_ZHCX_TABS database table.
 */
@Entity
@Table(name = "V_SYS_ZHCX_TABS1")
@NamedQuery(name = "VSysZhcxTab.findAll", query = "SELECT v FROM VSysZhcxTab v")
public class VSysZhcxTab implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Column(name = "DB_TYPE")
	private String				dbType;
	
	@Column(name = "DELETE_FLAG")
	private Integer				deleteFlag;
	
	@Column(name = "TABLE_DESC")
	private String				tableDesc;
	
	@Column(name = "TABLE_NAME")
	private String				tableName;
	
	@Column(name = "TABLE_ORDER")
	private BigDecimal			tableOrder;
	
	@Column(name = "TABLE_ROWS")
	private BigDecimal			tableRows;
	
	@Column(name = "TABLE_SPACE")
	private BigDecimal			tableSpace;
	
	@Column(name = "TYPE_UUID")
	private String				typeUuid;
	
	@Id
	@Column(name = "UUID")
	private String				uuid;
	
	public VSysZhcxTab() {
	}
	
	public String getDbType() {
		return this.dbType;
	}
	
	public void setDbType(String dbType) {
		this.dbType = dbType;
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
	
	public String getTableDesc() {
		return this.tableDesc;
	}
	
	public void setTableDesc(String tableDesc) {
		this.tableDesc = tableDesc;
	}
	
	public String getTableName() {
		return this.tableName;
	}
	
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	
	public BigDecimal getTableOrder() {
		return this.tableOrder;
	}
	
	public void setTableOrder(BigDecimal tableOrder) {
		this.tableOrder = tableOrder;
	}
	
	public BigDecimal getTableRows() {
		return this.tableRows;
	}
	
	public void setTableRows(BigDecimal tableRows) {
		this.tableRows = tableRows;
	}
	
	public BigDecimal getTableSpace() {
		return this.tableSpace;
	}
	
	public void setTableSpace(BigDecimal tableSpace) {
		this.tableSpace = tableSpace;
	}
	
	public String getTypeUuid() {
		return this.typeUuid;
	}
	
	public void setTypeUuid(String typeUuid) {
		this.typeUuid = typeUuid;
	}
	
	public String getUuid() {
		return this.uuid;
	}
	
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
}