package org.danyuan.application.crawler.config.vo;

import java.util.ArrayList;
import java.util.List;

import org.danyuan.application.crawler.config.po.SysCrawlerResultRulerInfo;

/**    
*  文件名 ： SysCrawlerResultRulerVo.java  
*  包    名 ： org.danyuan.application.crawler.config.vo  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年12月5日 下午11:03:10  
*  版    本 ： V1.0    
*/
public class SysCrawlerResultRulerVo {
	public String							tableUuid;
	public String							rulerUuid;
	public List<SysCrawlerResultRulerInfo>	list	= new ArrayList<>();
	
	/**  
	 *  方法名 ： getTableUuid 
	 *  功    能 ： 返回变量 tableUuid 的值  
	 *  @return: String 
	 */
	public String getTableUuid() {
		return tableUuid;
	}
	
	/**  
	 *  方法名 ： setTableUuid 
	 *  功    能 ： 设置变量 tableUuid 的值
	 */
	public void setTableUuid(String tableUuid) {
		this.tableUuid = tableUuid;
	}
	
	/**  
	 *  方法名 ： getRulerUuid 
	 *  功    能 ： 返回变量 rulerUuid 的值  
	 *  @return: String 
	 */
	public String getRulerUuid() {
		return rulerUuid;
	}
	
	/**  
	 *  方法名 ： setRulerUuid 
	 *  功    能 ： 设置变量 rulerUuid 的值
	 */
	public void setRulerUuid(String rulerUuid) {
		this.rulerUuid = rulerUuid;
	}
	
	/**  
	 *  方法名 ： getList 
	 *  功    能 ： 返回变量 list 的值  
	 *  @return: List<SysCrawlerResultRulerInfo> 
	 */
	public List<SysCrawlerResultRulerInfo> getList() {
		return list;
	}
	
	/**  
	 *  方法名 ： setList 
	 *  功    能 ： 设置变量 list 的值
	 */
	public void setList(List<SysCrawlerResultRulerInfo> list) {
		this.list = list;
	}
	
}
