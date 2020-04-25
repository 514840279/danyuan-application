package org.danyuan.application.softm.organization.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysDepartmentInfo.java
 * @包名 org.danyuan.application.softm.organization.po
 * @描述 sys_department_info的实体类
 * @时间 2020年04月25日 16:38:20
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_department_info")
@NamedQuery(name = "SysDepartmentInfo.findAll", query = "SELECT s FROM SysDepartmentInfo s")
public class SysDepartmentInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 部门名
	@Column(name = "department_name")
	private  String 	departmentName;

	// 企业id
	@Column(name = "organization_id")
	private  String 	organizationId;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysDepartmentInfo() {
		super();
	}


	/**
	 * 方法名 ： getDepartmentName
	 * 功 能 ： 返回变量 departmentName 部门名 的值
	 *
	 * @return: String 
	 */
	public  String  getDepartmentName() {
		return departmentName;
	}

	/**
	 * 方法名 ： setDepartmentName
	 * 功 能 ： 设置变量 departmentName 部门名 的值
	 */
	public void setDepartmentName( String  departmentName) {
		this.departmentName = departmentName;
	}

	/**
	 * 方法名 ： getOrganizationId
	 * 功 能 ： 返回变量 organizationId 企业id 的值
	 *
	 * @return: String 
	 */
	public  String  getOrganizationId() {
		return organizationId;
	}

	/**
	 * 方法名 ： setOrganizationId
	 * 功 能 ： 设置变量 organizationId 企业id 的值
	 */
	public void setOrganizationId( String  organizationId) {
		this.organizationId = organizationId;
	}


}
