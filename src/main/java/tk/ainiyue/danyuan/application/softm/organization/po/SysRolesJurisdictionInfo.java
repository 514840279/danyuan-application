package tk.ainiyue.danyuan.application.softm.organization.po;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 文件名 ： SysRolesJurisdictionInfo.java
 * 包 名 ： tk.ainiyue.admin.jurisdiction.po
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2016年6月3日 下午5:45:55
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_roles_jurisdiction_info")
@NamedQuery(name = "SysRolesJurisdictionInfo.findAll", query = "SELECT s FROM SysRolesJurisdictionInfo s")
public class SysRolesJurisdictionInfo implements Serializable {
	
	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long			serialVersionUID	= 338686748001155299L;
	
	@EmbeddedId
	private SysRolesJurisdictionInfoPK	id;
	
	private Boolean						checked;
	
	@Column(name = "discription", columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String						discription;																																							 // discription
	
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP  COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date						createTime;																																																													 // create_time
	// 插入时间
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String						createUser;																																																													 // create_user
	// 插入人
	
	@Column(name = "update_time", insertable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date						updateTime;																																																													 // updata_time
	// 更新时间
	
	@Column(name = "update_user", insertable = false, columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String						updateUser;																																																													 // updata_user
	// 更新人
	
	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer						deleteFlag;																																																													 // delete_flag
	// 标记
	
	/**
	 * 方法名 ： getDiscription
	 * 功 能 ： 返回变量 discription 的值
	 *
	 * @return: String
	 */
	public String getDiscription() {
		return discription;
	}
	
	/**
	 * 方法名 ： setDiscription
	 * 功 能 ： 设置变量 discription 的值
	 */
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	
	/**
	 * 方法名 ： getCreateTime
	 * 功 能 ： 返回变量 createTime 的值
	 *
	 * @return: Date
	 */
	public Date getCreateTime() {
		return createTime;
	}
	
	/**
	 * 方法名 ： setCreateTime
	 * 功 能 ： 设置变量 createTime 的值
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	/**
	 * 方法名 ： getCreateUser
	 * 功 能 ： 返回变量 createUser 的值
	 *
	 * @return: String
	 */
	public String getCreateUser() {
		return createUser;
	}
	
	/**
	 * 方法名 ： setCreateUser
	 * 功 能 ： 设置变量 createUser 的值
	 */
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	
	/**
	 * 方法名 ： getDeleteFlag
	 * 功 能 ： 返回变量 deleteFlag 的值
	 *
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
	
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数：
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysRolesJurisdictionInfo() {
		super();
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
	
	public Boolean getChecked() {
		return checked;
	}
	
	public void setChecked(Boolean checked) {
		this.checked = checked;
	}
	
	@Override
	public String toString() {
		return "SysRolesJurisdictionInfo [id=" + id + ", checked=" + checked + ", createTime=" + createTime + ", createUser=" + createUser + ", deleteFlag=" + deleteFlag + ", discription=" + discription + ", updateTime=" + updateTime + ", updateUser=" + updateUser + "]";
	}
	
	/**  
	 *  方法名 ： getId 
	 *  功    能 ： 返回变量 id 的值  
	 *  @return: SysRolesJurisdictionInfoPK 
	 */
	public SysRolesJurisdictionInfoPK getId() {
		return id;
	}
	
	/**  
	 *  方法名 ： setId 
	 *  功    能 ： 设置变量 id 的值
	 */
	public void setId(SysRolesJurisdictionInfoPK id) {
		this.id = id;
	}
	
}
