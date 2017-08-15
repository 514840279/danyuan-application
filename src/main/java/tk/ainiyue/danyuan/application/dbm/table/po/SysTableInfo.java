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

import com.fasterxml.jackson.annotation.JsonFormat;

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

	@JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	private Date			  createTime;

	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String			  createUser;

	@Column(name = "database_uuid", columnDefinition = "varchar(36) COMMENT '数据库表id'")
	private String			  databaseUuid;

	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private int				  deleteFlag;

	@Column(columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String			  discription;

	@Column(name = "table_desc", columnDefinition = "varchar(50) COMMENT '表的含义'")
	private String			  tableDesc;

	@Column(name = "table_name", columnDefinition = "varchar(30) COMMENT '数据库表名'")
	private String			  tableName;

	@Column(name = "table_order", columnDefinition = "int COMMENT '数据库表顺序'")
	private int				  tableOrder;

	@Column(name = "table_rows", columnDefinition = "int COMMENT '数据库表数据量'")
	private int				  tableRows;

	@Column(name = "table_space", columnDefinition = "int COMMENT '数据库表空间大小'")
	private String			  tableSpace;

	@Column(name = "type_uuid", columnDefinition = "varchar(36) COMMENT '数据库表类型id'")
	private String			  typeUuid;

	@JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "updata_time", insertable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '更新人员'")
	private Date			  updataTime;

	@Column(name = "updata_user", insertable = false, columnDefinition = " varchar(50) default 'system'  COMMENT '更新时间'")
	private String			  updataUser;

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

	public int getDeleteFlag() {
		return this.deleteFlag;
	}

	public void setDeleteFlag(int deleteFlag) {
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

	public int getTableOrder() {
		return this.tableOrder;
	}

	public void setTableOrder(int tableOrder) {
		this.tableOrder = tableOrder;
	}

	public int getTableRows() {
		return this.tableRows;
	}

	public void setTableRows(int tableRows) {
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

	public Date getUpdataTime() {
		return this.updataTime;
	}

	public void setUpdataTime(Date updataTime) {
		this.updataTime = updataTime;
	}

	public String getUpdataUser() {
		return this.updataUser;
	}

	public void setUpdataUser(String updataUser) {
		this.updataUser = updataUser;
	}

}