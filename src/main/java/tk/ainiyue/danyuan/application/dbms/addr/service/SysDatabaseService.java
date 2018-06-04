package tk.ainiyue.danyuan.application.dbms.addr.service;

import java.util.List;

import tk.ainiyue.danyuan.application.dbms.addr.po.SysDatabaseInfo;

/**
 * 文件名 ： SysDatabaseService.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.addr.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:47:23
 * 版 本 ： V1.0
 */
public interface SysDatabaseService {

	List<SysDatabaseInfo> findAll();

	void save(SysDatabaseInfo sysDatabaseInfo);
	
	void deleteSysDatabaseInfo(List<SysDatabaseInfo> list);
	
}
