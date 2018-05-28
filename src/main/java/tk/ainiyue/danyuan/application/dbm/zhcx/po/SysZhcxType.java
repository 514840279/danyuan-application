package tk.ainiyue.danyuan.application.dbm.zhcx.po;

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
 * The persistent class for the sys_zhcx_type database table.
 */
@Entity
@Table(name = "sys_zhcx_type")
@NamedQuery(name = "SysZhcxType.findAll", query = "SELECT s FROM SysZhcxType s")
public class SysZhcxType implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "UUID", columnDefinition = "varchar(36) COMMENT '主键'")
	private String				uuid;
	
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	@Temporal(TemporalType.TIMESTAMP)
	private Date				createTime;										// create_time
	// 插入时间
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String				createUser;										// create_user
	// 插入人
	
	@Column(name = "update_time", columnDefinition = " timestamp  default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date				updateTime;										// updata_time
	// 更新时间
	
	@Column(name = "update_user", columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String				updateUser;										// updata_user
	// 更新人
	
	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private String				deleteFlag;										// delete_flag
	// 标记
	
	@Column(name = "TYPE_CLASS")
	private String				typeClass;
	
	@Column(name = "TYPE_NAME")
	private String				typeName;
	
	@Column(name = "TYPE_ORDER")
	private String				typeOrder;
	
	public SysZhcxType() {
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
	
	public String getDeleteFlag() {
		return this.deleteFlag;
	}
	
	public void setDeleteFlag(String deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	
	public String getTypeClass() {
		return this.typeClass;
	}
	
	public void setTypeClass(String typeClass) {
		this.typeClass = typeClass;
	}
	
	public String getTypeName() {
		return this.typeName;
	}
	
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	
	public String getTypeOrder() {
		return this.typeOrder;
	}
	
	public void setTypeOrder(String typeOrder) {
		this.typeOrder = typeOrder;
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
	
}