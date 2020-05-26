package org.danyuan.application.dbms.tabs.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

import org.apache.commons.lang3.StringUtils;
import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.dbms.tabs.dao.SysDbmsTabsColsInfoDao;
import org.danyuan.application.dbms.tabs.dao.SysDbmsTabsInfoDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsColsInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;
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

/**
 * 文件名 ： SysDbmsTabsColsInfoService.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.column.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:52:36
 * 版 本 ： V1.0
 */
@Service("sysDbmsTabsColsInfoService")
public class SysDbmsTabsColsInfoService extends BaseServiceImpl<SysDbmsTabsColsInfo> implements BaseService<SysDbmsTabsColsInfo> {
	private static final Logger		logger	= LoggerFactory.getLogger(SysDbmsTabsColsInfoService.class);
	//
	@Autowired
	private SysDbmsTabsColsInfoDao	sysDbmsTabsColsInfoDao;
	@Autowired
	private SysDbmsTabsInfoDao		sysDbmsTabsInfoDao;
	@Autowired
	private SysDbmsTabsInfoService	sysDbmsTabsInfoService;
	
	@Autowired
	JdbcTemplate					jdbcTemplate;
	
	// 分页查询
	public Page<SysDbmsTabsColsInfo> findAllByTableUuid(int pageNumber, int pageSize, String searchText, String tableUuid) {
		logger.info(tableUuid, SysDbmsTabsColsInfoService.class);
		// Page<SysDbmsTabsColsInfo> list = sysDbmsTabsColsInfoDao.findAllByTableUuid(tableUuid);
		SysDbmsTabsColsInfo info = new SysDbmsTabsColsInfo();
		info.setTabsUuid(tableUuid);
		Example<SysDbmsTabsColsInfo> example = Example.of(info);
		Sort sort = Sort.by(new Order(Direction.ASC, "colsOrder"));
		PageRequest request = this.buildPageRequest(pageNumber, pageSize, sort);
		Page<SysDbmsTabsColsInfo> sourceCodes = sysDbmsTabsColsInfoDao.findAll(example, request);
		return sourceCodes;
		
	}
	
	// 构建PageRequest
	private PageRequest buildPageRequest(int pageNumber, int pageSize, Sort sort) {
		return PageRequest.of(pageNumber - 1, pageSize, sort);
	}
	
	// 更新
	public void change(SysDbmsTabsColsInfo info) {
		try {
			SysDbmsTabsInfo tab = sysDbmsTabsInfoDao.findById(info.getTabsUuid()).get();
			if (!StringUtils.isEmpty(info.getUuid())) {
				Optional<SysDbmsTabsColsInfo> old = sysDbmsTabsColsInfoDao.findById(info.getUuid());
				String sql = "alter table " + tab.getTabsName() + " CHANGE " + old.get().getColsName() + " " + info.getColsName() + " " + info.getColsType() + "(" + info.getColsLength() + ")";
				jdbcTemplate.execute(sql);
			} else {
				
				String sql = "alter table " + tab.getTabsName() + " add " + info.getColsName() + " " + info.getColsType() + "(" + info.getColsLength() + ")";
				jdbcTemplate.execute(sql);
			}
		} finally {
			if (StringUtils.isEmpty(info.getUuid())) {
				info.setUuid(UUID.randomUUID().toString());
			}
			sysDbmsTabsColsInfoDao.save(info);
			
		}
	}
	
	public void deleteSysDbmsTabsColsInfo(List<SysDbmsTabsColsInfo> list) {
		
		Optional<SysDbmsTabsInfo> tab = sysDbmsTabsInfoDao.findById(list.get(0).getTabsUuid());
		if (tab.isPresent()) {
			for (SysDbmsTabsColsInfo SysDbmsTabsColsInfo : list) {
				try {
					// alter table user DROP COLUMN new2;
					String sql = "alter table " + tab.get().getTabsName() + " DROP COLUMN " + SysDbmsTabsColsInfo.getColsName();
					jdbcTemplate.execute(sql);
				} finally {
					sysDbmsTabsColsInfoDao.delete(SysDbmsTabsColsInfo);
				}
			}
		}
	}
	
	public List<SysDbmsTabsColsInfo> findAllBySysDbmsTabsColsInfo(SysDbmsTabsColsInfo info) {
		Example<SysDbmsTabsColsInfo> example = Example.of(info);
		return sysDbmsTabsColsInfoDao.findAll(example);
	}
	
	public void saveSysDbmsTabsColsInfo(List<SysDbmsTabsColsInfo> list) {
		sysDbmsTabsColsInfoDao.saveAll(list);
	}
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#findAll(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public List<SysDbmsTabsColsInfo> findAll(SysDbmsTabsColsInfo info) {
		Sort sort = Sort.by(Order.asc("colsOrder"));
		Example<SysDbmsTabsColsInfo> example = Example.of(info);
		return sysDbmsTabsColsInfoDao.findAll(example, sort);
	}
	
	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param pageNumber
	 * 参 数 ： @param pageSize
	 * 参 数 ： @param info
	 * 参 数 ： @param map
	 * 参 数 ： @param order
	 * 参 数 ： @return
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#page(int, int, java.lang.Object, java.util.Map, org.springframework.data.domain.Sort.Order[])
	 * 作 者 ： Administrator
	 */
	
	@Override
	public Page<SysDbmsTabsColsInfo> page(Pagination<SysDbmsTabsColsInfo> vo) {
		Order order;
		if (vo.getSortName() != null) {
			if (vo.getSortOrder().equals("desc")) {
				order = Order.desc(vo.getSortName());
			} else {
				order = Order.asc(vo.getSortName());
			}
		} else {
			order = new Order(Direction.DESC, "createTime");
		}
		if (vo.getInfo() == null) {
			vo.setInfo(new SysDbmsTabsColsInfo());
		}
		
		Example<SysDbmsTabsColsInfo> example = Example.of(vo.getInfo());
		Sort sort = Sort.by(order);
		PageRequest request = PageRequest.of(vo.getPageNumber() - 1, vo.getPageSize(), sort);
		Page<SysDbmsTabsColsInfo> page = sysDbmsTabsColsInfoDao.findAll(example, request);
		return page;
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#save(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void saveAll(List<SysDbmsTabsColsInfo> list) {
		for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : list) {
			if (sysDbmsTabsColsInfo.getUuid() == null) {
				sysDbmsTabsColsInfo.setUuid(UUID.randomUUID().toString());
			}
			change(sysDbmsTabsColsInfo);
		}
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#delete(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void deleteAll(List<SysDbmsTabsColsInfo> list) {
		sysDbmsTabsColsInfoDao.deleteAll(list);
	}
	
	/**
	 * @throws SQLException
	 * @throws SQLException
	 * @方法名 pagev
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param vo
	 * @参数 @return
	 * @返回 List<Map<String,Object>>
	 * @author Administrator
	 * @throws
	 */
	public List<SysDbmsTabsColsInfo> pagev(String uuid) throws SQLException {
		List<SysDbmsTabsColsInfo> list = new ArrayList<>();
		SysDbmsTabsInfo tabs = new SysDbmsTabsInfo();
		tabs.setUuid(uuid);
		tabs = sysDbmsTabsInfoService.findOne(tabs);
		StringBuilder pageSql = new StringBuilder();
		pageSql.append(" SELECT  ");
		pageSql.append("   sys_guid() AS uuid, ");
		pageSql.append("   '" + tabs.getUuid() + "' as TABS_UUID,");
		pageSql.append("   t. OWNER|| '.'|| t. TABLE_NAME AS TABS_NAME, ");
		pageSql.append("   t.COLUMN_NAME AS COLS_NAME, ");
		pageSql.append("   t.COLUMN_ID  AS COLS_ORDER, ");
		pageSql.append("   t.DATA_TYPE AS COLS_TYPE, ");
		pageSql.append("   c.COMMENTS AS COLS_DESC  ");
		pageSql.append(" FROM  all_tab_columns t  ");
		pageSql.append(" inner join all_col_comments c on t.OWNER = c.OWNER and t.TABLE_NAME = c.TABLE_NAME and t.COLUMN_NAME = c.COLUMN_NAME ");
		pageSql.append(" where t.OWNER|| '.'|| t. TABLE_NAME  = '" + tabs.getTabsName() + "'  ");
		pageSql.append("  AND  t.COLUMN_NAME  not in (");
		pageSql.append("    select cols_name from sys_dbms_tabs_cols_info where tabs_uuid ='" + tabs.getUuid() + "'");
		pageSql.append("  )");
		
		pageSql.append(" ORDER BY t.COLUMN_ID  ");
		
		logger.debug(pageSql.toString(), SysDbmsTabsColsInfoService.class);
		List<Map<String, Object>> list2 = jdbcTemplate.queryForList(pageSql.toString());
		for (Map<String, Object> map : list2) {
			SysDbmsTabsColsInfo info = new SysDbmsTabsColsInfo();
			info.setUuid(map.get("UUID").toString());
			info.setTabsUuid(map.get("TABS_UUID").toString());
			info.setColsName(map.get("COLS_NAME").toString());
			info.setColsOrder(map.get("COLS_ORDER") == null ? null : Integer.valueOf(map.get("COLS_ORDER").toString()));
			info.setColsType(map.get("COLS_TYPE") == null ? null : map.get("COLS_TYPE").toString());
			info.setColsDesc(map.get("COLS_DESC") == null ? null : map.get("COLS_DESC").toString());
			
			list.add(info);
		}
		return list;
	}
}
