package tk.ainiyue.danyuan.application.kejiju.renyuan.dao;

import java.io.Serializable;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJbxxInfo;

/**    
*  文件名 ： KjryJbxxInfoDao.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.renyuan.dao  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年3月1日 下午11:38:18  
*  版    本 ： V1.0    
*/
@Repository("kjryJbxxDao")
@DynamicUpdate(true)
@DynamicInsert(true)
public interface KjryJbxxDao extends JpaRepository<KjryJbxxInfo, Serializable> {
	
}
