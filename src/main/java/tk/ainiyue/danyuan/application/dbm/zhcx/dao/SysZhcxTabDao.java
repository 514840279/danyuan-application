package tk.ainiyue.danyuan.application.dbm.zhcx.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.dbm.zhcx.po.SysZhcxTab;

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
@Repository("sysZhcxTabDao")
@DynamicUpdate(true)
@DynamicInsert(true)
public interface SysZhcxTabDao extends JpaRepository<SysZhcxTab, Serializable> {
	
	SysZhcxTab findSysTableInofByUuid(String uuid);
	
	/**
	 * 方法名： findAllByUserIndex
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param userindex
	 * 参 数： @return
	 * 返 回： List<SysZhcxTab>
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Query("select distinct t from SysZhcxTab t where t.uuid in  (  select c.tabsUuid from SysZhcxCol c where c.userIndex=:userindex and c.deleteFlag='0') and t.deleteFlag ='0'   order by t.tableOrder")
	List<SysZhcxTab> findAllByUserIndex(@Param("userindex") String userindex);
	
	@Query("select distinct t from SysZhcxTab t " + " where t.typeUuid=:typeUuid " + " and t.uuid in  (  " + "  select c.tabsUuid from SysZhcxCol c " + "  where c.userIndex=:userindex " + "  and c.deleteFlag='0' ) and t.deleteFlag ='0'  order by t.tableOrder")
	List<SysZhcxTab> findAllByUserIndexAndTypeUuid(@Param("userindex") String userindex, @Param("typeUuid") String typeUuid);
	
	/**
	 * 方法名： findAllByTypeUuid
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param typeUuid
	 * 参 数： @return
	 * 返 回： List<SysZhcxTab>
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Query("select distinct t from SysZhcxTab t   where t.typeUuid=:typeUuid and t.deleteFlag ='0'  order by t.tableOrder")
	List<SysZhcxTab> findAllByTypeUuid(@Param("typeUuid") String typeUuid);
	
	/**
	 * 方法名： findByAddrUuidIsNotNullAndUpdateTimeGreaterThan
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param i
	 * 参 数： @return
	 * 返 回： com.shumeng.application.common.config.list<SysZhcxTab>
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Query("select distinct t from SysZhcxTab t   where t.addrUuid is not null and t.deleteFlag =0   and t.updateTime> sysdate-300 order by t.updateTime")
	List<SysZhcxTab> findByAddrUuidIsNotNullAndUpdateTimeGreaterThan();
	
}
