package tk.ainiyue.danyuan.application.kejiju.renyuan.vo;

import tk.ainiyue.danyuan.application.common.base.Pagination;
import tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJbxxInfo;

/**    
*  文件名 ： KjryJbxxInfoVo.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.renyuan.vo  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年3月1日 下午11:25:08  
*  版    本 ： V1.0    
*/
public class KjryJbxxInfoVo extends Pagination<KjryJbxxInfo> {
	
	private String	name;
	private String	researchDirection;
	private String	porfessionalTitle;
	private String	degree;
	
	/**  
	 *  方法名 ： getName 
	 *  功    能 ： 返回变量 name 的值  
	 *  @return: String 
	 */
	public String getName() {
		return name;
	}
	
	/**  
	 *  方法名 ： setName 
	 *  功    能 ： 设置变量 name 的值
	 */
	public void setName(String name) {
		this.name = name;
	}
	
	/**  
	 *  方法名 ： getResearchDirection 
	 *  功    能 ： 返回变量 researchDirection 的值  
	 *  @return: String 
	 */
	public String getResearchDirection() {
		return researchDirection;
	}
	
	/**  
	 *  方法名 ： setResearchDirection 
	 *  功    能 ： 设置变量 researchDirection 的值
	 */
	public void setResearchDirection(String researchDirection) {
		this.researchDirection = researchDirection;
	}
	
	/**  
	 *  方法名 ： getPorfessionalTitle 
	 *  功    能 ： 返回变量 porfessionalTitle 的值  
	 *  @return: String 
	 */
	public String getPorfessionalTitle() {
		return porfessionalTitle;
	}
	
	/**  
	 *  方法名 ： setPorfessionalTitle 
	 *  功    能 ： 设置变量 porfessionalTitle 的值
	 */
	public void setPorfessionalTitle(String porfessionalTitle) {
		this.porfessionalTitle = porfessionalTitle;
	}
	
	/**  
	 *  方法名 ： getDegree 
	 *  功    能 ： 返回变量 degree 的值  
	 *  @return: String 
	 */
	public String getDegree() {
		return degree;
	}
	
	/**  
	 *  方法名 ： setDegree 
	 *  功    能 ： 设置变量 degree 的值
	 */
	public void setDegree(String degree) {
		this.degree = degree;
	}
	
}
