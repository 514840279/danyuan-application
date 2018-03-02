package tk.ainiyue.danyuan.application.kejiju.xiangmu.vo;

import tk.ainiyue.danyuan.application.common.base.Pagination;
import tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmDwxxInfo;

/**    
*  文件名 ： KjxmDwxxInfoVo.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.xiangmu.vo  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年3月1日 下午10:25:23  
*  版    本 ： V1.0    
*/
public class KjxmDwxxInfoVo extends Pagination<KjxmDwxxInfo> {
	KjxmDwxxInfo info = new KjxmDwxxInfo();
	
	/**  
	 *  方法名 ： getInfo 
	 *  功    能 ： 返回变量 info 的值  
	 *  @return: KjxmDwxxInfo 
	 */
	public KjxmDwxxInfo getInfo() {
		return info;
	}
	
	/**  
	 *  方法名 ： setInfo 
	 *  功    能 ： 设置变量 info 的值
	 */
	public void setInfo(KjxmDwxxInfo info) {
		this.info = info;
	}
	
}
