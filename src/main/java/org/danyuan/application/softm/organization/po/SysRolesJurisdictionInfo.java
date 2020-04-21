package org.danyuan.application.softm.organization.po;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

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
public class SysRolesJurisdictionInfo extends BaseEntity implements Serializable {
	
	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long			serialVersionUID	= 338686748001155299L;
	
	@EmbeddedId
	private SysRolesJurisdictionInfoPK	id;
	
	private Boolean						checked;
	
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
	 * 方法名 ： getId
	 * 功 能 ： 返回变量 id 的值
	 * @return: SysRolesJurisdictionInfoPK
	 */
	public SysRolesJurisdictionInfoPK getId() {
		return id;
	}
	
	/**
	 * 方法名 ： setId
	 * 功 能 ： 设置变量 id 的值
	 */
	public void setId(SysRolesJurisdictionInfoPK id) {
		this.id = id;
	}
	
}
