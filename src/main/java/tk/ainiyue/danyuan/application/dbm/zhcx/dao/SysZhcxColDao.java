package tk.ainiyue.danyuan.application.dbm.zhcx.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.dbm.zhcx.po.SysZhcxCol;

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
@Repository("sysZhcxColDao")
@DynamicUpdate(true)
@DynamicInsert(true)
public interface SysZhcxColDao extends JpaRepository<SysZhcxCol, Serializable> {
	
	/**
	 * 方法名： findAllColumn
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param userindex
	 * 参 数： @param tableUuid
	 * 参 数： @return
	 * 返 回： List<SysZhcxCol>
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Query("select distinct t from SysZhcxCol t  where t.tabsUuid=:tableUuid   order by t.colsOrder")
	List<SysZhcxCol> findAllColumn(@Param("tableUuid") String tableUuid);
	
}
