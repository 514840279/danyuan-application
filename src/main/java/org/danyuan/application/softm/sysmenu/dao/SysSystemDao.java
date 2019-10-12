package org.danyuan.application.softm.sysmenu.dao;

import org.danyuan.application.softm.sysmenu.po.SysSystemInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

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
public interface SysSystemDao extends JpaRepository<SysSystemInfo, String> {
	
}
