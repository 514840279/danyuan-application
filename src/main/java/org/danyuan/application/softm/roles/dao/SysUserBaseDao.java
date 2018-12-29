package org.danyuan.application.softm.roles.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.danyuan.application.softm.roles.po.SysRolesInfo;
import org.danyuan.application.softm.roles.po.SysUserBaseInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

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
	
	@Query("   select t from  SysRolesInfo t where t.uuid in ( " + " select a.rolesId from SysUserRolesInfo a where a.userId =:uuid) ")
	List<SysRolesInfo> getRoleByUser(@Param("uuid") String uuid);
	
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

	/**
	 * 方法名： savec
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param uuid
	 * 参 数： @param userName
	 * 参 数： @param email
	 * 参 数： @param phone
	 * 参 数： @param organization
	 * 参 数： @param department
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Transactional
	@Modifying
	@Query(" update SysUserBaseInfo t set userName =:userName,email=:email,phone=:phone,organization=:organization,department=:department,updateTime = CURRENT_TIMESTAMP  where uuid =:uuid")
	void savec(@Param("uuid") String uuid, @Param("userName") String userName, @Param("email") String email, @Param("phone") String phone, @Param("organization") String organization, @Param("department") String department);
	
}
