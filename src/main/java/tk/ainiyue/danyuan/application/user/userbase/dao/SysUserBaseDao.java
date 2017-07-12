package tk.ainiyue.danyuan.application.user.userbase.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.user.userbase.po.SysUserBaseInfo;

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
public interface SysUserBaseDao extends CrudRepository<SysUserBaseInfo, String> {

}
