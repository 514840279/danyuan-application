package org.danyuan.application.softm.roles.vo;

import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.softm.roles.po.SysUserBaseInfo;

/**
 * 文件名 ： SysUserBaseVo.java 包 名 ：
 * tk.ainiyue.danyuan.application.user.userbase.vo 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称： 技能ID ： 作 者 ： Administrator 时 间 ： 2018年1月11日 上午11:30:56 版 本 ： V1.0
 */
public class SysUserBaseVo extends Pagination<SysUserBaseInfo> {
	String uuid;

	/**
	 * 方法名 ： setPageNumber 功 能 ： 设置变量 pageNumber 的值
	 */
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	/**
	 * 方法名 ： setPageSize 功 能 ： 设置变量 pageSize 的值
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * 方法名 ： getUuid 功 能 ： 返回变量 uuid 的值
	 * @return: String
	 */
	@Override
	public String getUuid() {
		return uuid;
	}

	/**
	 * 方法名 ： setUuid 功 能 ： 设置变量 uuid 的值
	 */
	@Override
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	/**
	 * 方法名 ： getSearchText 功 能 ： 返回变量 searchText 的值
	 * @return: String
	 */
	@Override
	public String getSearchText() {
		return searchText;
	}

	/**
	 * 方法名 ： setSearchText 功 能 ： 设置变量 searchText 的值
	 */
	@Override
	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

}
