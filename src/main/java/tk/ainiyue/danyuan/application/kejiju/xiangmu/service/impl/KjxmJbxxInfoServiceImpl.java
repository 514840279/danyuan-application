package tk.ainiyue.danyuan.application.kejiju.xiangmu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.kejiju.xiangmu.dao.KjxmJbxxInfoDao;
import tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmJbxxInfo;
import tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmJbxxInfoService;

/**    
*  文件名 ： KjxmJbxxInfoServiceImpl.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.xiangmu.service.impl  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年3月1日 下午10:14:42  
*  版    本 ： V1.0    
*/
@Service("kjxmJbxxInfoService")
public class KjxmJbxxInfoServiceImpl implements KjxmJbxxInfoService {
	@Autowired
	private KjxmJbxxInfoDao kjxmJbxxInfoDao;
	
	/** 
	*  方法名 ： page
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param pageNumber
	*  参    数 ： @param pageSize
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmJbxxInfoService#page(int, int, tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmJbxxInfo)  
	*  作    者 ： wang  
	*/
	
	@Override
	public Page<KjxmJbxxInfo> page(int pageNumber, int pageSize, KjxmJbxxInfo info) {
		Example<KjxmJbxxInfo> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		return kjxmJbxxInfoDao.findAll(example, request);
	}
	
	/** 
	*  方法名 ： save
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmJbxxInfoService#save(tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmJbxxInfo)  
	*  作    者 ： wang  
	*/
	
	@Override
	public void save(KjxmJbxxInfo info) {
		kjxmJbxxInfoDao.save(info);
	}
	
	/** 
	*  方法名 ： delete
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param list  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmJbxxInfoService#delete(java.util.List)  
	*  作    者 ： wang  
	*/
	
	@Override
	public void delete(List<KjxmJbxxInfo> list) {
		kjxmJbxxInfoDao.delete(list);
	}
}
