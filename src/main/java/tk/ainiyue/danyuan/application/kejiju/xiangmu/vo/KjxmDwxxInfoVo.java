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
	private String	uuid;
	private String	xmjbUuid;
	
	/**  
	 *  方法名 ： getUuid 
	 *  功    能 ： 返回变量 uuid 的值  
	 *  @return: String 
	 */
	@Override
	public String getUuid() {
		return uuid;
	}
	
	/**  
	 *  方法名 ： setUuid 
	 *  功    能 ： 设置变量 uuid 的值
	 */
	@Override
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	/**  
	 *  方法名 ： getXmjbUuid 
	 *  功    能 ： 返回变量 xmjbUuid 的值  
	 *  @return: String 
	 */
	public String getXmjbUuid() {
		return xmjbUuid;
	}
	
	/**  
	 *  方法名 ： setXmjbUuid 
	 *  功    能 ： 设置变量 xmjbUuid 的值
	 */
	public void setXmjbUuid(String xmjbUuid) {
		this.xmjbUuid = xmjbUuid;
	}
	
}
