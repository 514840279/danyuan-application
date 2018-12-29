/**
 * 文件名：SysPlantBindConfService.java 版本信息： 日期：2018年5月18日 Copyright 足下 Corporation 2018 版权所有
 */
package org.danyuan.application.dbms.chart.service;

import java.util.List;
import java.util.Optional;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.dbms.chart.dao.SysPlantBindConfDao;
import org.danyuan.application.dbms.chart.po.SysPlantBindConf;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysPlantBindConfService.java
 * 包 名 ： com.shumeng.application.application.plant.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年5月18日 下午3:31:50
 * 版 本 ： V1.0
 */
@Service
public class SysPlantBindConfService extends BaseServiceImpl<SysPlantBindConf> implements BaseService<SysPlantBindConf> {
	
	@Autowired
	SysPlantBindConfDao sysPlantBindConfDao;
	
	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#findOne(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public SysPlantBindConf findOne(SysPlantBindConf info) {
		Example<SysPlantBindConf> example = Example.of(info);
		Optional<SysPlantBindConf> conf = sysPlantBindConfDao.findOne(example);
		if (conf.isPresent()) {
			return conf.get();
		}
		return null;
	}
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#findAll(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public List<SysPlantBindConf> findAll(SysPlantBindConf info) {
		Order[] order = { new Order(Direction.ASC, "colsOrder"), new Order(Direction.ASC, "createTime") };
		Sort sort = Sort.by(order);
		Example<SysPlantBindConf> example = Example.of(info);
		return sysPlantBindConfDao.findAll(example, sort);
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
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#page(int, int, java.lang.Object, java.util.Map, org.springframework.data.domain.Sort.Order[])
	 * 作 者 ： Administrator
	 */
	@Override
	public Page<SysPlantBindConf> page(Pagination<SysPlantBindConf> vo) {
		Example<SysPlantBindConf> example = Example.of(vo.getInfo());
		Sort sort = Sort.by(vo.getOrders());
		PageRequest request = PageRequest.of(vo.getPageNumber() - 1, vo.getPageSize(), sort);
		return sysPlantBindConfDao.findAll(example, request);
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#save(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void saveAll(List<SysPlantBindConf> list) {
		sysPlantBindConfDao.saveAll(list);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#delete(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(SysPlantBindConf info) {
		sysPlantBindConfDao.delete(info);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#delete(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void deleteAll(List<SysPlantBindConf> list) {
		sysPlantBindConfDao.deleteAll(list);
	}
	
	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ：
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#trunc()
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void trunc() {
		sysPlantBindConfDao.deleteAllInBatch();
	}
	
}
