package tk.ainiyue.danyuan.application.crawler.param.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.crawler.param.dao.SysSeedRolerColumDao;
import tk.ainiyue.danyuan.application.crawler.param.po.SysSeedRolerColumInfo;
import tk.ainiyue.danyuan.application.crawler.param.service.SysSeedRolerColumService;

/**
 * 文件名 ： SysSeedRolerColumServiceImpl.java
 * 包 名 ： tk.ainiyue.danyuan.application.crawler.param.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年7月20日 下午4:47:34
 * 版 本 ： V1.0
 */
@Service("sysSeedRolerColumService")
public class SysSeedRolerColumServiceImpl implements SysSeedRolerColumService {

	//
	@Autowired
	private SysSeedRolerColumDao sysSeedRolerColumDao;

	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crawler.param.service.SysSeedRolerColumService#findAll()
	 * 作 者 ： wang
	 */

	@Override
	public List<SysSeedRolerColumInfo> findAll() {
		return (List<SysSeedRolerColumInfo>) sysSeedRolerColumDao.findAll();
	}
	
	@Override
	public void addSysRolerColum(SysSeedRolerColumInfo info) {
		sysSeedRolerColumDao.save(info);
	}
	
	@Override
	public void deleteSysRolerInfo(List<SysSeedRolerColumInfo> list) {
		sysSeedRolerColumDao.delete(list);

	}

}
