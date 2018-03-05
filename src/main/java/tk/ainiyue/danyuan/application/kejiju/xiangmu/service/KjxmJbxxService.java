package tk.ainiyue.danyuan.application.kejiju.xiangmu.service;

import java.util.List;

import org.springframework.data.domain.Page;

import tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmJbxxInfo;

/**    
*  文件名 ： KjxmJbxxInfoService.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.xiangmu.service  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年3月1日 下午10:14:03  
*  版    本 ： V1.0    
*/
public interface KjxmJbxxService {
	
	/**  
	*  方法名： page  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @param pageNumber
	*  参    数： @param pageSize
	*  参    数： @param info
	*  参    数： @return 
	*  返    回： Page<KjxmJbxxInfo>  
	*  作    者 ： wang  
	*  @throws  
	*/
	Page<KjxmJbxxInfo> page(int pageNumber, int pageSize, KjxmJbxxInfo info);
	
	/**  
	*  方法名： save  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @param info 
	*  返    回： void  
	*  作    者 ： wang  
	*  @throws  
	*/
	void save(KjxmJbxxInfo info);
	
	/**  
	*  方法名： delete  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @param list 
	*  返    回： void  
	*  作    者 ： wang  
	*  @throws  
	*/
	void delete(List<KjxmJbxxInfo> list);
	
	/**  
	*  方法名： dicJsly  
	*  功    能： 技术领域列表查询
	*  参    数： @return 
	*  返    回： List<String>  
	*  作    者 ： wang  
	*  @throws  
	*/
	List<String> dicJsly();
	
	/**  
	*  方法名： dicXmlx  
	*  功    能： 项目类型
	*  参    数： @return 
	*  返    回： List<String>  
	*  作    者 ： wang  
	*  @throws  
	*/
	List<String> dicXmlx();
	
	/**  
	*  方法名： dicSj  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @return 
	*  返    回： List<String>  
	*  作    者 ： wang  
	*  @throws  
	*/
	List<String> dicSj();
	
	/**  
	*  方法名： dicDq  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @return 
	*  返    回： List<String>  
	*  作    者 ： wang  
	*  @throws  
	*/
	List<String> dicDq();
	
}
