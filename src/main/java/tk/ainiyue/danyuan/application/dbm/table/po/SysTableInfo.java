package tk.ainiyue.danyuan.application.dbm.table.po;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the sys_table_info database table.
 * 
 */
@Entity
@Table(name="sys_table_info")
@NamedQuery(name="SysTableInfo.findAll", query="SELECT s FROM SysTableInfo s")
public class SysTableInfo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(unique=true, nullable=false, length=36)
	private String uuid;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="create_time")
	private Date createTime;

	@Column(name="create_user", length=50)
	private String createUser;

	@Column(name="database_uuid", length=36)
	private String databaseUuid;

	@Column(name="delete_flag")
	private int deleteFlag;

	@Column(length=200)
	private String discription;

	@Column(name="table_disc", length=200)
	private String tableDisc;

	@Column(name="table_name", length=30)
	private String tableName;

	@Column(name="TABLE_ORDER")
	private int tableOrder;

	@Column(name="TABLE_ROWS")
	private int tableRows;

	@Column(name="TABLE_SPACE", length=50)
	private String tableSpace;

	@Column(name="TYPE_UUID", length=36)
	private String typeUuid;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="updata_time")
	private Date updataTime;

	@Column(name="updata_user", length=50)
	private String updataUser;

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

	public String getTableDisc() {
		return this.tableDisc;
	}

	public void setTableDisc(String tableDisc) {
		this.tableDisc = tableDisc;
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