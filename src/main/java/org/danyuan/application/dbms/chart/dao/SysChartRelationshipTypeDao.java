package org.danyuan.application.dbms.chart.dao;

import java.util.List;

import org.danyuan.application.common.base.BaseDao;
import org.danyuan.application.dbms.chart.po.SysChartRelationshipType;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * 文件名 ： SysChartRelationshipTypeDao.java
 * 包 名 ： com.shumeng.application.chart.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月3日 下午2:53:40
 * 版 本 ： V1.0
 */
@Repository("sysChartRelationshipTypeDao")
@DynamicUpdate(true)
@DynamicInsert(true)
public interface SysChartRelationshipTypeDao extends BaseDao<SysChartRelationshipType> {

	/**
	 * @return
	 * 方法名： findAllByDelete
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数：
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Query("select t from SysChartRelationshipType t where t.deleteFlag > 0")
	List<SysChartRelationshipType> findAllByDelete();

}
