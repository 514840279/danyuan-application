package org.danyuan.application.dbms.tabs.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.danyuan.application.common.base.BaseDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * 文件名 ： SysTableDao.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.table.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:54:48
 * 版 本 ： V1.0
 */
@Repository("sysDbmsTabsInfoDao")
@DynamicUpdate(true)
@DynamicInsert(true)
public interface SysDbmsTabsInfoDao extends BaseDao<SysDbmsTabsInfo> {
	
	SysDbmsTabsInfo findSysDbmsTabsInfoByUuid(String uuid);

	/**
	 * 方法名： findAllByUserIndex
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param userindex
	 * 参 数： @return
	 * 返 回： List<SysZhcxTab>
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Query("select distinct t from SysDbmsTabsInfo t where t.uuid in  (  select c.tabsUuid from SysDbmsTabsColsInfo c where c.userIndex=:userindex and c.deleteFlag='0') and t.deleteFlag ='0'   order by t.tabsOrder")
	List<SysDbmsTabsInfo> findAllByUserIndex(@Param("userindex") String userindex);
	
	@Query("select distinct t from SysDbmsTabsInfo t " 
			+ " where t.typeUuid=:typeUuid " 
			+ " and t.uuid in  (  " 
			+ "  select c.tabsUuid from SysDbmsTabsColsInfo c " 
			+ "  where c.userIndex=:userindex " 
			+ "  and c.deleteFlag='0' ) and t.deleteFlag ='0'  order by t.tabsOrder")
	List<SysDbmsTabsInfo> findAllByUserIndexAndTypeUuid(@Param("userindex") String userindex, @Param("typeUuid") String typeUuid);
	
	/**
	 * 方法名： findAllByTypeUuid
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param typeUuid
	 * 参 数： @return
	 * 返 回： List<SysZhcxTab>
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Query("select distinct t from SysDbmsTabsInfo t   where t.typeUuid=:typeUuid and t.deleteFlag ='0'  order by t.tabsOrder")
	List<SysDbmsTabsInfo> findAllByTypeUuid(@Param("typeUuid") String typeUuid);
	
	/**
	 * 方法名： findByAddrUuidIsNotNullAndUpdateTimeGreaterThan
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param i
	 * 参 数： @return
	 * 返 回： com.shumeng.application.common.config.list<SysZhcxTab>
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Query("select distinct t from SysDbmsTabsInfo t   where t.jdbcUuid is not null and t.deleteFlag =0 order by t.updateTime")
	List<SysDbmsTabsInfo> findByAddrUuidIsNotNullAndUpdateTimeGreaterThan();
	
	/**
	 * @方法名 change
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param tabsName
	 * @参数 @param tabsDesc
	 * @参数 @param typeUuid
	 * @参数 @param jdbcUuid
	 * @参数 @param uuid
	 * @返回 void
	 * @author Administrator
	 * @throws
	 */
	@Transactional
	@Modifying
	@Query(" update SysDbmsTabsInfo t set tabsName =:tabsName,tabsDesc=:tabsDesc,typeUuid=:typeUuid,jdbcUuid=:jdbcUuid,updateTime = CURRENT_TIMESTAMP,updateUser = :username  where uuid =:uuid")
	
	void change(@Param("tabsName") String tabsName, @Param("tabsDesc") String tabsDesc, @Param("typeUuid") String typeUuid, @Param("jdbcUuid") String jdbcUuid, @Param("uuid") String uuid, @Param("username") String username);
	
}
