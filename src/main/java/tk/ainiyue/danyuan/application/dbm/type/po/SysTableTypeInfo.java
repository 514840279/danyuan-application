package tk.ainiyue.danyuan.application.dbm.type.po;

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
 * The persistent class for the sys_table_type_info database table.
 */
@Entity
@Table(name = "sys_table_type_info")
@NamedQuery(name = "SysTableTypeInfo.findAll", query = "SELECT s FROM SysTableTypeInfo s")
public class SysTableTypeInfo implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(unique = true, nullable = false, length = 36)
	private String			  uuid;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_time")
	private Date			  createTime;
	
	@Column(name = "create_user", length = 50)
	private String			  createUser;
	
	@Column(name = "delete_flag")
	private int				  deleteFlag;
	
	@Column(length = 200)
	private String			  discription;
	
	@Column(name = "TYPE_CLASS", length = 50)
	private String			  typeClass;
	
	@Column(name = "TYPE_NAME", length = 50)
	private String			  typeName;
	
	@Column(name = "TYPE_ORDER")
	private int				  typeOrder;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "updata_time")
	private Date			  updataTime;
	
	@Column(name = "updata_user", length = 50)
	private String			  updataUser;
	
	public SysTableTypeInfo() {
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
	
	public int getTypeOrder() {
		return this.typeOrder;
	}
	
	public void setTypeOrder(int typeOrder) {
		this.typeOrder = typeOrder;
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