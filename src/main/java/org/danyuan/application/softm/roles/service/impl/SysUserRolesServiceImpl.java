package org.danyuan.application.softm.roles.service.impl;

import java.util.List;
import java.util.Optional;

import org.danyuan.application.softm.roles.dao.SysUserRolesDao;
import org.danyuan.application.softm.roles.po.SysUserRolesInfo;
import org.danyuan.application.softm.roles.service.SysUserRolesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysUserRolesServiceImpl.java
 * 包 名 ： tk.ainiyue.admin.userrole.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:59:07
 * 版 本 ： V1.0
 */
@Service("sysUserRolesService")
public class SysUserRolesServiceImpl implements SysUserRolesService {
	
	//
	@Autowired
	private SysUserRolesDao sysUserRolesDao;
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.admin.userrole.service.SysUserRolesService#findAll()
	 * 作 者 ： Tenghui.Wang
	 */
	
	@Override
	public List<SysUserRolesInfo> findAll() {
		return sysUserRolesDao.findAll();
	}
	
	/**
	 * 方法名 ： findByUuid
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param uuid
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.user.userrole.service.SysUserRolesService#findByUuid(java.lang.String)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public SysUserRolesInfo findByUuid(String uuid) {
		Optional<SysUserRolesInfo> info = sysUserRolesDao.findById(uuid);
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
	 * tk.ainiyue.danyuan.application.user.userrole.service.SysUserRolesService#findAllBySearchText(int,
	 * int, tk.ainiyue.danyuan.application.user.userrole.po.SysUserRolesInfo)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public Page<SysUserRolesInfo> findAllBySearchText(int pageNumber, int pageSize, SysUserRolesInfo info) {
		Example<SysUserRolesInfo> example = Example.of(info);
		Sort sort = Sort.by(new Order(Direction.ASC, "createTime"));
		PageRequest request = PageRequest.of(pageNumber - 1, pageSize, sort);
		Page<SysUserRolesInfo> sourceCodes = sysUserRolesDao.findAll(example, request);
		return sourceCodes;
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.user.userrole.service.SysUserRolesService#save(tk.ainiyue.danyuan.application.user.userrole.po.SysUserRolesInfo)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void save(SysUserRolesInfo info) {
		sysUserRolesDao.save(info);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.user.userrole.service.SysUserRolesService#delete(tk.ainiyue.danyuan.application.user.userrole.po.SysUserRolesInfo)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(SysUserRolesInfo info) {
		sysUserRolesDao.delete(info);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.user.userrole.service.SysUserRolesService#delete(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(List<SysUserRolesInfo> list) {
		sysUserRolesDao.deleteAll(list);
	}
	
	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ：
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.user.userrole.service.SysUserRolesService#trunc()
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void trunc() {
		sysUserRolesDao.deleteAll();
	}
	
}
