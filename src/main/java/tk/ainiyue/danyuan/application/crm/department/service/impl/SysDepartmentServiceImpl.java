package tk.ainiyue.danyuan.application.crm.department.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.crm.department.dao.SysDepartmentDao;
import tk.ainiyue.danyuan.application.crm.department.po.SysDepartmentInfo;
import tk.ainiyue.danyuan.application.crm.department.service.SysDepartmentService;

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
		// TODO Auto-generated method stub
		return (List<SysDepartmentInfo>) sysDepartmentDao.findAll();
	}

}
