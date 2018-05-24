/**
 * 文件名：TaskRuleDao.java 版本信息： 日期：2018年5月8日 Copyright 足下 Corporation 2018 版权所有
 */
package tk.ainiyue.danyuan.application.crawler.task.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.common.base.BaseDao;
import tk.ainiyue.danyuan.application.crawler.task.po.TaskRule;

/**
 * 文件名 ： TaskRuleDao.java
 * 包 名 ： com.shumeng.application.application.crawler.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年5月8日 上午10:08:41
 * 版 本 ： V1.0
 */
@Repository
public interface TaskRuleDao extends BaseDao<TaskRule> {
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param id
	 * 参 数： @return
	 * 返 回： List<TaskRule>
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Query("select t from TaskRule t where t.id.id = :id")
	List<TaskRule> findAll(@Param("id") String id);
	
}
