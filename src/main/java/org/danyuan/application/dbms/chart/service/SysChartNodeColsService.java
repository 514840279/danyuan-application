package org.danyuan.application.dbms.chart.service;

import java.util.List;

import org.danyuan.application.dbms.chart.dao.SysChartNodeColsDao;
import org.danyuan.application.dbms.chart.po.SysChartNodeCols;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysChartNodeColsService.java
 * 包 名 ： com.shumeng.application.chart.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月3日 下午2:56:38
 * 版 本 ： V1.0
 */
@Service

public class SysChartNodeColsService {
	@Autowired
	private SysChartNodeColsDao sysChartNodeColsDao;

	/**
	 * 方法名： page
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param pageNumber
	 * 参 数： @param pageSize
	 * 参 数： @param col
	 * 参 数： @return
	 * 返 回： Page<SysChartNodeCols>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public Page<SysChartNodeCols> page(int pageNumber, int pageSize, SysChartNodeCols col) {
		Example<SysChartNodeCols> example = Example.of(col);
		Sort sort = Sort.by(new Order(Direction.DESC, "createTime"));
		PageRequest request = PageRequest.of(pageNumber - 1, pageSize, sort);
		Page<SysChartNodeCols> sourceCodes = sysChartNodeColsDao.findAll(example, request);
		return sourceCodes;
	}

	/**
	 * 方法名： save
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param info
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void save(SysChartNodeCols info) {
		sysChartNodeColsDao.save(info);
	}

	/**
	 * 方法名： delete
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param list
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void delete(List<SysChartNodeCols> list) {
		sysChartNodeColsDao.deleteAll(list);
	}

	/**
	 * 方法名： findAllByValue
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param userIndex
	 * 参 数： @return
	 * 返 回： List<E>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public List<SysChartNodeCols> findAllByValue(String userIndex) {
		return sysChartNodeColsDao.findAllByValue(userIndex);
	}

}
