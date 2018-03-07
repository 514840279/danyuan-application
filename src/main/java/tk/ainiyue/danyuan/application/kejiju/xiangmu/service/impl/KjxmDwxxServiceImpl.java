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

import tk.ainiyue.danyuan.application.kejiju.xiangmu.dao.KjxmDwxxDao;
import tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmDwxxInfo;
import tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmJbxxInfo;
import tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmDwxxService;

/**    
*  文件名 ： KjxmDwxxInfoServiceImpl.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.xiangmu.service.impl  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年3月1日 下午10:17:31  
*  版    本 ： V1.0    
*/
@Service("kjxmDwxxInfoService")
public class KjxmDwxxServiceImpl implements KjxmDwxxService {
	@Autowired
	private KjxmDwxxDao kjxmDwxxDao;
	
	/** 
	*  方法名 ： page
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param pageNumber
	*  参    数 ： @param pageSize
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmDwxxInfoService#page(int, int, tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmDwxxInfo)  
	*  作    者 ： wang  
	*/
	
	@Override
	public Page<KjxmDwxxInfo> page(int pageNumber, int pageSize, KjxmDwxxInfo info) {
		Example<KjxmDwxxInfo> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		return kjxmDwxxDao.findAll(example, request);
	}
	
	/** 
	*  方法名 ： delete
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param list  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmDwxxInfoService#delete(java.util.List)  
	*  作    者 ： wang  
	*/
	
	@Override
	public void delete(List<KjxmDwxxInfo> list) {
		kjxmDwxxDao.delete(list);
	}
	
	/** 
	*  方法名 ： save
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmDwxxInfoService#save(tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmDwxxInfo)  
	*  作    者 ： wang  
	*/
	
	@Override
	public void save(KjxmDwxxInfo info) {
		kjxmDwxxDao.save(info);
	}
	
	/** 
	*  方法名 ： findList
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param kjxmDwxxInfo
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmDwxxService#findList(tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmDwxxInfo)  
	*  作    者 ： wang  
	*/
	
	@Override
	public List<KjxmDwxxInfo> findList(String xmjbUuid) {
		return kjxmDwxxDao.findAllByXmjbUuid(xmjbUuid);
	}
	
	/** 
	*  方法名 ： list
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmDwxxService#list(tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmJbxxInfo)  
	*  作    者 ： wang  
	*/
	
	@Override
	public List<KjxmDwxxInfo> list(KjxmJbxxInfo info) {
		return kjxmDwxxDao.findAllByXmjbUuid(info.getUuid());
	}
	
	/** 
	*  方法名 ： findOne
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmDwxxService#findOne(tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmDwxxInfo)  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public KjxmDwxxInfo findOne(KjxmDwxxInfo info) {
		//		Example<KjxmDwxxInfo> example = Example.of(info);
		return kjxmDwxxDao.findOneByUuid(info.getUuid());
	}
	
}
