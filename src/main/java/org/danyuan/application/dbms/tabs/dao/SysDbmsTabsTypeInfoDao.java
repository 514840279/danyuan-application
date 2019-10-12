package org.danyuan.application.dbms.tabs.dao;

import org.danyuan.application.common.base.BaseDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsTypeInfo;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.stereotype.Repository;

/**
 * 文件名 ： SysTableTypeDao.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.type.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:58:14
 * 版 本 ： V1.0
 */
@Repository("sysDbmsTabsTypeInfoDao")
@DynamicUpdate(true)
@DynamicInsert(true)
public interface SysDbmsTabsTypeInfoDao extends BaseDao<SysDbmsTabsTypeInfo> {
	
}
