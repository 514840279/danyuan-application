package tk.ainiyue.danyuan.application.kejiju.renyuan.service;

import java.util.List;

import org.springframework.data.domain.Page;

import tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryGzllInfo;
import tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJbxxInfo;

public interface KjryGzllService {
	
	/**  
	*  方法名： page  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @param pageNumber
	*  参    数： @param pageSize
	*  参    数： @param info
	*  参    数： @return 
	*  返    回： Page<KjryGzllInfo>  
	*  作    者 ： Administrator  
	*  @throws  
	*/
	Page<KjryGzllInfo> page(int pageNumber, int pageSize, KjryGzllInfo info);
	
	/**  
	*  方法名： save  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @param info 
	*  返    回： void  
	*  作    者 ： Administrator  
	*  @throws  
	*/
	void save(KjryGzllInfo info);
	
	/**  
	*  方法名： delete  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @param list 
	*  返    回： void  
	*  作    者 ： Administrator  
	*  @throws  
	*/
	void delete(List<KjryGzllInfo> list);
	
	/**  
	*  方法名： list  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @param info
	*  参    数： @return 
	*  返    回： List<KjryGzllInfo>  
	*  作    者 ： Administrator  
	*  @throws  
	*/
	List<KjryGzllInfo> list(KjryJbxxInfo info);
	
	/**  
	*  方法名： findOne  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @param info
	*  参    数： @return 
	*  返    回： KjryGzllInfo  
	*  作    者 ： Administrator  
	*  @throws  
	*/
	KjryGzllInfo findOne(KjryGzllInfo info);
	
}
