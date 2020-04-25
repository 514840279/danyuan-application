package org.danyuan.application.dbms.echarts.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.danyuan.application.common.base.BaseDao;
import org.danyuan.application.dbms.echarts.po.SysDbmsChartDimension;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * @文件名 SysDbmsChartDimensionDao.java
 * @包名 org.danyuan.application.dbms.echarts.dao
 * @描述 dao层
 * @时间 2020年04月25日 12:15:42
 * @author test
 * @版本 V1.0
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

