package org.danyuan.application.softm.roles.service;

import java.util.List;
import java.util.Optional;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.softm.roles.dao.SysRolesInfoDao;
import org.danyuan.application.softm.roles.dao.SysUserRolesInfoDao;
import org.danyuan.application.softm.roles.po.SysRolesInfo;
import org.danyuan.application.softm.roles.po.SysUserRolesInfo;
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
public class SysRolesInfoService extends BaseServiceImpl<SysRolesInfo> implements BaseService<SysRolesInfo> {
	
	//
	@Autowired
	private SysRolesInfoDao		sysRolesInfoDao;
	
	//
	@Autowired
	private SysUserRolesInfoDao	sysUserRolesInfoDao;
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see tk.ainiyue.admin.roles.service.SysRolesService#findAll()
	 * 作 者 ： Tenghui.Wang
	 */
	
	public List<SysRolesInfo> findAll() {
		return sysRolesInfoDao.findAll();
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
	
	public Page<SysRolesInfo> findAllBySearchText(int pageNumber, int pageSize, SysRolesInfo info) {
		Example<SysRolesInfo> example = Example.of(info);
		Sort sort = Sort.by(new Order(Direction.DESC, "createTime"));
		PageRequest request = PageRequest.of(pageNumber - 1, pageSize, sort);
		Page<SysRolesInfo> sourceCodes = sysRolesInfoDao.findAll(example, request);
		return sourceCodes;
	}
	
	public List<SysRolesInfo> findAllRoleBySearchText(String userId) {
		List<SysRolesInfo> list = sysRolesInfoDao.findAll();
		for (SysRolesInfo sysRolesInfo : list) {
			SysUserRolesInfo info = new SysUserRolesInfo();
			info.setUserId(userId);
			info.setRolesId(sysRolesInfo.getUuid());
			Example<SysUserRolesInfo> e = Example.of(info);
			Optional<SysUserRolesInfo> t = sysUserRolesInfoDao.findOne(e);
			if (t.isPresent()) {
				sysRolesInfo.setChecked(t.get().getChecked());
			} else {
				sysRolesInfo.setChecked(false);
			}
		}
		
		return list;
	}
	
}
