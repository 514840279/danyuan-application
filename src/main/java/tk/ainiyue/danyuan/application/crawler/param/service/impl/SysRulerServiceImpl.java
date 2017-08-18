package tk.ainiyue.danyuan.application.crawler.param.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tk.ainiyue.danyuan.application.crawler.param.dao.SysRulerDao;
import tk.ainiyue.danyuan.application.crawler.param.dao.SysSeedRulerColumDao;
import tk.ainiyue.danyuan.application.crawler.param.po.SysRulerInfo;
import tk.ainiyue.danyuan.application.crawler.param.service.SysRulerService;

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
@Service("sysSeedRulerService")
@Transactional
public class SysRulerServiceImpl implements SysRulerService {
	
	//
	@Autowired
	private SysRulerDao			 sysSeedRulerDao;
	@Autowired
	private SysSeedRulerColumDao sysSeedRulerColumDao;
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crawler.param.service.SysRolerService#findAll()
	 * 作 者 ： wang
	 */
	
	@Override
	public List<SysRulerInfo> findAllBySeedUuid(String seedUuid) {
		return sysSeedRulerDao.findAllBySeedUuid(seedUuid);
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
	public void addSysRuler(SysRulerInfo rulerInfo) {
		sysSeedRulerDao.save(rulerInfo);
	}
	
	@Override
	public void deleteSysRulerInfo(List<SysRulerInfo> list) {
		for (SysRulerInfo sysRulerInfo : list) {
			sysSeedRulerColumDao.deleteByRulerUuid(sysRulerInfo.getUuid());
		}
		sysSeedRulerDao.delete(list);
	}
	
}
