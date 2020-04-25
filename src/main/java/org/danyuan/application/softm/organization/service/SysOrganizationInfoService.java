package org.danyuan.application.softm.organization.service;

import java.util.List;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.softm.organization.dao.SysOrganizationInfoDao;
import org.danyuan.application.softm.organization.po.SysOrganizationInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysOrganizationServiceImpl.java
 * 包 名 ： tk.ainiyue.admin.organization.service.impl
 * 描 述 ： SysOrganizationServiceImpl实现类
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:49:49
 * 版 本 ： V1.0
 */
@Service("sysOrganizationService")
public class SysOrganizationInfoService extends BaseServiceImpl<SysOrganizationInfo> implements BaseService<SysOrganizationInfo> {
	
	//
	@Autowired
	private SysOrganizationInfoDao sysOrganizationInfoDao;
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： 取全部数据
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.admin.organization.service.SysOrganizationService#findAll()
	 * 作 者 ： Tenghui.Wang
	 */
	public List<SysOrganizationInfo> findAll() {
		return sysOrganizationInfoDao.findAll();
	}
	
	/**
	 * 方法名 ： findAllBySearchText
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param pageNumber
	 * 参 数 ： @param pageSize
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.organization.service.SysOrganizationService#findAllBySearchText(int,
	 * int,
	 * tk.ainiyue.danyuan.application.crm.organization.po.SysOrganizationInfo)
	 * 作 者 ： Administrator
	 */
	
	public Page<SysOrganizationInfo> findAllBySearchText(int pageNumber, int pageSize, SysOrganizationInfo info) {
		Example<SysOrganizationInfo> example = Example.of(info);
		Sort sort = Sort.by(new Order(Direction.DESC, "createTime"));
		PageRequest request = PageRequest.of(pageNumber - 1, pageSize, sort);
		Page<SysOrganizationInfo> sourceCodes = sysOrganizationInfoDao.findAll(example, request);
		return sourceCodes;
	}
	
}
