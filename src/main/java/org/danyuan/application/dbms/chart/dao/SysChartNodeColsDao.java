package org.danyuan.application.dbms.chart.dao;

import java.util.List;

import org.danyuan.application.common.base.BaseDao;
import org.danyuan.application.dbms.chart.po.SysChartNodeCols;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * 文件名 ： SysChartNodeColsDao.java
 * 包 名 ： com.shumeng.application.chart.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月3日 下午2:53:16
 * 版 本 ： V1.0
 */
@Repository("sysChartNodeColsDao")
@DynamicUpdate(true)
@DynamicInsert(true)
public interface SysChartNodeColsDao extends BaseDao<SysChartNodeCols> {

	/**
	 * 方法名： findAllByNodeUuid
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param uuid
	 * 参 数： @return
	 * 返 回： List<SysChartNodeCols>
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Query("select t from SysChartNodeCols  t where t.nodeUuid =:nodeUuid")
	List<SysChartNodeCols> findAllByNodeUuid(@Param("nodeUuid") String uuid);

	/**
	 * @return
	 * 方法名： findAllByValue
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param userIndex
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Query("select t from SysChartNodeCols  t where t.userIndex =:userIndex")
	List<SysChartNodeCols> findAllByValue(@Param("userIndex") String userIndex);

}
