package tk.ainiyue.danyuan.application.dbm.table.service;

import java.util.List;

import tk.ainiyue.danyuan.application.dbm.table.po.SysTableInfo;
import tk.ainiyue.danyuan.application.dbm.table.vo.SysTableVo;

/**
 * 文件名 ： SysTableService.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.table.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:55:25
 * 版 本 ： V1.0
 */
public interface SysTableService {
	
	List<SysTableInfo> findAll();

	List<SysTableInfo> save(SysTableInfo info);
	
	List<SysTableInfo> deleteSysTableInfo(SysTableVo vo);

}
