package tk.ainiyue.danyuan.application.crm.jurisdiction.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

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
public class SysRolesJurisdictionInfo {
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "UUID", length = 32, nullable = false, updatable = false)
	private String uuid;
	
	@Column(name = "role_id")
	private String roleId;
	
	@Column(name = "menu_id")
	private String menuId;
	
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
	 * 方法名 ： getRoleId
	 * 功 能 ： 返回变量 roleId 的值
	 *
	 * @return: String
	 */
	public String getRoleId() {
		return roleId;
	}
	
	/**
	 * 方法名 ： setRoleId
	 * 功 能 ： 设置变量 roleId 的值
	 */
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	
	/**
	 * 方法名 ： getMenuId
	 * 功 能 ： 返回变量 menuId 的值
	 *
	 * @return: String
	 */
	public String getMenuId() {
		return menuId;
	}
	
	/**
	 * 方法名 ： setMenuId
	 * 功 能 ： 设置变量 menuId 的值
	 */
	public void setMenuId(String menuId) {
		this.menuId = menuId;
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
	public SysRolesJurisdictionInfo() {
		super();
	}
	
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param uuid
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysRolesJurisdictionInfo(String uuid) {
		super();
		this.uuid = uuid;
	}
	
}
