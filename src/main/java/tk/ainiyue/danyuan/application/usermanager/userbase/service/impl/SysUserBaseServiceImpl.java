package tk.ainiyue.danyuan.application.usermanager.userbase.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.usermanager.userbase.dao.SysUserBaseDao;
import tk.ainiyue.danyuan.application.usermanager.userbase.po.SysUserBaseInfo;
import tk.ainiyue.danyuan.application.usermanager.userbase.service.SysUserBaseService;

/**
 * 文件名 ： SysUserBaseServiceImpl.java
 * 包 名 ： tk.ainiyue.admin.userbase.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:58:07
 * 版 本 ： V1.0
 */
@Service("sysUserBaseService")
public class SysUserBaseServiceImpl implements SysUserBaseService {
	
	//
	@Autowired
	private SysUserBaseDao sysUserBaseDao;
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see tk.ainiyue.admin.userbase.service.SysUserBaseService#findAll()
	 * 作 者 ： Tenghui.Wang
	 */
	
	@Override
	public List<SysUserBaseInfo> findAll() {
		// TODO Auto-generated method stub
		return (List<SysUserBaseInfo>) sysUserBaseDao.findAll();
	}
	
}
