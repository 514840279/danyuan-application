package org.danyuan.application.softm.roles.service;

import java.util.List;
import java.util.Optional;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.softm.roles.dao.SysUserRolesInfoDao;
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
public class SysUserRolesInfoService extends BaseServiceImpl<SysUserRolesInfo> implements BaseService<SysUserRolesInfo> {
	
	//
	@Autowired
	private SysUserRolesInfoDao sysUserRolesInfoDao;
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.admin.userrole.service.SysUserRolesService#findAll()
	 * 作 者 ： Tenghui.Wang
	 */
	
	public List<SysUserRolesInfo> findAll() {
		return sysUserRolesInfoDao.findAll();
	}
	
	@Override
	public SysUserRolesInfo save(SysUserRolesInfo info) {
		SysUserRolesInfo info2 = new SysUserRolesInfo(info.getUserId(), info.getRolesId());
		Optional<SysUserRolesInfo> optional = sysUserRolesInfoDao.findOne(Example.of(info2));
		if (optional.isPresent()) {
			info2 = optional.get();
			info.setUuid(info2.getUuid());
			sysUserRolesInfoDao.save(info);
		} else {
			super.save(info);
		}
		return info;
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
	
	public Page<SysUserRolesInfo> findAllBySearchText(int pageNumber, int pageSize, SysUserRolesInfo info) {
		Example<SysUserRolesInfo> example = Example.of(info);
		Sort sort = Sort.by(new Order(Direction.ASC, "createTime"));
		PageRequest request = PageRequest.of(pageNumber - 1, pageSize, sort);
		Page<SysUserRolesInfo> sourceCodes = sysUserRolesInfoDao.findAll(example, request);
		return sourceCodes;
	}
	
}
