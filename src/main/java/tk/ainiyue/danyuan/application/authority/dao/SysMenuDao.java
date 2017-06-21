package tk.ainiyue.danyuan.application.authority.dao;

import java.util.List;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import tk.ainiyue.danyuan.application.authority.po.SysMenuInfo;

@Repository("sysMenuDao")
@DynamicUpdate(true)
@DynamicInsert(true)
public interface SysMenuDao extends CrudRepository<SysMenuInfo, String> {
	
	/**
	 * 方法名： findAllByF_ParentIdOrderByF_SortCode
	 * 功 能： 菜单查询
	 * 参 数： @param F_ParentId
	 * 参 数： @return
	 * 返 回： List<Authority>
	 * 作 者 ： wang
	 * @throws
	 */
	@Query("select t from SysMenuInfo t where t.parentsId =?1 order by t.sort")
	public List<SysMenuInfo> findAllByParentsIdOrderByF_SortCode(String parentsId);
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： 查询全部数据
	 * 参 数 ： @return
	 * 参 考 ： @see org.springframework.data.repository.CrudRepository#findAll()
	 * 作 者 ： wang
	 */
	@Override
	@Query("select t from SysMenuInfo t  order by t.sort")
	public List<SysMenuInfo> findAll();
	
	/**
	 * 方法名： findAllById
	 * 功 能：找到一条数据
	 * 参 数： @return
	 * 返 回： Authority
	 * 作 者 ： wang
	 * @throws
	 */
	@Query("select t from SysMenuInfo t  where t.uuid =:uuid")
	public SysMenuInfo findAllByUuid(@Param("uuid") String uuid);
	
	/**
	 * 方法名： updateAuthorityName
	 * 功 能： 更新名称
	 * 参 数： @param getfFullName
	 * 参 数： @param getfModuleId
	 * 返 回： void
	 * 作 者 ： wang
	 * @throws
	 */
	@Transactional
	@Modifying(clearAutomatically = true)
	@Query("update SysMenuInfo t  set t.name=:name where t.uuid =:uuid")
	public void updateSysMenuInfoName(@Param("name") String name, @Param("uuid") String uuid);
	
	/**
	 * 方法名： getSize
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param getfParentId
	 * 参 数： @return
	 * 返 回： int
	 * 作 者 ： wang
	 * @throws
	 */
	@Query("select t from SysMenuInfo t  where t.parentsId =:parentsId")
	public List<SysMenuInfo> getSize(@Param("parentsId") String parentsId);
	
	/**
	 * 方法名： updateAuthorityName
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param getfParentId
	 * 参 数： @param i
	 * 参 数： @param str
	 * 返 回： void
	 * 作 者 ： wang
	 * @throws
	 */
	@Transactional
	@Modifying(clearAutomatically = true)
	@Query("update SysMenuInfo t  set t.parentsId=:parentsId,t.sort=:sort where t.uuid =:uuid")
	public void updateSysMenuInfoName(@Param("parentsId") String parentsId, @Param("sort") int sort, @Param("uuid") String uuid);
	
	/**
	 * 方法名： getFParentId
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param getfParentId
	 * 参 数： @return
	 * 返 回： String
	 * 作 者 ： wang
	 * @throws
	 */
	@Query("select t from SysMenuInfo t  where t.uuid =:uuid")
	public SysMenuInfo getParentId(@Param("uuid") String uuid);
	
}
