package tk.ainiyue.danyuan.application.crawler.seed.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tk.ainiyue.danyuan.application.crawler.param.dao.SysRulerDao;
import tk.ainiyue.danyuan.application.crawler.param.dao.SysSeedRulerColumDao;
import tk.ainiyue.danyuan.application.crawler.param.po.SysRulerInfo;
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
@Transactional
public class SysSeedServiceImpl implements SysSeedService {
	
	//
	@Autowired
	private SysSeedDao			 sysSeedDao;
	//
	@Autowired
	private SysRulerDao			 sysSeedRulerDao;
	@Autowired
	private SysSeedRulerColumDao sysSeedRulerColumDao;
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see tk.ainiyue.admin.roles.service.SysRolesService#findAll()
	 * 作 者 ： Tenghui.Wang
	 */
	
	@Override
	public Page<SysSeedInfo> findAll(int pageNumber, int pageSize, String searchText) {
		Sort sort = new Sort(new Order(Direction.DESC, "seedName"));
		PageRequest request = this.buildPageRequest(pageNumber, pageSize, sort);
		Page<SysSeedInfo> sourceCodes = null;
		if (searchText == null || "".equals(searchText)) {
			sourceCodes = sysSeedDao.findAll(request);
		} else {
			SysSeedInfo info = new SysSeedInfo();
			info.setSeedName(searchText);
			Example<SysSeedInfo> example = Example.of(info);
			sourceCodes = sysSeedDao.findAll(example, request);
		}
		return sourceCodes;
	}
	
	// 构建PageRequest
	private PageRequest buildPageRequest(int pageNumber, int pagzSize, Sort sort) {
		return new PageRequest(pageNumber - 1, pagzSize, sort);
	}
	
	@Override
	public void addSysMenuInfo(SysSeedInfo info) {
		sysSeedDao.save(info);
	}
	
	@Override
	public void deleteSysSeedInfo(List<SysSeedInfo> list) {
		for (SysSeedInfo sysSeedInfo : list) {
			List<SysRulerInfo> listroler = sysSeedRulerDao.findAllBySeedUuid(sysSeedInfo.getUuid());
			for (SysRulerInfo sysRulerInfo : listroler) {
				sysSeedRulerColumDao.deleteByRulerUuid(sysRulerInfo.getUuid());
			}
			sysSeedRulerDao.delete(listroler);
		}
		sysSeedDao.delete(list);
	}
	
	@Override
	public List<SysSeedInfo> findAll() {
		return sysSeedDao.findAll();
	}
	
}
