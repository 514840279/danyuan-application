package tk.ainiyue.danyuan.application.softm.organization.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.softm.organization.po.SysRolesJurisdictionInfo;
import tk.ainiyue.danyuan.application.softm.organization.po.SysRolesJurisdictionInfoPK;

/**
 * 文件名 ： SysRolesJurisdictionDao.java
 * 包 名 ： tk.ainiyue.admin.jurisdiction.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:48:18
 * 版 本 ： V1.0
 */
@Repository("sysRolesJurisdictionDao")
public interface SysRolesJurisdictionDao extends JpaRepository<SysRolesJurisdictionInfo, String> {
	
	SysRolesJurisdictionInfo findById(Class<SysRolesJurisdictionInfo> class1, SysRolesJurisdictionInfoPK pk);
	
}
