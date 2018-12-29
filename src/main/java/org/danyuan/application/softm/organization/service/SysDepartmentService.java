package org.danyuan.application.softm.organization.service;

import java.util.List;

import org.danyuan.application.softm.organization.po.SysDepartmentInfo;
import org.springframework.data.domain.Page;

/**
 * 文件名 ： SysDepartmentService.java
 * 包 名 ： tk.ainiyue.admin.department.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:46:24
 * 版 本 ： V1.0
 */
public interface SysDepartmentService {
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysDepartmentInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	List<SysDepartmentInfo> findAll();
	
	SysDepartmentInfo findByUuid(String uuid);
	
	Page<SysDepartmentInfo> findAllBySearchText(int pageNumber, int pageSize, SysDepartmentInfo info);
	
	void save(SysDepartmentInfo info);
	
	void delete(SysDepartmentInfo info);
	
	void delete(List<SysDepartmentInfo> list);
	
	void trunc();
	
}
