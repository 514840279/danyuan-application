package tk.ainiyue.danyuan.application.usermanager.userrole.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.usermanager.userrole.po.SysUserRolesInfo;

/**
 * 文件名 ： SysUserRolesDao.java
 * 包 名 ： tk.ainiyue.admin.userrole.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:58:31
 * 版 本 ： V1.0
 */
@Repository("sysUserRolesDao")
public interface SysUserRolesDao extends CrudRepository<SysUserRolesInfo, String> {
	
}
