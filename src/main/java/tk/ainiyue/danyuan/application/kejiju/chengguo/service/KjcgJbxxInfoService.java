package tk.ainiyue.danyuan.application.kejiju.chengguo.service;

import java.util.List;

import org.springframework.data.domain.Page;

import tk.ainiyue.danyuan.application.kejiju.chengguo.po.KjcgJbxxInfo;

/**    
*  文件名 ： KjcgJbxxInfoService.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.chengguo.service  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年3月1日 下午11:16:57  
*  版    本 ： V1.0    
*/
public interface KjcgJbxxInfoService {
	
	/**  
	*  方法名： page  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @param pageNumber
	*  参    数： @param pageSize
	*  参    数： @param info
	*  参    数： @return 
	*  返    回： Page<KjcgJbxxInfo>  
	*  作    者 ： wang  
	*  @throws  
	*/
	Page<KjcgJbxxInfo> page(int pageNumber, int pageSize, KjcgJbxxInfo info);
	
	/**  
	*  方法名： save  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @param info 
	*  返    回： void  
	*  作    者 ： wang  
	*  @throws  
	*/
	void save(KjcgJbxxInfo info);
	
	/**  
	*  方法名： delete  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @param list 
	*  返    回： void  
	*  作    者 ： wang  
	*  @throws  
	*/
	void delete(List<KjcgJbxxInfo> list);
	
}
