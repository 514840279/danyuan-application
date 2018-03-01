package tk.ainiyue.danyuan.application.common.base;

import java.util.List;

import org.springframework.data.domain.Page;

/**
 * 文件名 ： BaseService.java
 * 包 名 ： tk.ainiyue.danyuan.application.common.base
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2017年10月10日 下午2:06:45
 * 版 本 ： V1.0
 */
public interface BaseService<T> {
	
	T findByUuid(String uuid);
	
	List<T> findAll();
	
	Page<T> page(int pageNumber, int pageSize, T info);
	
	void save(T info);
	
	void delete(T info);
	
	void delete(List<T> list);
	
	void trunc();
}
