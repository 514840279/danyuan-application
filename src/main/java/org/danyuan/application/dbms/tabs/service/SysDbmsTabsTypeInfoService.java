package org.danyuan.application.dbms.tabs.service;

import java.util.List;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.dbms.tabs.dao.SysDbmsTabsTypeInfoDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsTypeInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysTableTypeServiceImpl.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.type.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:58:50
 * 版 本 ： V1.0
 */
@Service("sysDbmsTabsTypeInfoService")
public class SysDbmsTabsTypeInfoService extends BaseServiceImpl<SysDbmsTabsTypeInfo> implements BaseService<SysDbmsTabsTypeInfo> {
	//
	@Autowired
	private SysDbmsTabsTypeInfoDao sysDbmsTabsTypeInfoDao;
	
	public List<SysDbmsTabsTypeInfo> findAll() {
		return sysDbmsTabsTypeInfoDao.findAll();
	}
	
	public Page<SysDbmsTabsTypeInfo> findAllBySearchText(int pageNumber, int pageSize, SysDbmsTabsTypeInfo SysDbmsTabsTypeInfo) {
		Example<SysDbmsTabsTypeInfo> example = Example.of(SysDbmsTabsTypeInfo);
		Sort sort = Sort.by(new Order(Direction.DESC, "createTime"));
		PageRequest request = PageRequest.of(pageNumber - 1, pageSize, sort);
		Page<SysDbmsTabsTypeInfo> sourceCodes = sysDbmsTabsTypeInfoDao.findAll(example, request);
		return sourceCodes;
	}
	
	@Override
	public void deleteAll(List<SysDbmsTabsTypeInfo> list) {
		sysDbmsTabsTypeInfoDao.deleteAll(list);
	}
	
	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#findOne(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public SysDbmsTabsTypeInfo findOne(SysDbmsTabsTypeInfo info) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#findAll(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public List<SysDbmsTabsTypeInfo> findAll(SysDbmsTabsTypeInfo info) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param pageNumber
	 * 参 数 ： @param pageSize
	 * 参 数 ： @param info
	 * 参 数 ： @param map
	 * 参 数 ： @param order
	 * 参 数 ： @return
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#page(int, int, java.lang.Object, java.util.Map, org.springframework.data.domain.Sort.Order[])
	 * 作 者 ： Administrator
	 */
	
	@Override
	public Page<SysDbmsTabsTypeInfo> page(Pagination<SysDbmsTabsTypeInfo> vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#save(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void saveAll(List<SysDbmsTabsTypeInfo> list) {
		
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#delete(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(SysDbmsTabsTypeInfo info) {
		// TODO Auto-generated method stub
		
	}
	
	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ：
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#trunc()
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void trunc() {
		// TODO Auto-generated method stub
		
	}
}
