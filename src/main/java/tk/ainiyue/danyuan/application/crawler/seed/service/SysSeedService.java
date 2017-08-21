package tk.ainiyue.danyuan.application.crawler.seed.service;

import java.util.List;

import org.springframework.data.domain.Page;

import tk.ainiyue.danyuan.application.crawler.seed.po.SysSeedInfo;

/**
 * 文件名 ： SysRolesService.java
 * 包 名 ： tk.ainiyue.admin.roles.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:54:44
 * 版 本 ： V1.0
 */
public interface SysSeedService {

	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysRolesInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	Page<SysSeedInfo> findAll(int pageNumber, int pageSize, String searchText);

	void addSysMenuInfo(SysSeedInfo info);
	
	void deleteSysSeedInfo(List<SysSeedInfo> list);

	List<SysSeedInfo> findAll();

}
