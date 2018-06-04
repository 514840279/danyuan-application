package tk.ainiyue.danyuan.application.dbms.zhcx.po;

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
 * The persistent class for the sys_zhcx_tabs database table.
 */
@Entity
@Table(name = "sys_zhcx_tabs")
@NamedQuery(name = "SysZhcxTab.findAll", query = "SELECT s FROM SysZhcxTab s")
public class SysZhcxTab implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "UUID", columnDefinition = "varchar(36) COMMENT '主键'")
	private String				uuid;
	
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.CreationTimestamp
	private Date				createTime;										// create_time
	// 插入时间
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String				createUser;										// create_user
	// 插入人
	
	@Column(name = "update_time", columnDefinition = " timestamp  default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.UpdateTimestamp
	private Date				updateTime;										// updata_time
	// 更新时间
	
	@Column(name = "update_user", columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String				updateUser;										// updata_user
	// 更新人
	
	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer				deleteFlag;										// delete_flag
	// 标记
	
	@Column(name = "DB_TYPE")
	private String				dbType;
	
	@Column(name = "ADDR_UUID")
	private String				addrUuid;
	
	@Column(name = "ES_NAME")
	private String				esName;
	
	@Column(name = "TABLE_DESC")
	private String				tableDesc;
	
	@Column(name = "TABLE_NAME")
	private String				tableName;
	
	@Column(name = "TABLE_ORDER")
	private Integer				tableOrder;
	
	@Column(name = "TABLE_ROWS", updatable = false)
	private Long				tableRows;
	
	@Column(name = "TABLE_SPACE", updatable = false)
	private Long				tableSpace;
	
	@Column(name = "TYPE_UUID")
	private String				typeUuid;
	
	public SysZhcxTab() {
	}
	
	public String getUuid() {
		return this.uuid;
	}
	
	public void setUuid(String uuid) {
		this.uuid = uuid;
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
	
	public String getEsName() {
		return this.esName;
	}
	
	public void setEsName(String esName) {
		this.esName = esName;
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
	
	public Integer getTableOrder() {
		return this.tableOrder;
	}
	
	public void setTableOrder(Integer tableOrder) {
		this.tableOrder = tableOrder;
	}
	
	/**
	 * 方法名 ： getTableRows
	 * 功 能 ： 返回变量 tableRows 的值
	 * @return: Long
	 */
	public Long getTableRows() {
		return tableRows;
	}
	
	/**
	 * 方法名 ： setTableRows
	 * 功 能 ： 设置变量 tableRows 的值
	 */
	public void setTableRows(Long tableRows) {
		this.tableRows = tableRows;
	}
	
	/**
	 * 方法名 ： getTableSpace
	 * 功 能 ： 返回变量 tableSpace 的值
	 * @return: Long
	 */
	public Long getTableSpace() {
		return tableSpace;
	}
	
	/**
	 * 方法名 ： setTableSpace
	 * 功 能 ： 设置变量 tableSpace 的值
	 */
	public void setTableSpace(Long tableSpace) {
		this.tableSpace = tableSpace;
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
	
	/**
	 * 方法名 ： getTypeUuid
	 * 功 能 ： 返回变量 typeUuid 的值
	 * @return: String
	 */
	public String getTypeUuid() {
		return typeUuid;
	}
	
	/**
	 * 方法名 ： setTypeUuid
	 * 功 能 ： 设置变量 typeUuid 的值
	 */
	public void setTypeUuid(String typeUuid) {
		this.typeUuid = typeUuid;
	}
	
	/**
	 * 方法名 ： getAddrUuid
	 * 功 能 ： 返回变量 addrUuid 的值
	 * @return: String
	 */
	public String getAddrUuid() {
		return addrUuid;
	}
	
	/**
	 * 方法名 ： setAddrUuid
	 * 功 能 ： 设置变量 addrUuid 的值
	 */
	public void setAddrUuid(String addrUuid) {
		this.addrUuid = addrUuid;
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
		return "SysZhcxTab [uuid=" + uuid + ", createTime=" + createTime + ", createUser=" + createUser + ", updateTime=" + updateTime + ", updateUser=" + updateUser + ", deleteFlag=" + deleteFlag + ", dbType=" + dbType + ", esName=" + esName + ", tableDesc=" + tableDesc + ", tableName=" + tableName + ", tableOrder=" + tableOrder + ", tableRows=" + tableRows + ", tableSpace=" + tableSpace + ", typeUuid=" + typeUuid + "]";
	}
	
}