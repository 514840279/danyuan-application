package tk.ainiyue.danyuan.application.kejiju.renyuan.vo;

import tk.ainiyue.danyuan.application.common.base.Pagination;
import tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryGzllInfo;

/**    
*  文件名 ： KjryGzllInfoVo.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.renyuan.vo  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年3月1日 下午11:24:44  
*  版    本 ： V1.0    
*/
public class KjryGzllInfoVo extends Pagination<KjryGzllInfo> {
	private String personId;
	
	/**  
	 *  方法名 ： getPersonId 
	 *  功    能 ： 返回变量 personId 的值  
	 *  @return: String 
	 */
	public String getPersonId() {
		return personId;
	}
	
	/**  
	 *  方法名 ： setPersonId 
	 *  功    能 ： 设置变量 personId 的值
	 */
	public void setPersonId(String personId) {
		this.personId = personId;
	}
	
}
