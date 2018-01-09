package tk.ainiyue.danyuan.application.user.userbase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.softm.sysmenu.po.SysMenuInfo;
import tk.ainiyue.danyuan.application.user.userbase.po.SysUserBaseInfo;

/**
 * 文件名 ： SysUserBaseDao.java
 * 包 名 ： tk.ainiyue.admin.userbase.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:57:33
 * 版 本 ： V1.0
 */
@Repository("sysUserBaseDao")
public interface SysUserBaseDao extends JpaRepository<SysUserBaseInfo, String> {
	
	@Query("   select t from  SysMenuInfo t where t.uuid in ( "
	        + " select a.menuId from SysRolesJurisdictionInfo a where a.roleId in ( "
	        + "   select b.rolesId  from SysUserRolesInfo b where   b.userId =:uuid"
	        + " ) "
	        + ") ")
	List<SysMenuInfo> getRoleByUser(@Param("uuid") String uuid);
	
}
