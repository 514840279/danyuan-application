package org.danyuan.application.dbms.tabs.service;

import java.util.List;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.dbms.tabs.dao.SysDbmsTabsTypeInfoDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsTypeInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysTableTypeServiceImpl.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.type.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:58:50
 * 版 本 ： V1.0
 */
@Service("sysDbmsTabsTypeInfoService")
public class SysDbmsTabsTypeInfoService extends BaseServiceImpl<SysDbmsTabsTypeInfo> implements BaseService<SysDbmsTabsTypeInfo> {
	//
	@Autowired
	private SysDbmsTabsTypeInfoDao sysDbmsTabsTypeInfoDao;

	public List<SysDbmsTabsTypeInfo> findAll() {
		return sysDbmsTabsTypeInfoDao.findAll();
	}
}
