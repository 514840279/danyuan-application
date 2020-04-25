package org.danyuan.application.softm.organization.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysOrganizationInfo.java
 * @包名 org.danyuan.application.softm.organization.po
 * @描述 sys_organization_info的实体类
 * @时间 2020年04月25日 16:38:23
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_organization_info")
@NamedQuery(name = "SysOrganizationInfo.findAll", query = "SELECT s FROM SysOrganizationInfo s")
public class SysOrganizationInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	// 企业代码
	@Column(name = "organization_code")
	private String				organizationCode;
	
	// 企业名
	@Column(name = "organization_name")
	private String				organizationName;
	
	// 企业注册地址
	@Column(name = "organization_address")
	private String				organizationAddress;
	
	// 企业邮箱
	@Column(name = "organization_email")
	private String				organizationEmail;
	
	// 企业办公电话
	@Column(name = "organization_phone")
	private String				organizationPhone;
	
	/**
	 * 构造方法：
	 * 描 述： 默认构造函数
	 * 参 数：
	 * 作 者 ： test
	 * @throws
	 */
	public SysOrganizationInfo() {
		super();
	}
	
	/**
	 * 方法名 ： getOrganizationCode
	 * 功 能 ： 返回变量 organizationCode 企业代码 的值
	 * @return: String
	 */
	public String getOrganizationCode() {
		return organizationCode;
	}
	
	/**
	 * 方法名 ： setOrganizationCode
	 * 功 能 ： 设置变量 organizationCode 企业代码 的值
	 */
	public void setOrganizationCode(String organizationCode) {
		this.organizationCode = organizationCode;
	}
	
	/**
	 * 方法名 ： getOrganizationName
	 * 功 能 ： 返回变量 organizationName 企业名 的值
	 * @return: String
	 */
	public String getOrganizationName() {
		return organizationName;
	}
	
	/**
	 * 方法名 ： setOrganizationName
	 * 功 能 ： 设置变量 organizationName 企业名 的值
	 */
	public void setOrganizationName(String organizationName) {
		this.organizationName = organizationName;
	}
	
	public String getOrganizationAddress() {
		return organizationAddress;
	}
	
	public void setOrganizationAddress(String organizationAddress) {
		this.organizationAddress = organizationAddress;
	}
	
	public String getOrganizationEmail() {
		return organizationEmail;
	}
	
	public void setOrganizationEmail(String organizationEmail) {
		this.organizationEmail = organizationEmail;
	}
	
	public String getOrganizationPhone() {
		return organizationPhone;
	}
	
	public void setOrganizationPhone(String organizationPhone) {
		this.organizationPhone = organizationPhone;
	}
	
}
