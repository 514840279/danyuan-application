package org.danyuan.application.common.base;

import java.util.List;

import org.springframework.data.domain.Page;

/**
 * 文件名 ： BaseService.java
 * 包 名 ： tk.ainiyue.danyuan.application.common.base
 * 描 述 ： 通用服务层接口
 * 作 者 ： Administrator
 * 时 间 ： 2017年10月10日 下午2:06:45
 * 版 本 ： V1.0
 */
public interface BaseService<T> {
	
	T findOne(T entity);
	
	T findById(String id);
	
	List<T> findAll(T entity);
	
	List<T> findAll(Pagination<T> vo);
	
	Page<T> page(Pagination<T> vo);
	
	T save(T entity) throws IllegalArgumentException, IllegalAccessException;
	
	void saveAll(List<T> entities);
	
	void delete(T entity);
	
	void deleteAll(List<T> entities);
	
	void trunc();
}
