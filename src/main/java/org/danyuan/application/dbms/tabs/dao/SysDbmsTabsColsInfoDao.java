package org.danyuan.application.dbms.tabs.dao;

import javax.transaction.Transactional;

import org.danyuan.application.common.base.BaseDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsColsInfo;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * 文件名 ： SysColumnDao.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.column.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:51:45
 * 版 本 ： V1.0
 */
@Repository("sysDbmsTabsColsInfoDao")
@DynamicUpdate(true)
@DynamicInsert(true)
public interface SysDbmsTabsColsInfoDao extends BaseDao<SysDbmsTabsColsInfo> {

	/**
	 * 方法名： deleteByTabsUuid
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param cols
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Transactional
	@Modifying
	@Query("delete from SysDbmsTabsColsInfo where tabsUuid=:tabsUuid")
	void deleteByTabsUuid(@Param("tabsUuid") String string);

}
