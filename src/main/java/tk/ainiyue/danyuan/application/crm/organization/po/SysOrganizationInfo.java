package tk.ainiyue.danyuan.application.crm.organization.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;

/**
 * 文件名 ： SysOrganizationInfo.java
 * 包 名 ： tk.ainiyue.admin.organization.po
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2016年6月3日 下午5:38:44
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_organization_info")
public class SysOrganizationInfo {
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@GeneratedValue(generator = "idGenerator")
	@Column(name = "UUID", length = 32, nullable = false, updatable = false)
	private String uuid;
	
	@Column(name = "organization_code", length = 50, nullable = false)
	private String organizationCode;
	
	@Column(name = "organization_name", length = 32, nullable = false)
	private String organizationName;
	
	@Column(name = "organization_discription", length = 1024, nullable = false)
	private String organizationDiscription;
	
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.UpdateTimestamp
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
	 * 方法名 ： getOrganizationName
	 * 功 能 ： 返回变量 organizationName 的值
	 *
	 * @return: String
	 */
	public String getOrganizationName() {
		return organizationName;
	}
	
	/**
	 * 方法名 ： getOrganizationCode
	 * 功 能 ： 返回变量 organizationCode 的值
	 *
	 * @return: String
	 */
	public String getOrganizationCode() {
		return organizationCode;
	}
	
	/**
	 * 方法名 ： setOrganizationCode
	 * 功 能 ： 设置变量 organizationCode 的值
	 */
	public void setOrganizationCode(String organizationCode) {
		this.organizationCode = organizationCode;
	}
	
	/**
	 * 方法名 ： setOrganizationName
	 * 功 能 ： 设置变量 organizationName 的值
	 */
	public void setOrganizationName(String organizationName) {
		this.organizationName = organizationName;
	}
	
	/**
	 * 方法名 ： getOrganizationDiscription
	 * 功 能 ： 返回变量 organizationDiscription 的值
	 *
	 * @return: String
	 */
	public String getOrganizationDiscription() {
		return organizationDiscription;
	}
	
	/**
	 * 方法名 ： setOrganizationDiscription
	 * 功 能 ： 设置变量 organizationDiscription 的值
	 */
	public void setOrganizationDiscription(String organizationDiscription) {
		this.organizationDiscription = organizationDiscription;
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
	 * 方法名 ： getUpdataDatatime
	 * 功 能 ： 返回变量 updataDatatime 的值
	 *
	 * @return: Date
	 */
	public Date getUpdataDatetime() {
		return updataDatetime;
	}
	
	/**
	 * 方法名 ： setUpdataDatatime
	 * 功 能 ： 设置变量 updataDatatime 的值
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
	public SysOrganizationInfo() {
		super();
	}
	
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param uuid
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysOrganizationInfo(String uuid) {
		super();
		this.uuid = uuid;
	}
	
	/**
	 * 方法名 ： toString
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see java.lang.Object#toString()
	 * 作 者 ： Tenghui.Wang
	 */
	
	@Override
	public String toString() {
		return "SysOrganizationInfo [uuid=" + uuid + ", organizationCode=" + organizationCode + ", organizationName=" + organizationName + ", organizationDiscription=" + organizationDiscription + ", insertDatetime=" + insertDatetime + ", updataDatetime=" + updataDatetime + ", flag=" + flag + "]";
	}
	
}
