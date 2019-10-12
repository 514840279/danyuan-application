package org.danyuan.application.dbms.tabs.dao;

import java.util.List;

import org.danyuan.application.common.base.BaseDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsAdviMessInfo;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * 文件名 ： SysAdviceMessDao.java
 * 包 名 ： com.shumeng.application.application.zhcx.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月26日 下午3:34:26
 * 版 本 ： V1.0
 */
@Repository("sysDbmsAdviMessInfoDao")
public interface SysDbmsAdviMessInfoDao extends BaseDao<SysDbmsAdviMessInfo> {

	/**
	 * 方法名： findByDeleteFlag
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param i
	 * 参 数： @return
	 * 返 回： List<SysAdviceMess>
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Query("select t from SysDbmsAdviMessInfo t where t.deleteFlag=:deleteFlag order by t.type desc,t.jdbcUuid desc,t.tableName")
	List<SysDbmsAdviMessInfo> findByDeleteFlag(@Param("deleteFlag") Integer deleteFlag);

}
