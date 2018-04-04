package tk.ainiyue.danyuan.application.common.base;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

/**    
*  文件名 ： BaseServiceImpl.java  
*  包    名 ： tk.ainiyue.danyuan.application.common.base  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年4月3日 下午10:21:42  
*  版    本 ： V1.0    
*/
@Service("baseService")
public class BaseServiceImpl<T> implements BaseService<T> {
	
	@Autowired
	private BaseDao<T> baseDao;
	
	/** 
	*  方法名 ： findAll
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#findAll()  
	*  作    者 ： wang  
	*/
	
	@Override
	public List<T> findAll(T info) {
		Example<T> example = Example.of(info);
		return baseDao.findAll(example);
	}
	
	/** 
	*  方法名 ： page
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param pageNumber
	*  参    数 ： @param pageSize
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#page(int, int, java.lang.Object)  
	*  作    者 ： wang  
	*/
	
	@Override
	public Page<T> page(int pageNumber, int pageSize, T info, Order... order) {
		Example<T> example = Example.of(info);
		PageRequest request = null;
		if (order != null) {
			Sort sort = new Sort(order);
			request = new PageRequest(pageNumber - 1, pageSize, sort);
		} else {
			request = new PageRequest(pageNumber - 1, pageSize);
		}
		Page<T> sourceCodes = baseDao.findAll(example, request);
		return sourceCodes;
	}
	
	/** 
	*  方法名 ： save
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info  
	*  参    考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#save(java.lang.Object)  
	*  作    者 ： wang  
	*/
	
	@Override
	public void save(T info) {
		baseDao.save(info);
	}
	
	/** 
	*  方法名 ： delete
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info  
	*  参    考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#delete(java.lang.Object)  
	*  作    者 ： wang  
	*/
	
	@Override
	public void delete(T info) {
		baseDao.delete(info);
	}
	
	/** 
	*  方法名 ： delete
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param list  
	*  参    考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#delete(java.util.List)  
	*  作    者 ： wang  
	*/
	
	@Override
	public void delete(List<T> list) {
		baseDao.delete(list);
	}
	
	/** 
	*  方法名 ： trunc
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ：   
	*  参    考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#trunc()  
	*  作    者 ： wang  
	*/
	
	@Override
	public void trunc() {
		baseDao.deleteAll();
	}
	
	/** 
	*  方法名 ： findOne
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#findOne(java.lang.Object)  
	*  作    者 ： wang  
	*/
	
	@Override
	public T findOne(T info) {
		Example<T> example = Example.of(info);
		return baseDao.findOne(example);
	}
	
	/** 
	*  方法名 ： save
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param list  
	*  参    考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#save(java.util.List)  
	*  作    者 ： wang  
	*/
	
	@Override
	public void save(List<T> list) {
		baseDao.save(list);
	}
	
}
