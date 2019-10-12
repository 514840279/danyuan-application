package org.danyuan.application.softm.organization.dao;

import org.danyuan.application.softm.organization.po.SysDepartmentInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * 文件名 ： SysDepartmentDao.java
 * 包 名 ： tk.ainiyue.admin.department.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:45:49
 * 版 本 ： V1.0
 */
@Repository("sysDepartmentDao")
public interface SysDepartmentDao extends JpaRepository<SysDepartmentInfo, String> {
	
}
