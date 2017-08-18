package tk.ainiyue.danyuan.application.crawler.param.service;

import java.util.List;

import tk.ainiyue.danyuan.application.crawler.param.po.SysSeedRulerColumInfo;

/**
 * 文件名 ： SysSeedRolerColumService.java
 * 包 名 ： tk.ainiyue.danyuan.application.crawler.param.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年7月20日 下午4:47:12
 * 版 本 ： V1.0
 */
public interface SysSeedRulerColumService {
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysRolerInfo>
	 * 作 者 ： wang
	 * @throws
	 */
	List<SysSeedRulerColumInfo> findAllByRulerUuid(String rolerUuid);

	void addSysRulerColum(SysSeedRulerColumInfo info);
	
	void deleteSysRulerInfo(List<SysSeedRulerColumInfo> list);
	
}
