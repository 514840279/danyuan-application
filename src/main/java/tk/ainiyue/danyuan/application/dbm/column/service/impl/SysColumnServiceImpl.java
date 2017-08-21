package tk.ainiyue.danyuan.application.dbm.column.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.dbm.column.dao.SysColumnDao;
import tk.ainiyue.danyuan.application.dbm.column.po.SysColumnInfo;
import tk.ainiyue.danyuan.application.dbm.column.service.SysColumnService;
import tk.ainiyue.danyuan.application.dbm.table.dao.SysTableDao;
import tk.ainiyue.danyuan.application.dbm.table.po.SysTableInfo;

/**
 * 文件名 ： SysColumnServiceImpl.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.column.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:52:36
 * 版 本 ： V1.0
 */
@Service("sysColumnService")
public class SysColumnServiceImpl implements SysColumnService {
	private static final Logger	logger = LoggerFactory.getLogger(SysColumnServiceImpl.class);
	//
	@Autowired
	private SysColumnDao		sysColumnDao;
	@Autowired
	private SysTableDao			sysTableDao;
	@Autowired
	JdbcTemplate				jdbcTemplate;
	
	// 分页查询
	@Override
	public Page<SysColumnInfo> findAllByTableUuid(int pageNumber, int pageSize, String searchText, String tableUuid) {
		logger.info(tableUuid, SysColumnServiceImpl.class);
//		Page<SysColumnInfo> list = sysColumnDao.findAllByTableUuid(tableUuid);
		SysColumnInfo info = new SysColumnInfo(tableUuid);
		Example<SysColumnInfo> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.ASC, "colsOrder"));
		PageRequest request = this.buildPageRequest(pageNumber, pageSize, sort);
		Page<SysColumnInfo> sourceCodes = sysColumnDao.findAll(example, request);
		return sourceCodes;
		
	}

	// 构建PageRequest
	private PageRequest buildPageRequest(int pageNumber, int pagzSize, Sort sort) {
		return new PageRequest(pageNumber - 1, pagzSize, sort);
	}

	// 更新
	@Override
	public void save(SysColumnInfo info) {
		try {
			SysTableInfo tab = sysTableDao.findOne(info.getTableUuid());
			SysColumnInfo old = sysColumnDao.findOne(info.getUuid());
			if (old != null) {
				String sql = "alter table " + tab.getTableName() + " CHANGE " + old.getColsName() + " " + info.getColsName() + " " + info.getColsType() + "(" + info.getColsLength() + ")";
				jdbcTemplate.execute(sql);
			} else {

				String sql = "alter table " + tab.getTableName() + " add " + info.getColsName() + " " + info.getColsType() + "(" + info.getColsLength() + ")";
				jdbcTemplate.execute(sql);
			}
		} finally {
			sysColumnDao.save(info);
			
		}
	}

	@Override
	public void deleteSysColumnInfo(List<SysColumnInfo> list) {

		SysTableInfo tab = sysTableDao.findOne(list.get(0).getTableUuid());
		for (SysColumnInfo sysColumnInfo : list) {
			try {
				// alter table user DROP COLUMN new2;
				String sql = "alter table " + tab.getTableName() + " DROP COLUMN " + sysColumnInfo.getColsName();
				jdbcTemplate.execute(sql);
			} finally {
				sysColumnDao.delete(sysColumnInfo);
			}
		}
	}

	@Override
	public List<SysColumnInfo> findAllBySysColumnInfo(SysColumnInfo info) {
		Example<SysColumnInfo> example = Example.of(info);
		return sysColumnDao.findAll(example);
	}
}
