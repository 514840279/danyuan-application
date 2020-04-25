package org.danyuan.application.crawler.param.dao;

import java.util.List;

import org.danyuan.application.common.base.BaseDao;
import org.danyuan.application.crawler.param.po.SysCrawlerRulerColumInfo;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * @文件名 SysCrawlerRulerColumInfoDao.java
 * @包名 org.danyuan.application.crawler.param.dao
 * @描述 dao层
 * @时间 2020年04月25日 08:00:23
 * @author test
 * @版本 V1.0
 */
@Repository
public interface SysCrawlerRulerColumInfoDao extends BaseDao<SysCrawlerRulerColumInfo> {
	
	/**  
	*  方法名： findParent  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @param parentUuid
	*  参    数： @return 
	*  返    回： List<SysCrawlerRulerColumInfo>  
	*  作    者 ： wang  
	*  @throws  
	*/
	@Query("From SysCrawlerRulerColumInfo t Where (t.parentUuid is null or t.parentUuid ='' ) and t.rulerUuid  =:rulerUuid  ")
	List<SysCrawlerRulerColumInfo> findParent(@Param("rulerUuid") String uuid);
	
}

