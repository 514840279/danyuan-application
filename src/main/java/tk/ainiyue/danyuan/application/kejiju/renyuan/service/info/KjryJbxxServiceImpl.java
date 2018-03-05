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

import tk.ainiyue.danyuan.application.kejiju.renyuan.dao.KjryJbxxDao;
import tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJbxxInfo;
import tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryJbxxService;

@Service("kjryJbxxService")
public class KjryJbxxServiceImpl implements KjryJbxxService {
	@Autowired
	private KjryJbxxDao kjryJbxxDao;
	
	/** 
	*  方法名 ： page
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param pageNumber
	*  参    数 ： @param pageSize
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryJbxxInfoService#page(int, int, tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJbxxInfo)  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public Page<KjryJbxxInfo> page(int pageNumber, int pageSize, KjryJbxxInfo info) {
		Example<KjryJbxxInfo> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		return kjryJbxxDao.findAll(example, request);
	}
	
	/** 
	*  方法名 ： save
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryJbxxInfoService#save(tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJbxxInfo)  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public void save(KjryJbxxInfo info) {
		kjryJbxxDao.save(info);
	}
	
	/** 
	*  方法名 ： delete
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param list  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryJbxxInfoService#delete(java.util.List)  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public void delete(List<KjryJbxxInfo> list) {
		kjryJbxxDao.delete(list);
	}
	
	/** 
	*  方法名 ： dicJsly
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryJbxxService#dicJsly()  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public List<String> dicJsly() {
		return kjryJbxxDao.dicJsly();
	}
	
	/** 
	*  方法名 ： dicZc
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryJbxxService#dicZc()  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public List<String> dicZc() {
		return kjryJbxxDao.dicZc();
	}
	
	/** 
	*  方法名 ： dicSj
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryJbxxService#dicSj()  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public List<String> dicXw() {
		return kjryJbxxDao.dicXw();
	}
	
	/** 
	*  方法名 ： findOne
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @param info
	*  参    数 ： @return  
	*  参    考 ： @see tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryJbxxService#findOne(tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJbxxInfo)  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public KjryJbxxInfo findOne(KjryJbxxInfo info) {
		Example<KjryJbxxInfo> example = Example.of(info);
		return kjryJbxxDao.findOne(example);
	}
	
}
