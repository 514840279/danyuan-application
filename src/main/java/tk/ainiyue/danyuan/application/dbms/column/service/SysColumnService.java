package tk.ainiyue.danyuan.application.dbms.column.service;

import java.util.List;

import org.springframework.data.domain.Page;

import tk.ainiyue.danyuan.application.dbms.column.po.SysColumnInfo;

/**
 * 文件名 ： SysColumnService.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.column.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:52:05
 * 版 本 ： V1.0
 */
public interface SysColumnService {
	
	Page<SysColumnInfo> findAllByTableUuid(int pageNumber, int pageSize, String searchText, String tableUuid);
	
	void save(SysColumnInfo info);

	void deleteSysColumnInfo(List<SysColumnInfo> list);
	
	List<SysColumnInfo> findAllBySysColumnInfo(SysColumnInfo info);
	
	void saveSysColumnInfo(List<SysColumnInfo> list);
	
}
