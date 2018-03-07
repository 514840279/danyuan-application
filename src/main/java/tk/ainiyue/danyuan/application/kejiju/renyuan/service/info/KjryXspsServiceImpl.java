package tk.ainiyue.danyuan.application.kejiju.renyuan.service.info;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.kejiju.renyuan.dao.KjryXspsDao;
import tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJbxxInfo;
import tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryXspsInfo;
import tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryXspsService;

@Service("kjryXspsService")
public class KjryXspsServiceImpl implements KjryXspsService {
	@Autowired
	private KjryXspsDao kjryXspsDao;
	
	/** 
	*  方法名 ： page
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param pageNumber
	*  参    数 ： @param pageSize
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryXspsInfoService#page(int, int, tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryXspsInfo)  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public Page<KjryXspsInfo> page(int pageNumber, int pageSize, KjryXspsInfo info) {
		Example<KjryXspsInfo> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		return kjryXspsDao.findAll(example, request);
	}
	
	/** 
	*  方法名 ： save
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryXspsInfoService#save(tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryXspsInfo)  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public void save(KjryXspsInfo info) {
		kjryXspsDao.save(info);
	}
	
	/** 
	*  方法名 ： delete
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param list  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryXspsInfoService#delete(java.util.List)  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public void delete(List<KjryXspsInfo> list) {
		kjryXspsDao.delete(list);
	}
	
	/** 
	*  方法名 ： list
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryXspsService#list(tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJbxxInfo)  
	*  作    者 ： wang  
	*/
	
	@Override
	public List<KjryXspsInfo> list(KjryJbxxInfo info) {
		return kjryXspsDao.findAll(info.getPersonId());
	}
	
	/** 
	*  方法名 ： findOne
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryXspsService#findOne(tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryXspsInfo)  
	*  作    者 ： wang  
	*/
	
	@Override
	public KjryXspsInfo findOne(KjryXspsInfo info) {
		return kjryXspsDao.findOneByUuid(info.getUuid());
	}
}
