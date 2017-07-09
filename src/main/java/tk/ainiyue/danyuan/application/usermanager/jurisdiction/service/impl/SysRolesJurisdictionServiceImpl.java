package tk.ainiyue.danyuan.application.usermanager.jurisdiction.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.usermanager.jurisdiction.dao.SysRolesJurisdictionDao;
import tk.ainiyue.danyuan.application.usermanager.jurisdiction.po.SysRolesJurisdictionInfo;
import tk.ainiyue.danyuan.application.usermanager.jurisdiction.service.SysRolesJurisdictionService;

/**
 * 文件名 ： SysRolesJurisdictionServiceImpl.java
 * 包 名 ： tk.ainiyue.admin.jurisdiction.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:47:59
 * 版 本 ： V1.0
 */
@Service("sysRolesJurisdictionService")
public class SysRolesJurisdictionServiceImpl implements SysRolesJurisdictionService {
	
	//
	@Autowired
	private SysRolesJurisdictionDao sysRolesJurisdictionDao;
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.admin.jurisdiction.service.SysRolesJurisdictionService#findAll()
	 * 作 者 ： Tenghui.Wang
	 */
	
	@Override
	public List<SysRolesJurisdictionInfo> findAll() {
		// TODO Auto-generated method stub
		return (List<SysRolesJurisdictionInfo>) sysRolesJurisdictionDao.findAll();
	}
	
}
