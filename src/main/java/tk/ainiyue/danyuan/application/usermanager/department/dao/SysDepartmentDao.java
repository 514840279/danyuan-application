package tk.ainiyue.danyuan.application.usermanager.department.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.usermanager.department.po.SysDepartmentInfo;

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
public interface SysDepartmentDao extends CrudRepository<SysDepartmentInfo, String> {
	
}
