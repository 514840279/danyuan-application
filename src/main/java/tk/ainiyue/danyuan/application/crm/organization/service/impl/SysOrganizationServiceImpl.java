package tk.ainiyue.danyuan.application.crm.organization.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.crm.organization.dao.SysOrganizationDao;
import tk.ainiyue.danyuan.application.crm.organization.po.SysOrganizationInfo;
import tk.ainiyue.danyuan.application.crm.organization.service.SysOrganizationService;

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
		return (List<SysOrganizationInfo>) sysOrganizationDao.findAll();
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
	
}
