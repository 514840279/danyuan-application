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

import tk.ainiyue.danyuan.application.kejiju.xiangmu.dao.KjxmRyxxDao;
import tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmJbxxInfo;
import tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmRyxxInfo;
import tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmRyxxService;

/**    
*  文件名 ： KjxmRyxxInfoServiceImpl.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.xiangmu.service.impl  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年3月1日 下午10:01:52  
*  版    本 ： V1.0    
*/
@Service("kjxmRyxxInfoService")
public class KjxmRyxxServiceImpl implements KjxmRyxxService {
	@Autowired
	private KjxmRyxxDao kjxmRyxxDao;
	
	/** 
	*  方法名 ： page
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param pageNumber
	*  参    数 ： @param pageSize
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmRyxxInfoService#page(int, int, tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmRyxxInfo)  
	*  作    者 ： wang  
	*/
	
	@Override
	public Page<KjxmRyxxInfo> page(int pageNumber, int pageSize, KjxmRyxxInfo info) {
		Example<KjxmRyxxInfo> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		return kjxmRyxxDao.findAll(example, request);
	}
	
	/** 
	*  方法名 ： save
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmRyxxInfoService#save(tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmRyxxInfo)  
	*  作    者 ： wang  
	*/
	
	@Override
	public void save(KjxmRyxxInfo info) {
		kjxmRyxxDao.save(info);
	}
	
	/** 
	*  方法名 ： delete
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param list  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmRyxxInfoService#delete(java.util.List)  
	*  作    者 ： wang  
	*/
	
	@Override
	public void delete(List<KjxmRyxxInfo> list) {
		kjxmRyxxDao.delete(list);
	}
	
	/** 
	*  方法名 ： findList
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param uuid
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmRyxxService#findList(java.lang.String)  
	*  作    者 ： wang  
	*/
	
	@Override
	public List<KjxmRyxxInfo> findList(String xmjbUuid) {
		return kjxmRyxxDao.findAllByXmjbUuid(xmjbUuid);
	}
	
	/** 
	*  方法名 ： list
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmRyxxService#list(tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmJbxxInfo)  
	*  作    者 ： wang  
	*/
	
	@Override
	public List<KjxmRyxxInfo> list(KjxmJbxxInfo info) {
		return kjxmRyxxDao.findAllByXmjbUuid(info.getUuid());
	}
	
	/** 
	*  方法名 ： findOne
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmRyxxService#findOne(tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmRyxxInfo)  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public KjxmRyxxInfo findOne(KjxmRyxxInfo info) {
		return kjxmRyxxDao.findOneByuuid(info.getUuid());
	}
}
