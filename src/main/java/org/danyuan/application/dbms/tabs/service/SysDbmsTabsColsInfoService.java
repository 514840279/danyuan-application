package org.danyuan.application.dbms.tabs.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

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
			Optional<SysDbmsTabsColsInfo> old = sysDbmsTabsColsInfoDao.findById(info.getUuid());
			if (old != null && old.isPresent()) {
				String sql = "alter table " + tab.getTabsName() + " CHANGE " + old.get().getColsName() + " " + info.getColsName() + " " + info.getColsType() + "(" + info.getColsLength() + ")";
				jdbcTemplate.execute(sql);
			} else {
				
				String sql = "alter table " + tab.getTabsName() + " add " + info.getColsName() + " " + info.getColsType() + "(" + info.getColsLength() + ")";
				jdbcTemplate.execute(sql);
			}
		} finally {
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
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#findOne(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public SysDbmsTabsColsInfo findOne(SysDbmsTabsColsInfo info) {
		// TODO Auto-generated method stub
		return null;
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
		Example<SysDbmsTabsColsInfo> example = Example.of(info);
		return sysDbmsTabsColsInfoDao.findAll(example);
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
		List<Sort.Order> orders = new ArrayList<>();
		
		if (vo.getSortName() != null) {
			orders = vo.getOrders();
		} else {
			Order order = new Order(Direction.DESC, "createTime");
			orders.add(order);
		}
		if (vo.getInfo() == null) {
			vo.setInfo(new SysDbmsTabsColsInfo());
		}
		
		Example<SysDbmsTabsColsInfo> example = Example.of(vo.getInfo());
		Sort sort = Sort.by(orders);
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
	 * 参 数 ： @param info
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#delete(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(SysDbmsTabsColsInfo info) {
		// TODO Auto-generated method stub
		
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
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ：
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#trunc()
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void trunc() {
		// TODO Auto-generated method stub
		
	}
}
