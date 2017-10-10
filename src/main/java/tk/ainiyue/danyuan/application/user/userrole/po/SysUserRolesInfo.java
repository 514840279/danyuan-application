package tk.ainiyue.danyuan.application.user.userrole.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.Length;

/**
 * 文件名 ： SysUserRolesInfo.java
 * 包 名 ： tk.ainiyue.admin.userrole.po
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2016年6月3日 下午5:54:52
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_user_roles_info")
public class SysUserRolesInfo {
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@NotNull
	@Length(max = 32)
	@Column(name = "UUID", updatable = false)
	private String uuid;
	
	@Column(name = "user_id", length = 32, nullable = false)
	private String userId;
	
	@Column(name = "roles_id", length = 32, nullable = false)
	private String rolesId;
	
	@Column(name = "insert_datetime", nullable = false, updatable = false)
	private Date   insertDatetime;
	
	@Column(name = "updata_datetime")
	private Date   updataDatetime;
	
	@Column(name = "flag", length = 2)
	private String flag;
	
	/**
	 * 方法名 ： getUuid
	 * 功 能 ： 返回变量 uuid 的值
	 *
	 * @return: String
	 */
	public String getUuid() {
		return uuid;
	}
	
	/**
	 * 方法名 ： setUuid
	 * 功 能 ： 设置变量 uuid 的值
	 */
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	/**
	 * 方法名 ： getUserId
	 * 功 能 ： 返回变量 userId 的值
	 *
	 * @return: String
	 */
	public String getUserId() {
		return userId;
	}
	
	/**
	 * 方法名 ： setUserId
	 * 功 能 ： 设置变量 userId 的值
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	/**
	 * 方法名 ： getRolesId
	 * 功 能 ： 返回变量 rolesId 的值
	 *
	 * @return: String
	 */
	public String getRolesId() {
		return rolesId;
	}
	
	/**
	 * 方法名 ： setRolesId
	 * 功 能 ： 设置变量 rolesId 的值
	 */
	public void setRolesId(String rolesId) {
		this.rolesId = rolesId;
	}
	
	/**
	 * 方法名 ： getInsertDatetime
	 * 功 能 ： 返回变量 insertDatetime 的值
	 *
	 * @return: Date
	 */
	public Date getInsertDatetime() {
		return insertDatetime;
	}
	
	/**
	 * 方法名 ： setInsertDatetime
	 * 功 能 ： 设置变量 insertDatetime 的值
	 */
	public void setInsertDatetime(Date insertDatetime) {
		this.insertDatetime = insertDatetime;
	}
	
	/**
	 * 方法名 ： getUpdataDatetime
	 * 功 能 ： 返回变量 updataDatetime 的值
	 *
	 * @return: Date
	 */
	public Date getUpdataDatetime() {
		return updataDatetime;
	}
	
	/**
	 * 方法名 ： setUpdataDatetime
	 * 功 能 ： 设置变量 updataDatetime 的值
	 */
	public void setUpdataDatetime(Date updataDatetime) {
		this.updataDatetime = updataDatetime;
	}
	
	/**
	 * 方法名 ： getFlag
	 * 功 能 ： 返回变量 flag 的值
	 *
	 * @return: String
	 */
	public String getFlag() {
		return flag;
	}
	
	/**
	 * 方法名 ： setFlag
	 * 功 能 ： 设置变量 flag 的值
	 */
	public void setFlag(String flag) {
		this.flag = flag;
	}
	
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数：
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysUserRolesInfo() {
		super();
	}
	
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param uuid
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysUserRolesInfo(String uuid) {
		super();
		this.uuid = uuid;
	}
	
}
