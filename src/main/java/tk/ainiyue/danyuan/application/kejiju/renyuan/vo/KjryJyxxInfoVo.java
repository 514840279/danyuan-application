package tk.ainiyue.danyuan.application.kejiju.renyuan.vo;

import tk.ainiyue.danyuan.application.common.base.Pagination;
import tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJyxxInfo;

/**    
*  文件名 ： KjryJyxxInfoVo.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.renyuan.vo  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年3月1日 下午11:25:43  
*  版    本 ： V1.0    
*/
public class KjryJyxxInfoVo extends Pagination<KjryJyxxInfo> {
	KjryJyxxInfo info = new KjryJyxxInfo();
	
	/**  
	 *  方法名 ： getInfo 
	 *  功    能 ： 返回变量 info 的值  
	 *  @return: KjryJyxxInfo 
	 */
	public KjryJyxxInfo getInfo() {
		return info;
	}
	
	/**  
	 *  方法名 ： setInfo 
	 *  功    能 ： 设置变量 info 的值
	 */
	public void setInfo(KjryJyxxInfo info) {
		this.info = info;
	}
	
}
