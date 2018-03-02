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

import tk.ainiyue.danyuan.application.kejiju.renyuan.dao.KjryJyxxDao;
import tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJyxxInfo;
import tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryJyxxService;

@Service("kjryJyxxService")
public class KjryJyxxServiceImpl implements KjryJyxxService {
	@Autowired
	private KjryJyxxDao kjryJyxxDao;
	
	/** 
	*  方法名 ： page
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param pageNumber
	*  参    数 ： @param pageSize
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryJyxxInfoService#page(int, int, tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJyxxInfo)  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public Page<KjryJyxxInfo> page(int pageNumber, int pageSize, KjryJyxxInfo info) {
		Example<KjryJyxxInfo> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		return kjryJyxxDao.findAll(example, request);
	}
	
	/** 
	*  方法名 ： save
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryJyxxInfoService#save(tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJyxxInfo)  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public void save(KjryJyxxInfo info) {
		kjryJyxxDao.save(info);
	}
	
	/** 
	*  方法名 ： delete
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param list  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryJyxxInfoService#delete(java.util.List)  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public void delete(List<KjryJyxxInfo> list) {
		kjryJyxxDao.delete(list);
	}
}
