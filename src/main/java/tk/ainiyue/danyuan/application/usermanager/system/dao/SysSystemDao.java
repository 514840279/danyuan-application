package tk.ainiyue.danyuan.application.usermanager.system.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.usermanager.system.po.SysSystemInfo;

/**
 * 文件名 ： SysSystemDao.java
 * 包 名 ： tk.ainiyue.admin.system.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午2:54:05
 * 版 本 ： V1.0
 */
@Repository("sysSystemDao")
public interface SysSystemDao extends CrudRepository<SysSystemInfo, String> {
	
}
