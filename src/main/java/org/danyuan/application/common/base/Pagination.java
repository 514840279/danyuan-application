package org.danyuan.application.common.base;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Sort.Order;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * 文件名 ： Pagination.java
 * 包 名 ： tk.ainiyue.danyuan.application.common.base
 * 描 述 ： 通用逻辑分页，参数传递类
 * 作 者 ： wang
 * 时 间 ： 2018年3月1日 下午10:19:40
 * 版 本 ： V1.0
 */
public class Pagination<T> {
	
	public Integer				pageNumber;
	public Integer				pageSize;
	public String				uuid;
	public String				searchText;
	public String				username;
	public String				sortName;
	public String				filter;
	public String				sortOrder;
	public List<Order>			orders;
	List<T>						list;
	public T					info;
	public Map<String, String>	map	= new HashMap<>();
	
	/**
	 * 方法名 ： getInfo
	 * 功 能 ： 返回变量 info 的值
	 *
	 * @return: T
	 */
	public T getInfo() {
		return info;
	}
	
	/**
	 * 方法名 ： setInfo
	 * 功 能 ： 设置变量 info 的值
	 */
	public void setInfo(T info) {
		this.info = info;
	}
	
	/**
	 * 方法名 ： getPageNumber
	 * 功 能 ： 返回变量 pageNumber 的值
	 *
	 * @return: Integer
	 */
	public Integer getPageNumber() {
		return pageNumber;
	}
	
	/**
	 * 方法名 ： setPageNumber
	 * 功 能 ： 设置变量 pageNumber 的值
	 */
	public void setPageNumber(Integer pageNumber) {
		this.pageNumber = pageNumber;
	}
	
	/**
	 * 方法名 ： getPageSize
	 * 功 能 ： 返回变量 pageSize 的值
	 *
	 * @return: Integer
	 */
	public Integer getPageSize() {
		return pageSize;
	}
	
	/**
	 * 方法名 ： setPageSize
	 * 功 能 ： 设置变量 pageSize 的值
	 */
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	
	/**
	 * 方法名 ： getUuid
	 * 功 能 ： 返回变量 uuid 的值
	 *
	 * @return: String
	 */
	public String getUuid() {
		return uuid;
	}
	
	/**
	 * 方法名 ： setUuid
	 * 功 能 ： 设置变量 uuid 的值
	 */
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	/**
	 * 方法名 ： getSearchText
	 * 功 能 ： 返回变量 searchText 的值
	 *
	 * @return: String
	 */
	public String getSearchText() {
		return searchText;
	}
	
	/**
	 * 方法名 ： setSearchText
	 * 功 能 ： 设置变量 searchText 的值
	 */
	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}
	
	/**
	 * 方法名 ： getList
	 * 功 能 ： 返回变量 list 的值
	 *
	 * @return: List<T>
	 */
	public List<T> getList() {
		return list;
	}
	
	/**
	 * 方法名 ： setList
	 * 功 能 ： 设置变量 list 的值
	 */
	public void setList(List<T> list) {
		this.list = list;
	}
	
	/**
	 * 方法名 ： getUsername
	 * 功 能 ： 返回变量 username 的值
	 *
	 * @return: String
	 */
	public String getUsername() {
		return username;
	}
	
	/**
	 * 方法名 ： setUsername
	 * 功 能 ： 设置变量 username 的值
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getSortName() {
		return sortName;
	}
	
	public void setSortName(String sortName) {
		if (sortName != null && !"".equals(sortName)) {
			this.orders.add(Order.by(sortName));
		}
		this.sortName = sortName;
	}
	
	public String getSortOrder() {
		return sortOrder;
	}
	
	public String getFilter() {
		return filter;
	}
	
	@SuppressWarnings("unchecked")
	public void setFilter(String filter) throws JsonParseException, JsonMappingException, IOException {
		this.filter = filter;
		if (filter != null && !"".equals(filter)) {
			ObjectMapper objmap = new ObjectMapper();
			this.map = objmap.readValue(filter, Map.class);
		}
	}
	
	public Map<String, String> getMap() {
		return map;
	}

	/**
	 * 方法名 ： getOrders
	 * 功 能 ： 返回变量 orders 的值
	 *
	 * @return: List<Order>
	 */
	public List<Order> getOrders() {
		return orders;
	}

	/**
	 * 方法名 ： setOrders
	 * 功 能 ： 设置变量 orders 的值
	 */
	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}

	/**
	 * 方法名 ： setSortOrder
	 * 功 能 ： 设置变量 sortOrder 的值
	 */
	public void setSortOrder(String sortOrder) {
		this.sortOrder = sortOrder;
	}

	/**
	 * 方法名 ： setMap
	 * 功 能 ： 设置变量 map 的值
	 */
	public void setMap(Map<String, String> map) {
		this.map = map;
	}

	/**
	 * 方法名 ： toString
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see java.lang.Object#toString()
	 * 作 者 ： Administrator
	 */
	
	@Override
	public String toString() {
		return "Pagination [pageNumber=" + pageNumber + ", pageSize=" + pageSize + ", uuid=" + uuid + ", searchText=" + searchText + ", username=" + username + ", sortName=" + sortName + ", filter=" + filter + ", sortOrder=" + sortOrder + ", orders=" + orders + ", list=" + list + ", info=" + info + ", map=" + map + "]";
	}

}
