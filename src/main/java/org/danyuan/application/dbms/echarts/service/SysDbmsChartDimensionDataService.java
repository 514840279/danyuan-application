package org.danyuan.application.dbms.echarts.service;

import java.util.ArrayList;
import java.util.List;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.dbms.echarts.dao.SysDbmsChartDimensionDataDao;
import org.danyuan.application.dbms.echarts.po.SysDbmsChartDimensionData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

/**
 * @文件名 SysDbmsChartDimensionDataService.java
 * @包名 org.danyuan.application.dbms.echarts.service
 * @描述 service层
 * @时间 2020年04月25日 12:15:43
 * @author test
 * @版本 V1.0
 */
@Service
public class SysDbmsChartDimensionDataService extends BaseServiceImpl<SysDbmsChartDimensionData> implements BaseService<SysDbmsChartDimensionData> {
	
	@Autowired
	SysDbmsChartDimensionDataDao sysDbmsChartDimensionDataDao;
	
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
	public Page<SysDbmsChartDimensionData> page(Pagination<SysDbmsChartDimensionData> vo) {
		List<Order> orders = new ArrayList<>();
		
		if (vo.getSortName() != null) {
			Order order;
			if (vo.getSortOrder().equals("desc")) {
				order = Order.desc(vo.getSortName());
			} else {
				order = Order.asc(vo.getSortName());
			}
			orders.add(order);
		} else {
			Order order = new Order(Direction.ASC, "createTime");
			orders.add(order);
		}
		if (vo.getInfo() == null) {
			vo.setInfo(new SysDbmsChartDimensionData());
		}
		
		Example<SysDbmsChartDimensionData> example = Example.of(vo.getInfo());
		Sort sort = Sort.by(orders);
		PageRequest request = PageRequest.of(vo.getPageNumber() - 1, vo.getPageSize(), sort);
		return sysDbmsChartDimensionDataDao.findAll(example, request);
	}
}
