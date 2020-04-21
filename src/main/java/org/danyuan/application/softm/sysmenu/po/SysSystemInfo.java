package org.danyuan.application.softm.sysmenu.po;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.danyuan.application.common.base.BaseEntity;

/**
 * 文件名 ： SysWebSystem.java
 * 包 名 ： tk.ainiyue.admin.system.po
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2016年6月24日 下午9:35:05
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_system_info")
public class SysSystemInfo extends BaseEntity {
	
	@Column(name = "system_name", columnDefinition = "varchar(200) COMMENT '系统名称'")
	@NotNull
	private String systemName;
	
	public String getSystemName() {
		return systemName;
	}
	
	public void setSystemName(String systemName) {
		this.systemName = systemName;
	}
	
}
