package tk.ainiyue.danyuan.application.dbm.type.service;

import java.util.List;

import org.springframework.data.domain.Page;

import tk.ainiyue.danyuan.application.dbm.type.po.SysTableTypeInfo;

/**
 * 文件名 ： SysTableTypeService.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.type.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:58:29
 * 版 本 ： V1.0
 */
public interface SysTableTypeService {

	List<SysTableTypeInfo> findAll();

	public void save(SysTableTypeInfo info);
	
	Page<SysTableTypeInfo> findAllBySearchText(int pageNumber, int pageSize, SysTableTypeInfo sysTableTypeInfo);
	
	void delete(List<SysTableTypeInfo> list);
}
