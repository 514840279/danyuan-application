package org.danyuan.application.dbms.chart.dao;

import java.util.List;

import org.danyuan.application.common.base.BaseDao;
import org.danyuan.application.dbms.chart.po.SysChartNode;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * 文件名 ： SysChartNodeDao.java
 * 包 名 ： com.shumeng.application.chart.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月3日 下午2:52:49
 * 版 本 ： V1.0
 */
@Repository("sysChartNodeDao")
@DynamicUpdate(true)
@DynamicInsert(true)
public interface SysChartNodeDao extends BaseDao<SysChartNode> {
	
	/**
	 * 方法名： findAllByDelete
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysChartNode>
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Query("select t from SysChartNode t where t.deleteFlag = 0")
	List<SysChartNode> findAllByDelete();
	
}
