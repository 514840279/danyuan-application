package org.danyuan.application.softm.organization.service;

import java.util.List;
import java.util.Optional;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.softm.organization.dao.SysRolesJurisdictionInfoDao;
import org.danyuan.application.softm.organization.po.SysRolesJurisdictionInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysRolesJurisdictionServiceImpl.java
 * 包 名 ： tk.ainiyue.admin.jurisdiction.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:47:59
 * 版 本 ： V1.0
 */
@Service("sysRolesJurisdictionService")
public class SysRolesJurisdictionInfoService extends BaseServiceImpl<SysRolesJurisdictionInfo> implements BaseService<SysRolesJurisdictionInfo> {
	
	//
	@Autowired
	private SysRolesJurisdictionInfoDao sysRolesJurisdictionIfoDao;
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.admin.jurisdiction.service.SysRolesJurisdictionService#findAll()
	 * 作 者 ： Tenghui.Wang
	 */
	
	public List<SysRolesJurisdictionInfo> findAll() {
		return sysRolesJurisdictionIfoDao.findAll();
	}
	
	/**
	 * 方法名 ： findAllBySearchText
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param pageNumber
	 * 参 数 ： @param pageSize
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.jurisdiction.service.SysRolesJurisdictionService#findAllBySearchText(int,
	 * int,
	 * tk.ainiyue.danyuan.application.crm.jurisdiction.po.SysRolesJurisdictionInfo)
	 * 作 者 ： Administrator
	 */
	
	public Page<SysRolesJurisdictionInfo> findAllBySearchText(int pageNumber, int pageSize, SysRolesJurisdictionInfo info) {
		Example<SysRolesJurisdictionInfo> example = Example.of(info);
		Sort sort = Sort.by(new Order(Direction.DESC, "createTime"));
		PageRequest request = PageRequest.of(pageNumber - 1, pageSize, sort);
		Page<SysRolesJurisdictionInfo> sourceCodes = sysRolesJurisdictionIfoDao.findAll(example, request);
		return sourceCodes;
	}
	
	@Override
	public void saveAll(List<SysRolesJurisdictionInfo> entities) {
		for (SysRolesJurisdictionInfo sysRolesJurisdictionInfo : entities) {
			SysRolesJurisdictionInfo sysRolesJurisdictionInfo2 = new SysRolesJurisdictionInfo(sysRolesJurisdictionInfo.getMenuId(), sysRolesJurisdictionInfo.getRoleId());
			Optional<SysRolesJurisdictionInfo> optional = sysRolesJurisdictionIfoDao.findOne(Example.of(sysRolesJurisdictionInfo2));
			if (optional.isPresent()) {
				sysRolesJurisdictionInfo2 = optional.get();
				sysRolesJurisdictionInfo2.setChecked(sysRolesJurisdictionInfo.getChecked());
				sysRolesJurisdictionIfoDao.save(sysRolesJurisdictionInfo2);
			} else {
				super.save(sysRolesJurisdictionInfo);
			}
		}
		
	}
	
}
