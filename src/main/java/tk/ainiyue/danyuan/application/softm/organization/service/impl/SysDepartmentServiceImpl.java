package tk.ainiyue.danyuan.application.softm.organization.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.softm.organization.dao.SysDepartmentDao;
import tk.ainiyue.danyuan.application.softm.organization.po.SysDepartmentInfo;
import tk.ainiyue.danyuan.application.softm.organization.service.SysDepartmentService;

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
public class SysDepartmentServiceImpl implements SysDepartmentService {
	
	//
	@Autowired
	private SysDepartmentDao sysDepartmentDao;
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.admin.department.service.SysDepartmentService#findAll()
	 * 作 者 ： Tenghui.Wang
	 */
	
	@Override
	public List<SysDepartmentInfo> findAll() {
		return sysDepartmentDao.findAll();
	}
	
	/**
	 * 方法名 ： findByUuid
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param uuid
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.department.service.SysDepartmentService#findByUuid(java.lang.String)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public SysDepartmentInfo findByUuid(String uuid) {
		return sysDepartmentDao.findOne(uuid);
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
	
	@Override
	public Page<SysDepartmentInfo> findAllBySearchText(int pageNumber, int pageSize, SysDepartmentInfo info) {
		Example<SysDepartmentInfo> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		Page<SysDepartmentInfo> sourceCodes = sysDepartmentDao.findAll(example, request);
		return sourceCodes;
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.department.service.SysDepartmentService#save(tk.ainiyue.danyuan.application.crm.department.po.SysDepartmentInfo)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void save(SysDepartmentInfo info) {
		sysDepartmentDao.save(info);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.department.service.SysDepartmentService#delete(tk.ainiyue.danyuan.application.crm.department.po.SysDepartmentInfo)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(SysDepartmentInfo info) {
		sysDepartmentDao.delete(info);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.department.service.SysDepartmentService#delete(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(List<SysDepartmentInfo> list) {
		sysDepartmentDao.delete(list);
	}
	
	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ：
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.crm.department.service.SysDepartmentService#trunc()
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void trunc() {
		sysDepartmentDao.deleteAll();
	}
	
}
