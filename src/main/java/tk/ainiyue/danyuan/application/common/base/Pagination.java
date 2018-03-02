package tk.ainiyue.danyuan.application.common.base;

import java.util.List;

/**    
*  文件名 ： Pagination.java  
*  包    名 ： tk.ainiyue.danyuan.application.common.base  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年3月1日 下午10:19:40  
*  版    本 ： V1.0    
*/
public class Pagination<T> {
	
	public int		pageNumber;
	public int		pageSize;
	public String	uuid;
	public String	searchText;
	public String	username;
	List<T>			list;
	
	/**  
	 *  方法名 ： getPageNumber 
	 *  功    能 ： 返回变量 pageNumber 的值  
	 *  @return: int 
	 */
	public int getPageNumber() {
		return pageNumber;
	}
	
	/**  
	 *  方法名 ： setPageNumber 
	 *  功    能 ： 设置变量 pageNumber 的值
	 */
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	
	/**  
	 *  方法名 ： getPageSize 
	 *  功    能 ： 返回变量 pageSize 的值  
	 *  @return: int 
	 */
	public int getPageSize() {
		return pageSize;
	}
	
	/**  
	 *  方法名 ： setPageSize 
	 *  功    能 ： 设置变量 pageSize 的值
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	/**  
	 *  方法名 ： getUuid 
	 *  功    能 ： 返回变量 uuid 的值  
	 *  @return: String 
	 */
	public String getUuid() {
		return uuid;
	}
	
	/**  
	 *  方法名 ： setUuid 
	 *  功    能 ： 设置变量 uuid 的值
	 */
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	/**  
	 *  方法名 ： getSearchText 
	 *  功    能 ： 返回变量 searchText 的值  
	 *  @return: String 
	 */
	public String getSearchText() {
		return searchText;
	}
	
	/**  
	 *  方法名 ： setSearchText 
	 *  功    能 ： 设置变量 searchText 的值
	 */
	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}
	
	/**  
	 *  方法名 ： getList 
	 *  功    能 ： 返回变量 list 的值  
	 *  @return: List<T> 
	 */
	public List<T> getList() {
		return list;
	}
	
	/**  
	 *  方法名 ： setList 
	 *  功    能 ： 设置变量 list 的值
	 */
	public void setList(List<T> list) {
		this.list = list;
	}
	
	/**  
	 *  方法名 ： getUsername 
	 *  功    能 ： 返回变量 username 的值  
	 *  @return: String 
	 */
	public String getUsername() {
		return username;
	}
	
	/**  
	 *  方法名 ： setUsername 
	 *  功    能 ： 设置变量 username 的值
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	
}
