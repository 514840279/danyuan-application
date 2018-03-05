package tk.ainiyue.danyuan.application.kejiju.xiangmu.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmJbxxInfo;

/**
 * 文件名 ： SysDatabaseDao.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.addr.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang 
 * 时 间 ： 2017年8月3日 下午3:46:57
 * 版 本 ： V1.0
 */
@Repository("kjxmJbxxDao")
@DynamicUpdate(true)
@DynamicInsert(true)
public interface KjxmJbxxDao extends JpaRepository<KjxmJbxxInfo, Serializable> {
	
	/**  
	*  方法名： dicJsly  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @return 
	*  返    回： List<String>  
	*  作    者 ： wang  
	*  @throws  
	*/
	@Query("select t.projectDomain from KjxmJbxxInfo t ")
	List<String> dicJsly();
	
	/**  
	*  方法名： dicXmlx  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @return 
	*  返    回： List<String>  
	*  作    者 ： wang  
	*  @throws  
	*/
	@Query("select t.projectType from KjxmJbxxInfo t ")
	List<String> dicXmlx();
	
	/**  
	*  方法名： dicSj  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @return 
	*  返    回： List<String>  
	*  作    者 ： wang  
	*  @throws  
	*/
	@Query("select t.approvalYear from KjxmJbxxInfo t ")
	List<String> dicSj();
	
	/**  
	*  方法名： dicDq  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @return 
	*  返    回： List<String>  
	*  作    者 ： wang  
	*  @throws  
	*/
	@Query("select t.region from KjxmJbxxInfo t ")
	List<String> dicDq();
	
}
