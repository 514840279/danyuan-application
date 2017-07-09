package tk.ainiyue.danyuan.application.usermanager.system.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.usermanager.system.dao.SysSystemDao;
import tk.ainiyue.danyuan.application.usermanager.system.po.SysSystemInfo;
import tk.ainiyue.danyuan.application.usermanager.system.service.SysSystemService;

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
public class SysmenuServiceImpl implements SysSystemService {
	
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
		return (List<SysSystemInfo>) sysSystemDao.findAll();
	}
	
}
