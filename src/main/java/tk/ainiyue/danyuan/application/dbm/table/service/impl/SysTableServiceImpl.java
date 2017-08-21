package tk.ainiyue.danyuan.application.dbm.table.service.impl;

import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.dbm.column.dao.SysColumnDao;
import tk.ainiyue.danyuan.application.dbm.column.po.SysColumnInfo;
import tk.ainiyue.danyuan.application.dbm.table.dao.SysTableDao;
import tk.ainiyue.danyuan.application.dbm.table.po.SysTableInfo;
import tk.ainiyue.danyuan.application.dbm.table.service.SysTableService;
import tk.ainiyue.danyuan.application.dbm.table.vo.SysTableVo;

/**
 * 文件名 ： SysTableServiceImpl.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.table.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:55:43
 * 版 本 ： V1.0
 */
@Service("sysTableService")
public class SysTableServiceImpl implements SysTableService {
	
	private static final Logger	logger = LoggerFactory.getLogger(SysTableServiceImpl.class);
	//
	@Autowired
	private SysTableDao			sysTableDao;
	@Autowired
	private SysColumnDao		sysColumnDao;
	
	@Autowired
	JdbcTemplate				jdbcTemplate;

	@Override
	public List<SysTableInfo> findAll() {
		return sysTableDao.findAll();
	}

	@Override
	public List<SysTableInfo> save(SysTableInfo info) {
		sysTableDao.save(info);
		StringBuilder sBuilder = new StringBuilder();
		sBuilder.append("CREATE TABLE ");
		sBuilder.append(info.getTableName());
		sBuilder.append("(md5 varchar(36) comment 'url的md5值',url varchar(2000) comment 'url地址',数据来源  varchar(50) comment '数据来源',datetime date comment '采集时间' )");
		jdbcTemplate.execute(sBuilder.toString());
		
		sysColumnDao.save(new SysColumnInfo(UUID.randomUUID().toString(), 36, "url的md5值", "md5", 1, "VARCHAR", "url的md5值", info.getUuid()));
		sysColumnDao.save(new SysColumnInfo(UUID.randomUUID().toString(), 2000, "url地址", "url", 2, "VARCHAR", "url地址", info.getUuid()));
		sysColumnDao.save(new SysColumnInfo(UUID.randomUUID().toString(), 50, "数据来源", "数据来源", 3, "VARCHAR", "数据来源", info.getUuid()));
		sysColumnDao.save(new SysColumnInfo(UUID.randomUUID().toString(), 6, "采集时间", "datetime", 4, "date", "采集时间", info.getUuid()));
		return sysTableDao.findAll();
	}

	@Override
	public List<SysTableInfo> deleteSysTableInfo(SysTableVo vo) {
		for (SysTableInfo info : vo.getList()) {
			try {
				StringBuilder sBuilder = new StringBuilder();
				sBuilder.append("drop table " + info.getTableName());
				jdbcTemplate.execute(sBuilder.toString());
			} catch (Exception e) {
				logger.error(info.getTableName() + "表不存在");
				System.err.println(e);
			} finally {
				sysTableDao.delete(info);
			}
		}
		
		return sysTableDao.findAll();
	}

	@Override
	public SysTableInfo findSysTableInofByUuid(String uuid) {
		return sysTableDao.findSysTableInofByUuid(uuid);
	}
	
	@Override
	public List<SysTableInfo> findAll(SysTableInfo sysTableInfo) {
		Example<SysTableInfo> example = Example.of(sysTableInfo);
		return sysTableDao.findAll(example);
	}
	
}
