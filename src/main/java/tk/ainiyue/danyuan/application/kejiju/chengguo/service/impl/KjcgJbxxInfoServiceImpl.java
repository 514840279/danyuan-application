package tk.ainiyue.danyuan.application.kejiju.chengguo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.kejiju.chengguo.dao.KjcgJbxxInfoDao;
import tk.ainiyue.danyuan.application.kejiju.chengguo.po.KjcgJbxxInfo;
import tk.ainiyue.danyuan.application.kejiju.chengguo.service.KjcgJbxxInfoService;

/**    
*  文件名 ： KjcgJbxxInfoServiceImpl.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.chengguo.service.impl  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年3月1日 下午11:17:39  
*  版    本 ： V1.0    
*/
@Service("kjcgJbxxInfoService")
public class KjcgJbxxInfoServiceImpl implements KjcgJbxxInfoService {
	@Autowired
	private KjcgJbxxInfoDao kjcgJbxxInfoDao;
	
	/** 
	*  方法名 ： page
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param pageNumber
	*  参    数 ： @param pageSize
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.chengguo.service.KjcgJbxxInfoService#page(int, int, tk.ainiyue.danyuan.application.kejiju.chengguo.po.KjcgJbxxInfo)  
	*  作    者 ： wang  
	*/
	
	@Override
	public Page<KjcgJbxxInfo> page(int pageNumber, int pageSize, KjcgJbxxInfo info) {
		Example<KjcgJbxxInfo> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		return kjcgJbxxInfoDao.findAll(example, request);
	}
	
	/** 
	*  方法名 ： save
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.chengguo.service.KjcgJbxxInfoService#save(tk.ainiyue.danyuan.application.kejiju.chengguo.po.KjcgJbxxInfo)  
	*  作    者 ： wang  
	*/
	
	@Override
	public void save(KjcgJbxxInfo info) {
		kjcgJbxxInfoDao.save(info);
	}
	
	/** 
	*  方法名 ： delete
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param list  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.chengguo.service.KjcgJbxxInfoService#delete(java.util.List)  
	*  作    者 ： wang  
	*/
	
	@Override
	public void delete(List<KjcgJbxxInfo> list) {
		kjcgJbxxInfoDao.delete(list);
	}
	
}
