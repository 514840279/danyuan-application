package org.danyuan.application.dbms.chart.service;

import java.util.List;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.dbms.chart.dao.SysChartNodeDao;
import org.danyuan.application.dbms.chart.po.SysChartNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 文件名 ： SysChartNodeService.java
 * 包 名 ： com.shumeng.application.chart.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月3日 下午2:56:21
 * 版 本 ： V1.0
 */
@Service
@Transactional
public class SysChartNodeService extends BaseServiceImpl<SysChartNode> implements BaseService<SysChartNode> {
	@Autowired
	private SysChartNodeDao sysChartNodeDao;

	/**
	 * 方法名： page
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param pageNumber
	 * 参 数： @param pageSize
	 * 参 数： @param col
	 * 参 数： @return
	 * 返 回： Page<SysChartNode>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public Page<SysChartNode> page(int pageNumber, int pageSize, SysChartNode col) {
		Example<SysChartNode> example = Example.of(col);
		Sort sort = Sort.by(new Order(Direction.DESC, "createTime"));
		PageRequest request = PageRequest.of(pageNumber - 1, pageSize, sort);
		Page<SysChartNode> sourceCodes = sysChartNodeDao.findAll(example, request);

		return sourceCodes;
	}
	
	/**
	 * 方法名： delete
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param list
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void delete(List<SysChartNode> list) {
		sysChartNodeDao.deleteAll(list);
	}

	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param sysChartNode
	 * 参 数： @return
	 * 返 回： List<SysChartNode>
	 * 作 者 ： Administrator
	 * @throws
	 */
	@Override
	public List<SysChartNode> findAll(SysChartNode sysChartNode) {
		return sysChartNodeDao.findAllByDelete();
	}

}
