package tk.ainiyue.danyuan.application.crawler.task.dao;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.common.base.BaseDao;
import tk.ainiyue.danyuan.application.crawler.task.po.Task;

@Repository
public interface TaskDao extends BaseDao<Task> {
	
	/**
	 * 方法名： upStatusStart
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param id
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Transactional
	@Modifying
	@Query("update Task t set t.status = '准备',t.updateTime=CURRENT_TIMESTAMP where t.id = :id")
	void upStatusStart(@Param("id") String id);
	
	/**
	 * 方法名： upStatusStop
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param id
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Transactional
	@Modifying
	@Query("update Task t set t.status = '停止中',t.updateTime=CURRENT_TIMESTAMP where t.id = :id")
	void upStatusStop(@Param("id") String id);
	
	/**
	 * 方法名： upd
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param appendixStatus
	 * 参 数： @param executeTime
	 * 参 数： @param executeType
	 * 参 数： @param status
	 * 参 数： @param taskName
	 * 参 数： @param url
	 * 参 数： @param threadNumber
	 * 参 数： @param id
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Transactional
	@Modifying
	@Query("update Task t set t.appendixStatus=:appendixStatus,  t.executeTime=:executeTime, t.executeType=:executeType,  t.status=:status, t.taskName=:taskName, t.threadNumber=:threadNumber, t.updateTime=CURRENT_TIMESTAMP ,t.postType=:postType,t.postData=:postData,t.head=:head, t.url=:url where t.id=:id")
	void upd(@Param("appendixStatus") Integer appendixStatus, @Param("executeTime") String executeTime, @Param("executeType") String executeType, @Param("status") String status, @Param("taskName") String taskName, @Param("url") String url, @Param("threadNumber") Integer threadNumber, @Param("id") String id, @Param("postType") String postType, @Param("postData") String postData, @Param("head") String head);

	/**
	 * 方法名： clean
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param id
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Transactional
	@Modifying
	@Query("update Task t set t.status='准备清空' where t.id=:id")
	void clean(@Param("id") String id);
	
}
