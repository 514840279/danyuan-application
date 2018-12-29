package org.danyuan.application.dbms.tabs.service;

import java.util.List;

import org.danyuan.application.dbms.tabs.dao.SysDbmsUserIndexInfoDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsUserIndexInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysDicUserIndexCode.java
 * 包 名 ： com.shumeng.application.zhcx.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年3月8日 下午1:49:27
 * 版 本 ： V1.0
 */
@Service
public class SysDbmsUserIndexInfoService {
	@Autowired
	private SysDbmsUserIndexInfoDao sysDbmsUserIndexInfoDao;

	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysDicUserIndexCode>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public List<SysDbmsUserIndexInfo> findAll() {
		return sysDbmsUserIndexInfoDao.findAllByDeleteFlag();
	}

	/**
	 * 方法名： page
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param pageNumber
	 * 参 数： @param pageSize
	 * 参 数： @param col
	 * 参 数： @return
	 * 返 回： Page<SysZhcxCol>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public Page<SysDbmsUserIndexInfo> page(int pageNumber, int pageSize, SysDbmsUserIndexInfo col) {
		Example<SysDbmsUserIndexInfo> example = Example.of(col);
		Sort sort = Sort.by(new Order(Direction.ASC, "userOrder"), new Order(Direction.DESC, "createTime"));
		PageRequest request = PageRequest.of(pageNumber - 1, pageSize, sort);
		Page<SysDbmsUserIndexInfo> sourceCodes = sysDbmsUserIndexInfoDao.findAll(example, request);
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
	public void save(SysDbmsUserIndexInfo info) {
		sysDbmsUserIndexInfoDao.save(info);
	}

	/**
	 * 方法名： delete
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param list
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void delete(List<SysDbmsUserIndexInfo> list) {
		sysDbmsUserIndexInfoDao.deleteAll(list);
	}

	/**
	 * 方法名： chartList
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysDicUserIndexCode>
	 * 作 者 ： Administrator
	 * @throws
	 */
	// public List<SysDicUserIndexCode> chartList() {
	// return sysDbmsUserIndexInfoDao.findAllByChart();
	// }
}
