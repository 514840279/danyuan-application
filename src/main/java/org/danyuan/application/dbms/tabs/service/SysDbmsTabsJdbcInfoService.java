package org.danyuan.application.dbms.tabs.service;

import java.util.List;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.dbms.tabs.dao.SysDbmsTabsJdbcInfoDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsJdbcInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysDatabaseService.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.addr.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:47:40
 * 版 本 ： V1.0
 */
@Service("sysDbmsTabsJdbcInfoService")
public class SysDbmsTabsJdbcInfoService extends BaseServiceImpl<SysDbmsTabsJdbcInfo> implements BaseService<SysDbmsTabsJdbcInfo> {
	//
	@Autowired
	private SysDbmsTabsJdbcInfoDao sysDbmsTabsJdbcInfoDao;
	
	public List<SysDbmsTabsJdbcInfo> findAll() {
		return sysDbmsTabsJdbcInfoDao.findAll();
	}
	
}
