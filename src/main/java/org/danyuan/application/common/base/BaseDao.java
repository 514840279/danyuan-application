package org.danyuan.application.common.base;

import javax.persistence.criteria.CriteriaQuery;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.NoRepositoryBean;

/**
 * 文件名 ： BaseDao.java
 * 包 名 ： tk.ainiyue.danyuan.application.common.base
 * 描 述 ： 通用数据接口
 * 作 者 ： wang
 * 时 间 ： 2018年4月3日 下午10:17:53
 * 版 本 ： V1.0
 */
@NoRepositoryBean
public interface BaseDao<T> extends JpaRepository<T, String>, CriteriaQuery<T>, JpaSpecificationExecutor<T> {
	
}
