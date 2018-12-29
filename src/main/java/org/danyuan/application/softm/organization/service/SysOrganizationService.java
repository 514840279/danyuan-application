package org.danyuan.application.softm.organization.service;

import java.util.List;

import org.danyuan.application.softm.organization.po.SysOrganizationInfo;
import org.springframework.data.domain.Page;

/**
 * 文件名 ： SysOrganizationService.java
 * 包 名 ： tk.ainiyue.admin.organization.service
 * 描 述 ： SysOrganizationService接口
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:49:08
 * 版 本 ： V1.0
 */
public interface SysOrganizationService {
	
	/**
	 * 方法名： findAll
	 * 功 能： 取全部数据
	 * 参 数： @return
	 * 返 回： List<SysOrganizationInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	List<SysOrganizationInfo> findAll();
	
	/**
	 * 方法名： sysOrganizationAdd
	 * 功 能： 添加数据
	 * 参 数： @param info
	 * 参 数： @return
	 * 返 回： boolean
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	void sysOrganizationAdd(SysOrganizationInfo info);
	
	/**
	 * 方法名： sysOrganizationDelete
	 * 功 能： 单个删除
	 * 参 数： @param info
	 * 返 回： void
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	void sysOrganizationDelete(SysOrganizationInfo info);
	
	/**
	 * 方法名： findSysOrganization
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param info
	 * 返 回： void
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	SysOrganizationInfo findSysOrganization(String info);
	
	/**
	 * 方法名： sysOrganizationEdit
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param info
	 * 返 回： void
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	void sysOrganizationEdit(SysOrganizationInfo info);
	
	SysOrganizationInfo findByUuid(String uuid);
	
	Page<SysOrganizationInfo> findAllBySearchText(int pageNumber, int pageSize, SysOrganizationInfo info);
	
	void save(SysOrganizationInfo info);
	
	void delete(SysOrganizationInfo info);
	
	void delete(List<SysOrganizationInfo> list);
	
	void trunc();
	
}
