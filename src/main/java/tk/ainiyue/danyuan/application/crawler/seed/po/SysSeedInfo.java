package tk.ainiyue.danyuan.application.crawler.seed.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 文件名 ： SysRolesInfo.java
 * 包 名 ： tk.ainiyue.admin.roles.po
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2016年6月3日 下午5:43:16
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_roles_info")
public class SysSeedInfo {
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@GeneratedValue(generator = "idGenerator")
	@Column(name = "UUID", length = 32, nullable = false, updatable = false)
	private String uuid;
	
	@Column(name = "department_id", length = 50, nullable = false)
	private String departmentId;
	
	@Column(name = "role_name", length = 32, nullable = false)
	private String roleName;
	
	@Column(name = "role_discription", length = 500)
	private String roleDiscription;
	
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
	 * 方法名 ： getDepartmentId
	 * 功 能 ： 返回变量 departmentId 的值
	 *
	 * @return: String
	 */
	public String getDepartmentId() {
		return departmentId;
	}
	
	/**
	 * 方法名 ： setDepartmentId
	 * 功 能 ： 设置变量 departmentId 的值
	 */
	public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}
	
	/**
	 * 方法名 ： getRoleName
	 * 功 能 ： 返回变量 roleName 的值
	 *
	 * @return: String
	 */
	public String getRoleName() {
		return roleName;
	}
	
	/**
	 * 方法名 ： setRoleName
	 * 功 能 ： 设置变量 roleName 的值
	 */
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
	/**
	 * 方法名 ： getRoleDiscription
	 * 功 能 ： 返回变量 roleDiscription 的值
	 *
	 * @return: String
	 */
	public String getRoleDiscription() {
		return roleDiscription;
	}
	
	/**
	 * 方法名 ： setRoleDiscription
	 * 功 能 ： 设置变量 roleDiscription 的值
	 */
	public void setRoleDiscription(String roleDiscription) {
		this.roleDiscription = roleDiscription;
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
	public SysSeedInfo() {
		super();
	}
	
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param uuid
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysSeedInfo(String uuid) {
		super();
		this.uuid = uuid;
	}
	
}
