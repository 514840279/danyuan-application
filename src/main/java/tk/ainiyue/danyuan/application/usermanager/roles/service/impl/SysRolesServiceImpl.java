package tk.ainiyue.danyuan.application.usermanager.roles.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.usermanager.roles.dao.SysRolesDao;
import tk.ainiyue.danyuan.application.usermanager.roles.po.SysRolesInfo;
import tk.ainiyue.danyuan.application.usermanager.roles.service.SysRolesService;

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
	private SysRolesDao sysRolesDao;
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see tk.ainiyue.admin.roles.service.SysRolesService#findAll()
	 * 作 者 ： Tenghui.Wang
	 */
	
	@Override
	public List<SysRolesInfo> findAll() {
		// TODO Auto-generated method stub
		return (List<SysRolesInfo>) sysRolesDao.findAll();
	}
	
}
