package tk.ainiyue.danyuan.application.crawler.seed.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.crawler.seed.dao.SysSeedDao;
import tk.ainiyue.danyuan.application.crawler.seed.po.SysSeedInfo;
import tk.ainiyue.danyuan.application.crawler.seed.service.SysSeedService;

/**
 * 文件名 ： SysSeedServiceImpl.java
 * 包 名 ： tk.ainiyue.admin.roles.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:55:28
 * 版 本 ： V1.0
 */
@Service("sysSeedService")
public class SysSeedServiceImpl implements SysSeedService {

	//
	@Autowired
	private SysSeedDao sysSeedDao;

	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see tk.ainiyue.admin.roles.service.SysRolesService#findAll()
	 * 作 者 ： Tenghui.Wang
	 */

	@Override
	public List<SysSeedInfo> findAll() {
		return (List<SysSeedInfo>) sysSeedDao.findAll();
	}

	@Override
	public void addSysMenuInfo(SysSeedInfo info) {
		
		sysSeedDao.save(info);
	}

}
