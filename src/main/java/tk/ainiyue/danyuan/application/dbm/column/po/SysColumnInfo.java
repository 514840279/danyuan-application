package tk.ainiyue.danyuan.application.dbm.column.po;

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
 * The persistent class for the sys_column_info database table.
 */
@Entity
@Table(name = "sys_column_info")
@NamedQuery(name = "SysColumnInfo.findAll", query = "SELECT s FROM SysColumnInfo s")
public class SysColumnInfo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GenericGenerator(name = "idGenerator", strategy = " uuid")
	@Column(unique = true, nullable = false, columnDefinition = " varchar(36) COMMENT '主键'")
	private String			  uuid;

	@Column(name = "cols_length", columnDefinition = " int COMMENT '字段长度'")
	private int				  colsLength;

	@Column(name = "cols_desc", columnDefinition = " varchar(50) COMMENT '字段含义'")
	private String			  colsDesc;

	@Column(name = "cols_name", columnDefinition = " varchar(30) COMMENT '字段名'")
	private String			  colsName;

	@Column(name = "cols_order", columnDefinition = " int COMMENT '字段顺序'")
	private int				  colsOrder;

	@Column(name = "cols_type", columnDefinition = " varchar(30) COMMENT '字段类型（varchar,number,text）'")
	private String			  colsType;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	private Date			  createTime;
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String			  createUser;

	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private int				  deleteFlag;

	@Column(columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String			  discription;

	@Column(name = "table_uuid", columnDefinition = " varchar(36) COMMENT '表id'")
	private String			  tableUuid;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "updata_time", insertable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '更新人员'")
	private Date			  updataTime;

	@Column(name = "updata_user", insertable = false, columnDefinition = " varchar(50) default 'system'  COMMENT '更新时间'")
	private String			  updataUser;

	public SysColumnInfo() {
	}

	public String getUuid() {
		return this.uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	/**
	 * @return the colsLength
	 */
	public int getColsLength() {
		return colsLength;
	}
	
	/**
	 * @param colsLength
	 *            the colsLength to set
	 */
	public void setColsLength(int colsLength) {
		this.colsLength = colsLength;
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

	public int getColsOrder() {
		return this.colsOrder;
	}

	public void setColsOrder(int colsOrder) {
		this.colsOrder = colsOrder;
	}

	public String getColsType() {
		return this.colsType;
	}

	public void setColsType(String colsType) {
		this.colsType = colsType;
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

	public String getTableUuid() {
		return this.tableUuid;
	}

	public void setTableUuid(String tableUuid) {
		this.tableUuid = tableUuid;
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