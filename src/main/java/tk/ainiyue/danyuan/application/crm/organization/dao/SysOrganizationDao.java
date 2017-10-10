package tk.ainiyue.danyuan.application.crm.organization.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.crm.organization.po.SysOrganizationInfo;

/**
 * 文件名 ： SysOrganizationDao.java
 * 包 名 ： tk.ainiyue.admin.organization.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:48:59
 * 版 本 ： V1.0
 */
@Repository("sysOrganizationDao")
public interface SysOrganizationDao extends JpaRepository<SysOrganizationInfo, String> {
	
}
