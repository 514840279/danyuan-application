package tk.ainiyue.danyuan.application.kejiju.renyuan.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryGzllInfo;

/**    
*  文件名 ： KjryGzllInfoDao.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.renyuan.dao  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年3月1日 下午11:30:35  
*  版    本 ： V1.0    
*/
@Repository("kjryGzllDao")
@DynamicUpdate(true)
@DynamicInsert(true)
public interface KjryGzllDao extends JpaRepository<KjryGzllInfo, Serializable> {
	
	/**  
	*  方法名： findAll  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @param personId
	*  参    数： @return 
	*  返    回： List<KjryGzllInfo>  
	*  作    者 ： Administrator  
	*  @throws  
	*/
	@Query("select t from KjryGzllInfo t where t.kjryJbxxInfo.personId =:personId) ")
	List<KjryGzllInfo> findAll(@Param("personId") String personId);
	
	/**  
	*  方法名： findOneByUuid  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @param uuid
	*  参    数： @return 
	*  返    回： KjryGzllInfo  
	*  作    者 ： Administrator  
	*  @throws  
	*/
	@Query("select t from KjryGzllInfo t where t.uuid =:uuid) ")
	KjryGzllInfo findOneByUuid(@Param("uuid") String uuid);
	
}
