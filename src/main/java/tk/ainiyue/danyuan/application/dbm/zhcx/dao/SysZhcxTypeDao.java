package tk.ainiyue.danyuan.application.dbm.zhcx.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.dbm.zhcx.po.SysZhcxType;

/**
 * 文件名 ： SysTableTypeDao.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.type.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:58:14
 * 版 本 ： V1.0
 */
@Repository("sysZhcxTypeDao")
@DynamicUpdate(true)
@DynamicInsert(true)
public interface SysZhcxTypeDao extends JpaRepository<SysZhcxType, Serializable> {
	
	/**
	 * 方法名： findAllType
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param username
	 * 参 数： @return
	 * 返 回： List<SysZhcxType>
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Query("select distinct t from SysZhcxType t where t.deleteFlag>0 order by t.typeOrder")
	List<SysZhcxType> findAllType();
	
}
