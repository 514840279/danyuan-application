package tk.ainiyue.danyuan.application.crawler.param.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;

import tk.ainiyue.danyuan.application.crawler.param.dao.SysRolerDao;
import tk.ainiyue.danyuan.application.crawler.param.dao.SysSeedRolerColumDao;
import tk.ainiyue.danyuan.application.crawler.param.po.SysRolerInfo;
import tk.ainiyue.danyuan.application.crawler.param.service.SysRolerService;

/**
 * 文件名 ： SysRolerServiceImpl.java
 * 包 名 ： tk.ainiyue.danyuan.application.crawler.param.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年7月20日 下午3:08:47
 * 版 本 ： V1.0
 */
@Service("sysSeedRolerService")
@Transactional
public class SysRolerServiceImpl implements SysRolerService {

	//
	@Autowired
	private SysRolerDao			 sysSeedRolerDao;
	@Autowired
	private SysSeedRolerColumDao sysSeedRolerColumDao;

	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crawler.param.service.SysRolerService#findAll()
	 * 作 者 ： wang
	 */

	@Override
	public List<SysRolerInfo> findAllBySeedUuid(String seedUuid) {
		return sysSeedRolerDao.findAllBySeedUuid(seedUuid);
	}

	/**
	 * 方法名 ： addSysRoler
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param rolerInfo
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crawler.param.service.SysRolerService#addSysRoler(tk.ainiyue.danyuan.application.crawler.param.po.SysRolerInfo)
	 * 作 者 ： wang
	 */

	@Override
	public void addSysRoler(SysRolerInfo rolerInfo) {
		sysSeedRolerDao.save(rolerInfo);
	}

	@Override
	public void deleteSysRolerInfo(@RequestBody List<SysRolerInfo> list) {
		for (SysRolerInfo sysRolerInfo : list) {
			sysSeedRolerColumDao.deleteByRolerUuid(sysRolerInfo.getUuid());
		}
		sysSeedRolerDao.delete(list);
	}

}
