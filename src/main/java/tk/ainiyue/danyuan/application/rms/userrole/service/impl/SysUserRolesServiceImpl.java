package tk.ainiyue.danyuan.application.rms.userrole.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.rms.userrole.dao.SysUserRolesDao;
import tk.ainiyue.danyuan.application.rms.userrole.po.SysUserRolesInfo;
import tk.ainiyue.danyuan.application.rms.userrole.service.SysUserRolesService;

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
		// TODO Auto-generated method stub
		return (List<SysUserRolesInfo>) sysUserRolesDao.findAll();
	}

}
