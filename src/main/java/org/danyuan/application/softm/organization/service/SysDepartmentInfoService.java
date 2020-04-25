package org.danyuan.application.softm.organization.service;

import java.util.List;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.softm.organization.dao.SysDepartmentInfoDao;
import org.danyuan.application.softm.organization.po.SysDepartmentInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysDepartmentServiceImpl.java
 * 包 名 ： tk.ainiyue.admin.department.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:46:48
 * 版 本 ： V1.0
 */
@Service("sysDepartmentService")
public class SysDepartmentInfoService extends BaseServiceImpl<SysDepartmentInfo> implements BaseService<SysDepartmentInfo> {
	//
	@Autowired
	private SysDepartmentInfoDao sysDepartmentInfoDao;
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.admin.department.service.SysDepartmentService#findAll()
	 * 作 者 ： Tenghui.Wang
	 */
	
	public List<SysDepartmentInfo> findAll() {
		return sysDepartmentInfoDao.findAll();
	}
	
	/**
	 * 方法名 ： findAllBySearchText
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param pageNumber
	 * 参 数 ： @param pageSize
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.department.service.SysDepartmentService#findAllBySearchText(int,
	 * int, tk.ainiyue.danyuan.application.crm.department.po.SysDepartmentInfo)
	 * 作 者 ： Administrator
	 */
	
	public Page<SysDepartmentInfo> findAllBySearchText(int pageNumber, int pageSize, SysDepartmentInfo info) {
		Example<SysDepartmentInfo> example = Example.of(info);
		Sort sort = Sort.by(new Order(Direction.DESC, "createTime"));
		PageRequest request = PageRequest.of(pageNumber - 1, pageSize, sort);
		Page<SysDepartmentInfo> sourceCodes = sysDepartmentInfoDao.findAll(example, request);
		return sourceCodes;
	}
	
}
