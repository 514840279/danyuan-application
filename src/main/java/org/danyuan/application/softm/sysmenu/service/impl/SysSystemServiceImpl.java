package org.danyuan.application.softm.sysmenu.service.impl;

import java.util.List;
import java.util.Optional;

import org.danyuan.application.softm.sysmenu.dao.SysSystemDao;
import org.danyuan.application.softm.sysmenu.po.SysSystemInfo;
import org.danyuan.application.softm.sysmenu.service.SysSystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysmenuServiceImpl.java
 * 包 名 ： tk.ainiyue.admin.sysmenu.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2016年6月13日 下午10:22:35
 * 版 本 ： V1.0
 */
@Service("sysSystemService")
public class SysSystemServiceImpl implements SysSystemService {

	@Autowired
	private SysSystemDao sysSystemDao;

	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see tk.ainiyue.admin.sysmenu.service.SysmenuService#findAll()
	 * 作 者 ： wang
	 */

	@Override
	public List<SysSystemInfo> findAll() {
		return sysSystemDao.findAll();
	}
	
	/**
	 * 方法名 ： findByUuid
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param uuid
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.softm.system.service.SysSystemService#findByUuid(java.lang.String)
	 * 作 者 ： Administrator
	 */

	@Override
	public SysSystemInfo findByUuid(String uuid) {
		Optional<SysSystemInfo> info = sysSystemDao.findById(uuid);
		if (info.isPresent()) {
			return info.get();
		}
		return null;
	}
	
	/**
	 * 方法名 ： findAllBySearchText
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param pageNumber
	 * 参 数 ： @param pageSize
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.softm.system.service.SysSystemService#findAllBySearchText(int,
	 * int, tk.ainiyue.danyuan.application.softm.system.po.SysSystemInfo)
	 * 作 者 ： Administrator
	 */

	@Override
	public Page<SysSystemInfo> findAllBySearchText(int pageNumber, int pageSize, SysSystemInfo info) {
		Example<SysSystemInfo> example = Example.of(info);
		Sort sort = Sort.by(new Order(Direction.DESC, "insertDatetime"));
		PageRequest request = PageRequest.of(pageNumber - 1, pageSize, sort);
		Page<SysSystemInfo> sourceCodes = sysSystemDao.findAll(example, request);
		return sourceCodes;
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param t
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.softm.system.service.SysSystemService#save(tk.ainiyue.danyuan.application.softm.system.po.SysSystemInfo)
	 * 作 者 ： Administrator
	 */

	@Override
	public void save(SysSystemInfo info) {
		sysSystemDao.save(info);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param t
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.softm.system.service.SysSystemService#delete(tk.ainiyue.danyuan.application.softm.system.po.SysSystemInfo)
	 * 作 者 ： Administrator
	 */

	@Override
	public void delete(SysSystemInfo info) {
		sysSystemDao.delete(info);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.softm.system.service.SysSystemService#delete(java.util.List)
	 * 作 者 ： Administrator
	 */

	@Override
	public void delete(List<SysSystemInfo> list) {
		sysSystemDao.deleteAll(list);
	}
	
	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ：
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.softm.system.service.SysSystemService#trunc()
	 * 作 者 ： Administrator
	 */

	@Override
	public void trunc() {
		sysSystemDao.deleteAll();
	}

}
