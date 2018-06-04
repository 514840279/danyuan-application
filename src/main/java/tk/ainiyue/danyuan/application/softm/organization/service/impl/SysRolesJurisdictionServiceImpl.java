package tk.ainiyue.danyuan.application.softm.organization.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.softm.organization.dao.SysRolesJurisdictionDao;
import tk.ainiyue.danyuan.application.softm.organization.po.SysRolesJurisdictionInfo;
import tk.ainiyue.danyuan.application.softm.organization.service.SysRolesJurisdictionService;

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
		return sysRolesJurisdictionDao.findAll();
	}
	
	/**
	 * 方法名 ： findByUuid
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param uuid
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.jurisdiction.service.SysRolesJurisdictionService#findByUuid(java.lang.String)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public SysRolesJurisdictionInfo findByUuid(String uuid) {
		return sysRolesJurisdictionDao.findOne(uuid);
	}
	
	/**
	 * 方法名 ： findAllBySearchText
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param pageNumber
	 * 参 数 ： @param pageSize
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.jurisdiction.service.SysRolesJurisdictionService#findAllBySearchText(int,
	 * int,
	 * tk.ainiyue.danyuan.application.crm.jurisdiction.po.SysRolesJurisdictionInfo)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public Page<SysRolesJurisdictionInfo> findAllBySearchText(int pageNumber, int pageSize, SysRolesJurisdictionInfo info) {
		Example<SysRolesJurisdictionInfo> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		Page<SysRolesJurisdictionInfo> sourceCodes = sysRolesJurisdictionDao.findAll(example, request);
		return sourceCodes;
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.jurisdiction.service.SysRolesJurisdictionService#save(tk.ainiyue.danyuan.application.crm.jurisdiction.po.SysRolesJurisdictionInfo)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void save(SysRolesJurisdictionInfo info) {
		sysRolesJurisdictionDao.save(info);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.jurisdiction.service.SysRolesJurisdictionService#delete(tk.ainiyue.danyuan.application.crm.jurisdiction.po.SysRolesJurisdictionInfo)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(SysRolesJurisdictionInfo info) {
		sysRolesJurisdictionDao.delete(info);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.jurisdiction.service.SysRolesJurisdictionService#delete(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(List<SysRolesJurisdictionInfo> list) {
		sysRolesJurisdictionDao.delete(list);
	}
	
	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ：
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.jurisdiction.service.SysRolesJurisdictionService#trunc()
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void trunc() {
		sysRolesJurisdictionDao.deleteAll();
	}
	
}
