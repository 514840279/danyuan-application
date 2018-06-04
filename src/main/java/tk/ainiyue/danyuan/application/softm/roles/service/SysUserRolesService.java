package tk.ainiyue.danyuan.application.softm.roles.service;

import java.util.List;

import org.springframework.data.domain.Page;

import tk.ainiyue.danyuan.application.softm.roles.po.SysUserRolesInfo;

/**
 * 文件名 ： SysUserRolesService.java
 * 包 名 ： tk.ainiyue.admin.userrole.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:58:43
 * 版 本 ： V1.0
 */
public interface SysUserRolesService {
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysUserRolesInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	List<SysUserRolesInfo> findAll();
	
	SysUserRolesInfo findByUuid(String uuid);
	
	Page<SysUserRolesInfo> findAllBySearchText(int pageNumber, int pageSize, SysUserRolesInfo info);
	
	void save(SysUserRolesInfo info);
	
	void delete(SysUserRolesInfo info);
	
	void delete(List<SysUserRolesInfo> list);
	
	void trunc();
}
