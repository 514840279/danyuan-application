package org.danyuan.application.softm.roles.service.impl;

import java.util.List;
import java.util.Optional;

import org.danyuan.application.softm.roles.dao.SysRolesDao;
import org.danyuan.application.softm.roles.dao.SysUserRolesDao;
import org.danyuan.application.softm.roles.po.SysRolesInfo;
import org.danyuan.application.softm.roles.po.SysUserRolesInfo;
import org.danyuan.application.softm.roles.service.SysRolesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysRolesServiceImpl.java
 * 包 名 ： tk.ainiyue.admin.roles.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:55:28
 * 版 本 ： V1.0
 */
@Service("sysRolesService")
public class SysRolesServiceImpl implements SysRolesService {

	//
	@Autowired
	private SysRolesDao		sysRolesDao;

	//
	@Autowired
	private SysUserRolesDao	sysUserRolesDao;

	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see tk.ainiyue.admin.roles.service.SysRolesService#findAll()
	 * 作 者 ： Tenghui.Wang
	 */

	@Override
	public List<SysRolesInfo> findAll() {
		return sysRolesDao.findAll();
	}

	/**
	 * 方法名 ： findByUuid
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param uuid
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.roles.service.SysRolesService#findByUuid(java.lang.String)
	 * 作 者 ： Administrator
	 */

	@Override
	public SysRolesInfo findByUuid(String uuid) {
		Optional<SysRolesInfo> t = sysRolesDao.findById(uuid);
		if (t.isPresent()) {
			return t.get();
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
	 * tk.ainiyue.danyuan.application.crm.roles.service.SysRolesService#findAllBySearchText(int,
	 * int, tk.ainiyue.danyuan.application.crm.roles.po.SysRolesInfo)
	 * 作 者 ： Administrator
	 */

	@Override
	public Page<SysRolesInfo> findAllBySearchText(int pageNumber, int pageSize, SysRolesInfo info) {
		Example<SysRolesInfo> example = Example.of(info);
		Sort sort = Sort.by(new Order(Direction.DESC, "createTime"));
		PageRequest request = PageRequest.of(pageNumber - 1, pageSize, sort);
		Page<SysRolesInfo> sourceCodes = sysRolesDao.findAll(example, request);
		return sourceCodes;
	}

	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.roles.service.SysRolesService#save(tk.ainiyue.danyuan.application.crm.roles.po.SysRolesInfo)
	 * 作 者 ： Administrator
	 */

	@Override
	public void save(SysRolesInfo info) {
		sysRolesDao.save(info);
	}

	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.roles.service.SysRolesService#delete(tk.ainiyue.danyuan.application.crm.roles.po.SysRolesInfo)
	 * 作 者 ： Administrator
	 */

	@Override
	public void delete(SysRolesInfo info) {
		sysRolesDao.delete(info);
	}

	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.roles.service.SysRolesService#delete(java.util.List)
	 * 作 者 ： Administrator
	 */

	@Override
	public void delete(List<SysRolesInfo> list) {
		sysRolesDao.deleteAll(list);
	}

	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ：
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.roles.service.SysRolesService#trunc()
	 * 作 者 ： Administrator
	 */

	@Override
	public void trunc() {
		sysRolesDao.deleteAll();
	}

	@Override
	public List<SysRolesInfo> findAllRoleBySearchText(String userId) {
		List<SysRolesInfo> list = sysRolesDao.findAll();
		for (SysRolesInfo sysRolesInfo : list) {
			SysUserRolesInfo info = new SysUserRolesInfo();
			info.setUserId(userId);
			info.setRolesId(sysRolesInfo.getUuid());
			Example<SysUserRolesInfo> e = Example.of(info);
			Optional<SysUserRolesInfo> t = sysUserRolesDao.findOne(e);
			if (!t.isPresent()) {
				sysRolesInfo.setChecked(t.get().getChecked());
			}
		}

		return list;
	}

}
