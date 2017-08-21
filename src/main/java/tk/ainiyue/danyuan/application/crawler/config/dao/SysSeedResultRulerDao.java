package tk.ainiyue.danyuan.application.crawler.config.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.crawler.config.po.SysSeedResultRulerInfo;

/**
 * 文件名 ： SysRolerDao.java
 * 包 名 ： tk.ainiyue.danyuan.application.crawler.param.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年7月20日 下午3:10:54
 * 版 本 ： V1.0
 */
@Repository("sysSeedResultRulerDao")
public interface SysSeedResultRulerDao extends JpaRepository<SysSeedResultRulerInfo, String> {

}
