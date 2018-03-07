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

import tk.ainiyue.danyuan.application.kejiju.renyuan.dao.KjryXsjzDao;
import tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJbxxInfo;
import tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryXsjzInfo;
import tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryXsjzService;

@Service("kjryXsjzService")
public class KjryXsjzServiceImpl implements KjryXsjzService {
	@Autowired
	private KjryXsjzDao kjryXsjzDao;
	
	/** 
	*  方法名 ： page
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param pageNumber
	*  参    数 ： @param pageSize
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryXsjzInfoService#page(int, int, tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryXsjzInfo)  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public Page<KjryXsjzInfo> page(int pageNumber, int pageSize, KjryXsjzInfo info) {
		Example<KjryXsjzInfo> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		return kjryXsjzDao.findAll(example, request);
	}
	
	/** 
	*  方法名 ： save
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryXsjzInfoService#save(tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryXsjzInfo)  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public void save(KjryXsjzInfo info) {
		kjryXsjzDao.save(info);
	}
	
	/** 
	*  方法名 ： delete
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param list  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryXsjzInfoService#delete(java.util.List)  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public void delete(List<KjryXsjzInfo> list) {
		kjryXsjzDao.delete(list);
	}
	
	/** 
	*  方法名 ： list
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryXsjzService#list(tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJbxxInfo)  
	*  作    者 ： wang  
	*/
	
	@Override
	public List<KjryXsjzInfo> list(KjryJbxxInfo info) {
		return kjryXsjzDao.findAll(info.getPersonId());
	}
	
	/** 
	*  方法名 ： findOne
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryXsjzService#findOne(tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryXsjzInfo)  
	*  作    者 ： wang  
	*/
	
	@Override
	public KjryXsjzInfo findOne(KjryXsjzInfo info) {
		return kjryXsjzDao.findOneByUuid(info.getUuid());
	}
}
