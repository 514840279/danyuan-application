package tk.ainiyue.danyuan.application.dbms.tabs.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.common.base.BaseService;
import tk.ainiyue.danyuan.application.dbms.tabs.dao.SysTableTypeDao;
import tk.ainiyue.danyuan.application.dbms.tabs.po.SysTableTypeInfo;

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
@Service("sysTableTypeService")
public class SysTableTypeServiceImpl implements BaseService<SysTableTypeInfo> {
	//
	@Autowired
	private SysTableTypeDao sysTableTypeDao;
	
	public List<SysTableTypeInfo> findAll() {
		return sysTableTypeDao.findAll();
	}
	
	@Override
	public void save(SysTableTypeInfo info) {
		sysTableTypeDao.save(info);
	}

	public Page<SysTableTypeInfo> findAllBySearchText(int pageNumber, int pageSize, SysTableTypeInfo sysTableTypeInfo) {
		Example<SysTableTypeInfo> example = Example.of(sysTableTypeInfo);
		Sort sort = new Sort(new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		Page<SysTableTypeInfo> sourceCodes = sysTableTypeDao.findAll(example, request);
		return sourceCodes;
	}
	
	@Override
	public void delete(List<SysTableTypeInfo> list) {
		sysTableTypeDao.delete(list);
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
	public SysTableTypeInfo findOne(SysTableTypeInfo info) {
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
	public List<SysTableTypeInfo> findAll(SysTableTypeInfo info) {
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
	public Page<SysTableTypeInfo> page(int pageNumber, int pageSize, SysTableTypeInfo info, Map<String, String> map, Order... order) {
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
	public void save(List<SysTableTypeInfo> list) {
		// TODO Auto-generated method stub

	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#delete(java.lang.Object)
	 * 作 者 ： Administrator
	 */

	@Override
	public void delete(SysTableTypeInfo info) {
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
