/**
 * 文件名：SysPlantChartDimensionDao.java 版本信息： 日期：2018年5月22日 Copyright 足下 Corporation 2018 版权所有
 */
package org.danyuan.application.dbms.chart.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.danyuan.application.common.base.BaseDao;
import org.danyuan.application.dbms.chart.po.SysDbmsChartDimension;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * 文件名 ： SysPlantChartDimensionDao.java
 * 包 名 ： com.shumeng.application.application.plant.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年5月22日 下午2:27:44
 * 版 本 ： V1.0
 */
@Repository
public interface SysDbmsChartDimensionDao extends BaseDao<SysDbmsChartDimension> {
	
	/**
	 * 方法名： findAllDime
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysPlantChartDimension>
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Query("select t from SysDbmsChartDimension t where t.groupUuid is null or t.groupUuid ='0' order by t.dimeOrder asc")
	List<SysDbmsChartDimension> findAllDime();
	
	/**
	 * 方法名： changeGroup
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param uuid
	 * 参 数： @param groupUuid
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Transactional
	@Modifying
	@Query("update SysDbmsChartDimension t set t.groupUuid=:groupUuid where uuid=:uuid")
	void changeGroup(@Param("uuid") String uuid, @Param("groupUuid") String groupUuid);
	
}
