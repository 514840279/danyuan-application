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

import tk.ainiyue.danyuan.application.softm.organization.dao.SysOrganizationDao;
import tk.ainiyue.danyuan.application.softm.organization.po.SysOrganizationInfo;
import tk.ainiyue.danyuan.application.softm.organization.service.SysOrganizationService;

/**
 * 文件名 ： SysOrganizationServiceImpl.java
 * 包 名 ： tk.ainiyue.admin.organization.service.impl
 * 描 述 ： SysOrganizationServiceImpl实现类
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:49:49
 * 版 本 ： V1.0
 */
@Service("sysOrganizationService")
public class SysOrganizationServiceImpl implements SysOrganizationService {
	
	//
	@Autowired
	private SysOrganizationDao sysOrganizationDao;
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： 取全部数据
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.admin.organization.service.SysOrganizationService#findAll()
	 * 作 者 ： Tenghui.Wang
	 */
	@Override
	public List<SysOrganizationInfo> findAll() {
		return sysOrganizationDao.findAll();
	}
	
	/**
	 * 方法名 ： sysOrganizationAdd
	 * 功 能 ： 数据录入
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.admin.organization.service.SysOrganizationService#sysOrganizationAdd(tk.ainiyue.admin.organization.po.SysOrganizationInfo)
	 * 作 者 ： Tenghui.Wang
	 */
	@Override
	public void sysOrganizationAdd(SysOrganizationInfo info) {
		sysOrganizationDao.save(info);
	}
	
	/**
	 * 方法名 ： sysOrganizationDelete
	 * 功 能 ： 删除一条数据
	 * 参 数 ： @param info
	 * 参 考 ： @see
	 * tk.ainiyue.admin.organization.service.SysOrganizationService#sysOrganizationDelete(tk.ainiyue.admin.organization.po.SysOrganizationInfo)
	 * 作 者 ： Tenghui.Wang
	 */
	@Override
	public void sysOrganizationDelete(SysOrganizationInfo info) {
		sysOrganizationDao.delete(info);
	}
	
	/**
	 * 方法名 ： findSysOrganization
	 * 功 能 ：找到一条数据
	 * 参 数 ： @param info
	 * 参 考 ： @see
	 * tk.ainiyue.admin.organization.service.SysOrganizationService#findSysOrganization(tk.ainiyue.admin.organization.po.SysOrganizationInfo)
	 * 作 者 ： Tenghui.Wang
	 */
	@Override
	public SysOrganizationInfo findSysOrganization(String info) {
		return sysOrganizationDao.findOne(info);
		
	}
	
	/**
	 * 方法名 ： sysOrganizationEdit
	 * 功 能 ： 修改一条数据
	 * 参 数 ： @param info
	 * 参 考 ： @see
	 * tk.ainiyue.admin.organization.service.SysOrganizationService#sysOrganizationEdit(tk.ainiyue.admin.organization.po.SysOrganizationInfo)
	 * 作 者 ： Tenghui.Wang
	 */
	@Override
	public void sysOrganizationEdit(SysOrganizationInfo info) {
		sysOrganizationDao.save(info);
		
	}
	
	/**
	 * 方法名 ： findByUuid
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param uuid
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.organization.service.SysOrganizationService#findByUuid(java.lang.String)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public SysOrganizationInfo findByUuid(String uuid) {
		return sysOrganizationDao.findOne(uuid);
	}
	
	/**
	 * 方法名 ： findAllBySearchText
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param pageNumber
	 * 参 数 ： @param pageSize
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.organization.service.SysOrganizationService#findAllBySearchText(int,
	 * int,
	 * tk.ainiyue.danyuan.application.crm.organization.po.SysOrganizationInfo)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public Page<SysOrganizationInfo> findAllBySearchText(int pageNumber, int pageSize, SysOrganizationInfo info) {
		Example<SysOrganizationInfo> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		Page<SysOrganizationInfo> sourceCodes = sysOrganizationDao.findAll(example, request);
		return sourceCodes;
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.organization.service.SysOrganizationService#save(tk.ainiyue.danyuan.application.crm.organization.po.SysOrganizationInfo)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void save(SysOrganizationInfo info) {
		sysOrganizationDao.save(info);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.organization.service.SysOrganizationService#delete(tk.ainiyue.danyuan.application.crm.organization.po.SysOrganizationInfo)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(SysOrganizationInfo info) {
		sysOrganizationDao.delete(info);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.organization.service.SysOrganizationService#delete(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(List<SysOrganizationInfo> list) {
		sysOrganizationDao.delete(list);
	}
	
	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ：
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.organization.service.SysOrganizationService#trunc()
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void trunc() {
		sysOrganizationDao.deleteAll();
	}
	
}
