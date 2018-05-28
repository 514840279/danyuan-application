package tk.ainiyue.danyuan.application.dbm.zhcx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.dbm.zhcx.dao.SysDicUserIndexCodeDao;
import tk.ainiyue.danyuan.application.dbm.zhcx.po.SysDicUserIndexCode;

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
public class SysDicUserIndexCodeService {
	@Autowired
	private SysDicUserIndexCodeDao sysDicUserIndexCodeDao;
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysDicUserIndexCode>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public List<SysDicUserIndexCode> findAll() {
		return sysDicUserIndexCodeDao.findAllByDeleteFlag();
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
	public Page<SysDicUserIndexCode> page(int pageNumber, int pageSize, SysDicUserIndexCode col) {
		Example<SysDicUserIndexCode> example = Example.of(col);
		Sort sort = new Sort(new Order(Direction.ASC, "userOrder"), new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		Page<SysDicUserIndexCode> sourceCodes = sysDicUserIndexCodeDao.findAll(example, request);
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
	public void save(SysDicUserIndexCode info) {
		sysDicUserIndexCodeDao.save(info);
	}
	
	/**
	 * 方法名： delete
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param list
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void delete(List<SysDicUserIndexCode> list) {
		sysDicUserIndexCodeDao.delete(list);
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
	// return sysDicUserIndexCodeDao.findAllByChart();
	// }
}
