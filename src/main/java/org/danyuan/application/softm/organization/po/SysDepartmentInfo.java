package org.danyuan.application.softm.organization.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * 文件名 ： SysDepartmentInfo.java
 * 包 名 ： tk.ainiyue.admin.department.po
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2016年6月3日 下午5:40:45
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_department_info")
public class SysDepartmentInfo extends BaseEntity implements Serializable {
	
	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long	serialVersionUID	= 3420982230698944996L;
	
	@Column(name = "organization_id", columnDefinition = "varchar(36) COMMENT '单位id'")
	private String				organizationId;
	
	@Column(name = "department_name", columnDefinition = "varchar(50) COMMENT '部门名称'")
	private String				departmentName;
	
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数：
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysDepartmentInfo() {
		super();
	}
	
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param uuid
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysDepartmentInfo(String uuid) {
		super();
		this.uuid = uuid;
	}
	
	/**
	 * 方法名 ： getOrganizationId
	 * 功 能 ： 返回变量 organizationId 的值
	 * @return: String
	 */
	public String getOrganizationId() {
		return organizationId;
	}
	
	/**
	 * 方法名 ： setOrganizationId
	 * 功 能 ： 设置变量 organizationId 的值
	 */
	public void setOrganizationId(String organizationId) {
		this.organizationId = organizationId;
	}
	
	/**
	 * 方法名 ： getDepartmentName
	 * 功 能 ： 返回变量 departmentName 的值
	 * @return: String
	 */
	public String getDepartmentName() {
		return departmentName;
	}
	
	/**
	 * 方法名 ： setDepartmentName
	 * 功 能 ： 设置变量 departmentName 的值
	 */
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	
}
