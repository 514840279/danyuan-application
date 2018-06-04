package tk.ainiyue.danyuan.application.softm.roles.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.softm.roles.po.SysUserBaseInfo;
import tk.ainiyue.danyuan.application.softm.sysmenu.po.SysMenuInfo;

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

	@Query("   select t from  SysMenuInfo t where t.uuid in ( " + " select a.id.menuId from SysRolesJurisdictionInfo a where a.id.roleId in ( " + "   select b.rolesId  from SysUserRolesInfo b where   b.userId =:uuid" + " ) " + ") ")
	List<SysMenuInfo> getRoleByUser(@Param("uuid") String uuid);

	/**
	 * 方法名： saveu
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param info
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Transactional
	@Modifying
	@Query(" update SysUserBaseInfo t set userName =:userName,persionName =:persionName,sex=:sex,email=:email,phone=:phone,age=:age,discription=:discription,updateTime = CURRENT_TIMESTAMP  where uuid =:uuid")
	void saveu(@Param("uuid") String uuid, @Param("persionName") String persionName, @Param("age") Integer age, @Param("userName") String userName, @Param("email") String email, @Param("phone") String phone, @Param("sex") String sex, @Param("discription") String discription);
	
	/**
	 * 方法名： changePassword <br />
	 * 功 能： TODO(这里用一句话描述这个方法的作用) <br />
	 * 参 数： @param password
	 * 参 数： @param uuid <br />
	 * 返 回： void <br />
	 * 作 者 ： Administrator <br />
	 * @throws
	 */
	@Transactional
	@Modifying
	@Query("update SysUserBaseInfo t set t.password = :password where t.uuid = :uuid")
	void changePassword(@Param("password") String password, @Param("uuid") String uuid);

}
