package tk.ainiyue.danyuan.application.dbm.type.dao;

import java.io.Serializable;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.dbm.type.po.SysTableTypeInfo;

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
@Repository("sysTableTypeDao")
@DynamicUpdate(true)
@DynamicInsert(true)
public interface SysTableTypeDao extends JpaRepository<SysTableTypeInfo, Serializable> {
	
}
