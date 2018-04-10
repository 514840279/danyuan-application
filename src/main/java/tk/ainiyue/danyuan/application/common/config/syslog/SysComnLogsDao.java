package tk.ainiyue.danyuan.application.common.config.syslog;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


/**    
 *  文件名 ： SysComnLogsDao.java 
 *  包    名 ： tk.ainiyue.danyuan.application.common.config.syslog 
 *  描    述 ： TODO(用一句话描述该文件做什么) 
 *  机能名称：
 *  技能ID ：
 *  作    者 ： Administrator  
 *  时    间 ： 2018年4月9日 下午3:10:53  
 *  版    本 ： V1.0 
 */
@Repository
public interface SysComnLogsDao  extends JpaRepository<SysComnLogs, String> {
	
}
