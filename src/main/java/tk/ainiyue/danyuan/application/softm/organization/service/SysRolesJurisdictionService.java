package tk.ainiyue.danyuan.application.softm.organization.service;

import java.util.List;

import org.springframework.data.domain.Page;

import tk.ainiyue.danyuan.application.softm.organization.po.SysRolesJurisdictionInfo;

/**
 * 文件名 ： SysRolesJurisdictionService.java
 * 包 名 ： tk.ainiyue.admin.jurisdiction.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:47:32
 * 版 本 ： V1.0
 */
public interface SysRolesJurisdictionService {
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysRolesJurisdictionInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	List<SysRolesJurisdictionInfo> findAll();
	
	SysRolesJurisdictionInfo findByUuid(String uuid);
	
	Page<SysRolesJurisdictionInfo> findAllBySearchText(int pageNumber, int pageSize, SysRolesJurisdictionInfo info);
	
	void save(SysRolesJurisdictionInfo info);
	
	void delete(SysRolesJurisdictionInfo info);
	
	void delete(List<SysRolesJurisdictionInfo> list);
	
	void trunc();
	
}
