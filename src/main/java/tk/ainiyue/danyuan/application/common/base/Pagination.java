package tk.ainiyue.danyuan.application.common.base;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Sort.Direction;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

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
	
	public Integer		pageNumber;
	public Integer		pageSize;
	public String	uuid;
	public String	searchText;
	public String	username;
	public String	sortName;
	public String	filter;
	public String	sortOrder;
	public Direction order ;
	List<T>			list;
	public T		info;
	public Map<String,String> map= new HashMap<String,String>();
	
	/**  
	 *  方法名 ： getInfo 
	 *  功    能 ： 返回变量 info 的值  
	 *  @return: T 
	 */
	public T getInfo() {
		return info;
	}
	
	/**  
	 *  方法名 ： setInfo 
	 *  功    能 ： 设置变量 info 的值
	 */
	public void setInfo(T info) {
		this.info = info;
	}
	
	/**  
	 *  方法名 ： getPageNumber 
	 *  功    能 ： 返回变量 pageNumber 的值  
	 *  @return: Integer 
	 */
	public Integer getPageNumber() {
		return pageNumber;
	}
	
	/**  
	 *  方法名 ： setPageNumber 
	 *  功    能 ： 设置变量 pageNumber 的值
	 */
	public void setPageNumber(Integer pageNumber) {
		this.pageNumber = pageNumber;
	}
	
	/**  
	 *  方法名 ： getPageSize 
	 *  功    能 ： 返回变量 pageSize 的值  
	 *  @return: Integer 
	 */
	public Integer getPageSize() {
		return pageSize;
	}
	
	/**  
	 *  方法名 ： setPageSize 
	 *  功    能 ： 设置变量 pageSize 的值
	 */
	public void setPageSize(Integer pageSize) {
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

	public String getSortName() {
		return sortName;
	}

	public void setSortName(String sortName) {
		this.sortName = sortName;
	}

	public String getSortOrder() {
		return sortOrder;
	}

	public void setSortOrder(String sortOrder) {
		this.sortOrder = sortOrder;
		switch (sortOrder){
		case("desc"):
			order = Direction.DESC;
			break;
		case("asc"):
			order =  Direction.ASC;
			break;
		}
	}

	public Direction getOrder() {
		return order;
	}
	
	

	public String getFilter() {
		return filter;
	}

	@SuppressWarnings("unchecked")
	public void setFilter(String filter) throws JsonParseException, JsonMappingException, IOException {
		this.filter = filter;
		if(filter!=null&& !"".equals(filter)){
			ObjectMapper objmap = new ObjectMapper();
			this.map = objmap.readValue(filter, Map.class);
		}
	}

	public Map<String, String> getMap() {
		return map;
	}

	@Override
	public String toString() {
		return "Pagination [pageNumber=" + pageNumber + ", pageSize=" + pageSize + ", uuid=" + uuid + ", searchText="
				+ searchText + ", username=" + username + ", sortName=" + sortName + ", filter=" + filter
				+ ", sortOrder=" + sortOrder + ", order=" + order + ", list=" + list + ", info=" + info + ", map=" + map
				+ "]";
	}

	

	
	
	
}
