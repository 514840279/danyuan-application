package org.danyuan.application.crawler.task.dao;

import java.util.List;

import org.danyuan.application.common.base.BaseDao;
import org.danyuan.application.crawler.task.po.SysCrawlerTaskInfo;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * @文件名 SysCrawlerTaskInfoDao.java
 * @包名 org.danyuan.application.crawler.task.dao
 * @描述 dao层
 * @时间 2020年04月25日 11:27:02
 * @author test
 * @版本 V1.0
 */
@Repository
public interface SysCrawlerTaskInfoDao extends BaseDao<SysCrawlerTaskInfo> {
	
	/**  
	*  方法名： findUrlType  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @return 
	*  返    回： List<String>  
	*  作    者 ： wang  
	*  @throws  
	*/
	@Query("Select distinct t.urlType From SysCrawlerTaskInfo t ")
	List<String> findUrlType();
	
	/**  
	*  方法名： findTaskName  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @return 
	*  返    回： List<String>  
	*  作    者 ： wang  
	*  @throws  
	*/
	@Query("Select distinct t.taskName From SysCrawlerTaskInfo t ")
	List<String> findTaskName();
	
}

