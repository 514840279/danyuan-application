package tk.ainiyue.danyuan.application.dbm.table.po;

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
 * The persistent class for the sys_table_info database table.
 */
@Entity
@Table(name = "sys_table_info")
@NamedQuery(name = "SysTableInfo.findAll", query = "SELECT s FROM SysTableInfo s")
public class SysTableInfo implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = " uuid")
	@Column(unique = true, nullable = false, columnDefinition = " varchar(36) COMMENT '主键'")
	private String			  uuid;
	
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	private Date			  createTime;
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String			  createUser;
	
	@Column(name = "database_uuid", columnDefinition = "varchar(36) COMMENT '数据库表id'")
	private String			  databaseUuid;
	
	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer			  deleteFlag;
	
	@Column(columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String			  discription;
	
	@Column(name = "table_desc", columnDefinition = "varchar(50) COMMENT '表的含义'")
	private String			  tableDesc;
	
	@Column(name = "table_name", columnDefinition = "varchar(30) COMMENT '数据库表名'")
	private String			  tableName;
	
	@Column(name = "table_order", columnDefinition = "int COMMENT '数据库表顺序'")
	private Integer			  tableOrder;
	
	@Column(name = "table_rows", columnDefinition = "int COMMENT '数据库表数据量'")
	private Integer			  tableRows;
	
	@Column(name = "table_space", columnDefinition = "int COMMENT '数据库表空间大小'")
	private String			  tableSpace;
	
	@Column(name = "type_uuid", columnDefinition = "varchar(36) COMMENT '数据库表类型id'")
	private String			  typeUuid;
	
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "update_time", insertable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	private Date			  updateTime;
	
	@Column(name = "update_user", insertable = false, columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String			  updateUser;
	
	public SysTableInfo() {
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
	
	public String getDatabaseUuid() {
		return this.databaseUuid;
	}
	
	public void setDatabaseUuid(String databaseUuid) {
		this.databaseUuid = databaseUuid;
	}
	
	public Integer getDeleteFlag() {
		return this.deleteFlag;
	}
	
	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	
	public String getDiscription() {
		return this.discription;
	}
	
	public void setDiscription(String discription) {
		this.discription = discription;
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
	
	public Integer getTableRows() {
		return this.tableRows;
	}
	
	public void setTableRows(Integer tableRows) {
		this.tableRows = tableRows;
	}
	
	public String getTableSpace() {
		return this.tableSpace;
	}
	
	public void setTableSpace(String tableSpace) {
		this.tableSpace = tableSpace;
	}
	
	public String getTypeUuid() {
		return this.typeUuid;
	}
	
	public void setTypeUuid(String typeUuid) {
		this.typeUuid = typeUuid;
	}
	
	/**
	 * 方法名 ： getUpdateTime
	 * 功 能 ： 返回变量 updateTime 的值
	 *
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
	 *
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
	
	/**
	 * 方法名 ： toString
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see java.lang.Object#toString()
	 * 作 者 ： wang
	 */

	@Override
	public String toString() {
		return "SysTableInfo [uuid=" + uuid + ", createTime=" + createTime + ", createUser=" + createUser + ", databaseUuid=" + databaseUuid + ", deleteFlag=" + deleteFlag + ", discription=" + discription + ", tableDesc=" + tableDesc + ", tableName=" + tableName + ", tableOrder=" + tableOrder + ", tableRows=" + tableRows + ", tableSpace=" + tableSpace + ", typeUuid=" + typeUuid + ", updateTime=" + updateTime + ", updateUser=" + updateUser + "]";
	}
	
}