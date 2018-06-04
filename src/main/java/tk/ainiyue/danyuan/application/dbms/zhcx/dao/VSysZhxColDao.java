package tk.ainiyue.danyuan.application.dbms.zhcx.dao;

import java.io.Serializable;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.dbms.zhcx.po.VSysZhxCol;

/**
 * 文件名 ： SysTableDao.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.table.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:54:48
 * 版 本 ： V1.0
 */
@Repository("vSysZhxColDao")
@DynamicUpdate(true)
@DynamicInsert(true)
public interface VSysZhxColDao extends JpaRepository<VSysZhxCol, Serializable> {
	
}
