package tk.ainiyue.danyuan.application.dbms.tabs.service;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Order;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.common.base.BaseService;
import tk.ainiyue.danyuan.application.dbms.tabs.dao.SysDbmsTabsColsInfoDao;
import tk.ainiyue.danyuan.application.dbms.tabs.dao.SysDbmsTabsInfoDao;
import tk.ainiyue.danyuan.application.dbms.tabs.po.SysDbmsTabsColsInfo;
import tk.ainiyue.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;
import tk.ainiyue.danyuan.application.dbms.tabs.vo.SysDbmsTabsInfoVo;

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
@Service("sysDbmsTabsInfoService")
public class SysDbmsTabsInfoService implements BaseService<SysDbmsTabsInfo> {
	
	private static final Logger		logger	= LoggerFactory.getLogger(SysDbmsTabsInfoService.class);
	//
	@Autowired
	private SysDbmsTabsInfoDao		sysDbmsTabsInfoDao;
	@Autowired
	private SysDbmsTabsColsInfoDao	sysDbmsTabsColsInfoDao;

	@Autowired
	JdbcTemplate					jdbcTemplate;

	public List<SysDbmsTabsInfo> findAll() {
		return sysDbmsTabsInfoDao.findAll();
	}

	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#save(java.lang.Object)
	 * 作 者 ： wang
	 */
	@Override
	public void save(SysDbmsTabsInfo info) {
		// 保存表配信息
		sysDbmsTabsInfoDao.save(info);
		// 动态生成表
		StringBuilder sBuilder = new StringBuilder();
		sBuilder.append("CREATE TABLE ");
		sBuilder.append(info.getTabsName());
		sBuilder.append("(md5 varchar(36) comment 'url的md5值' )");

		jdbcTemplate.execute(sBuilder.toString());
		
		// 保存列的配置信息
		sysDbmsTabsColsInfoDao.save(new SysDbmsTabsColsInfo(UUID.randomUUID().toString(), info.getUuid(), "md5", "md5值", "VARCHAR", 0, 1, 1, "center", "middle", 150, true, true, 0));
		// sysDbmsTabsColsInfoDao.save(new SysDbmsTabsColsInfo(UUID.randomUUID().toString(), 2000, "url地址", "url", 2, "VARCHAR", "url地址", info.getUuid()));
		// sysDbmsTabsColsInfoDao.save(new SysDbmsTabsColsInfo(UUID.randomUUID().toString(), 50, "数据来源", "数据来源", 3, "VARCHAR", "数据来源", info.getUuid()));
		// sysDbmsTabsColsInfoDao.save(new SysDbmsTabsColsInfo(UUID.randomUUID().toString(), 6, "采集时间", "datetime", 4, "date", "采集时间", info.getUuid()));
		// 返回表配置信息
	}

	public SysDbmsTabsInfo findSysDbmsTabsInofByUuid(String uuid) {
		return sysDbmsTabsInfoDao.findSysDbmsTabsInfoByUuid(uuid);
	}

	public List<SysDbmsTabsInfo> updateSysTableInfo(SysDbmsTabsInfoVo vo) {
		// 旧数据
		SysDbmsTabsInfo info = vo.getOld();
		SysDbmsTabsInfo sysDbmsTabsInfo = vo.getNow();

		System.out.println(info.getTabsName() + "  " + sysDbmsTabsInfo.getTabsName());

		if (!info.getTabsName().equals(sysDbmsTabsInfo.getTabsName())) {
			// 修改表名
			String sql = "ALTER TABLE " + info.getTabsName() + "  RENAME TO  " + sysDbmsTabsInfo.getTabsName();
			jdbcTemplate.execute(sql);
		}
		if (sysDbmsTabsInfo.getTabsName() != null) {
			// 修改注释
			String sql = "ALTER TABLE " + sysDbmsTabsInfo.getTabsName() + "  COMMENT='" + sysDbmsTabsInfo.getTabsDesc() + "'";
			jdbcTemplate.execute(sql);
		}
		// 修改配置信息
		sysDbmsTabsInfoDao.save(sysDbmsTabsInfo);

		return sysDbmsTabsInfoDao.findAll();
	}
	
	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#findOne(java.lang.Object)
	 * 作 者 ： wang
	 */
	
	@Override
	public SysDbmsTabsInfo findOne(SysDbmsTabsInfo info) {
		Example<SysDbmsTabsInfo> example = Example.of(info);
		return sysDbmsTabsInfoDao.findOne(example);
	}
	
	public void savev(SysDbmsTabsInfo info) {
		sysDbmsTabsInfoDao.save(info);
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
	 * 作 者 ： wang
	 */
	
	@Override
	public Page<SysDbmsTabsInfo> page(int pageNumber, int pageSize, SysDbmsTabsInfo info, Map<String, String> map, Order... order) {
		Example<SysDbmsTabsInfo> example = Example.of(info);
		Sort sort = new Sort(order);
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		Page<SysDbmsTabsInfo> page = sysDbmsTabsInfoDao.findAll(example, request);
		return page;
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#save(java.util.List)
	 * 作 者 ： wang
	 */
	
	@Override
	public void save(List<SysDbmsTabsInfo> list) {
		// TODO Auto-generated method stub
		
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#delete(java.lang.Object)
	 * 作 者 ： wang
	 */
	
	@Override
	public void delete(SysDbmsTabsInfo info) {
		// TODO Auto-generated method stub
		
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#delete(java.util.List)
	 * 作 者 ： wang
	 */
	
	public void drop(List<SysDbmsTabsInfo> list) {
		for (SysDbmsTabsInfo info : list) {
			try {
				StringBuilder sBuilder = new StringBuilder();
				sBuilder.append("drop table " + info.getTabsName());
				jdbcTemplate.execute(sBuilder.toString());
			} catch (Exception e) {
				logger.error(info.getTabsName() + "表不存在");
				System.err.println(e.getMessage());
			} finally {
				sysDbmsTabsColsInfoDao.deleteByTabsUuid(info.getUuid());
				sysDbmsTabsInfoDao.delete(info);
			}
		}
	}
	
	@Override
	public void delete(List<SysDbmsTabsInfo> list) {
		for (SysDbmsTabsInfo info : list) {
			sysDbmsTabsColsInfoDao.deleteByTabsUuid(info.getUuid());
			sysDbmsTabsInfoDao.delete(info);
		}
	}
	
	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ：
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#trunc()
	 * 作 者 ： wang
	 */
	
	@Override
	public void trunc() {
		// TODO Auto-generated method stub
		
	}
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see tk.ainiyue.danyuan.application.common.base.BaseService#findAll(java.lang.Object)
	 * 作 者 ： wang
	 */
	
	@Override
	public List<SysDbmsTabsInfo> findAll(SysDbmsTabsInfo info) {
		Example<SysDbmsTabsInfo> example = Example.of(info);
		return sysDbmsTabsInfoDao.findAll(example);
	}

	/**
	 * 方法名： change
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param vo
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void change(SysDbmsTabsInfoVo vo) {
		// 保存表配信息
		// 动态生成表
		StringBuilder sBuilder = new StringBuilder();
		sBuilder.append("ALTER TABLE ");
		sBuilder.append(vo.getOld().getTabsName());
		sBuilder.append(" RENAME TO ");
		sBuilder.append(vo.getNow().getTabsName());

		jdbcTemplate.execute(sBuilder.toString());
		sysDbmsTabsInfoDao.save(vo.getNow());

	}
	
}
