package tk.ainiyue.danyuan.application.dbms.tabs.service;

import java.util.List;
import java.util.Map;

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

import tk.ainiyue.danyuan.application.common.base.BaseService;
import tk.ainiyue.danyuan.application.dbms.tabs.dao.SysColumnDao;
import tk.ainiyue.danyuan.application.dbms.tabs.dao.SysDbmsTabsInfoDao;
import tk.ainiyue.danyuan.application.dbms.tabs.po.SysColumnInfo;
import tk.ainiyue.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;

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
public class SysColumnServiceImpl implements BaseService<SysColumnInfo> {
	private static final Logger	logger	= LoggerFactory.getLogger(SysColumnServiceImpl.class);
	//
	@Autowired
	private SysColumnDao		sysColumnDao;
	@Autowired
	private SysDbmsTabsInfoDao	sysDbmsTabsInfoDao;
	@Autowired
	JdbcTemplate				jdbcTemplate;

	// 分页查询
	public Page<SysColumnInfo> findAllByTableUuid(int pageNumber, int pageSize, String searchText, String tableUuid) {
		logger.info(tableUuid, SysColumnServiceImpl.class);
		// Page<SysColumnInfo> list = sysColumnDao.findAllByTableUuid(tableUuid);
		SysColumnInfo info = new SysColumnInfo(tableUuid);
		Example<SysColumnInfo> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.ASC, "colsOrder"));
		PageRequest request = this.buildPageRequest(pageNumber, pageSize, sort);
		Page<SysColumnInfo> sourceCodes = sysColumnDao.findAll(example, request);
		return sourceCodes;

	}

	// 构建PageRequest
	private PageRequest buildPageRequest(int pageNumber, int pageSize, Sort sort) {
		return new PageRequest(pageNumber - 1, pageSize, sort);
	}

	// 更新
	@Override
	public void save(SysColumnInfo info) {
		try {
			SysDbmsTabsInfo tab = sysDbmsTabsInfoDao.findOne(info.getTableUuid());
			SysColumnInfo old = sysColumnDao.findOne(info.getUuid());
			if (old != null) {
				String sql = "alter table " + tab.getTabsName() + " CHANGE " + old.getColsName() + " " + info.getColsName() + " " + info.getColsType() + "(" + info.getColsLength() + ")";
				jdbcTemplate.execute(sql);
			} else {

				String sql = "alter table " + tab.getTabsName() + " add " + info.getColsName() + " " + info.getColsType() + "(" + info.getColsLength() + ")";
				jdbcTemplate.execute(sql);
			}
		} finally {
			sysColumnDao.save(info);

		}
	}

	public void deleteSysColumnInfo(List<SysColumnInfo> list) {

		SysDbmsTabsInfo tab = sysDbmsTabsInfoDao.findOne(list.get(0).getTableUuid());
		for (SysColumnInfo sysColumnInfo : list) {
			try {
				// alter table user DROP COLUMN new2;
				String sql = "alter table " + tab.getTabsName() + " DROP COLUMN " + sysColumnInfo.getColsName();
				jdbcTemplate.execute(sql);
			} finally {
				sysColumnDao.delete(sysColumnInfo);
			}
		}
	}

	public List<SysColumnInfo> findAllBySysColumnInfo(SysColumnInfo info) {
		Example<SysColumnInfo> example = Example.of(info);
		return sysColumnDao.findAll(example);
	}

	public void saveSysColumnInfo(List<SysColumnInfo> list) {
		sysColumnDao.save(list);
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
	public SysColumnInfo findOne(SysColumnInfo info) {
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
	public List<SysColumnInfo> findAll(SysColumnInfo info) {
		// TODO Auto-generated method stub
		return null;
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
	public Page<SysColumnInfo> page(int pageNumber, int pageSize, SysColumnInfo info, Map<String, String> map, Order... order) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#save(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void save(List<SysColumnInfo> list) {
		// TODO Auto-generated method stub
		
	}

	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#delete(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(SysColumnInfo info) {
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
	public void delete(List<SysColumnInfo> list) {
		// TODO Auto-generated method stub
		
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
