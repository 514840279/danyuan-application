package tk.ainiyue.danyuan.application.usermanager.system.service;

import java.util.List;

import tk.ainiyue.danyuan.application.usermanager.system.po.SysSystemInfo;

/**
 * 文件名 ： SysmenuService.java
 * 包 名 ： tk.ainiyue.admin.sysmenu.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2016年6月11日 上午10:41:02
 * 版 本 ： V1.0
 */
public interface SysSystemService {
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysSystemInfo>
	 * 作 者 ： wang
	 * @throws
	 */
	List<SysSystemInfo> findAll();
	
}
