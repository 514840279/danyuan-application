package tk.ainiyue.danyuan.application.crawler.param.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.crawler.param.po.SysSeedRulerColumInfo;

/**
 * 文件名 ： SysSeedRolerColumDao.java
 * 包 名 ： tk.ainiyue.danyuan.application.crawler.param.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年7月20日 下午4:46:47
 * 版 本 ： V1.0
 */
@Repository("sysSeedRolerColumDao")
public interface SysSeedRulerColumDao extends JpaRepository<SysSeedRulerColumInfo, String> {

	List<SysSeedRulerColumInfo> findAllByRulerUuid(String rulerUuid);
	
	void deleteByRulerUuid(String uuid);
	
}
