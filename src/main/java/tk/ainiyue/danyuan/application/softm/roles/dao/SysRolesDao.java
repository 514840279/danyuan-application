package tk.ainiyue.danyuan.application.softm.roles.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.softm.roles.po.SysRolesInfo;

/**
 * 文件名 ： SysRolesDao.java
 * 包 名 ： tk.ainiyue.admin.roles.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:54:35
 * 版 本 ： V1.0
 */
@Repository("sysRolesDao")
public interface SysRolesDao extends JpaRepository<SysRolesInfo, String> {
	
}
