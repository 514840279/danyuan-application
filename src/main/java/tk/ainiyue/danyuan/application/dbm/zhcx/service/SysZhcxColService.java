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

import tk.ainiyue.danyuan.application.dbm.zhcx.dao.SysZhcxColDao;
import tk.ainiyue.danyuan.application.dbm.zhcx.dao.VSysZhxColDao;
import tk.ainiyue.danyuan.application.dbm.zhcx.po.SysZhcxCol;
import tk.ainiyue.danyuan.application.dbm.zhcx.po.VSysZhxCol;
import tk.ainiyue.danyuan.application.dbm.zhcx.vo.SysZhcxColVo;

@Service
public class SysZhcxColService {
	@Autowired
	private SysZhcxColDao	sysZhcxColDao;
	@Autowired
	private VSysZhxColDao	vSysZhxColDao;
	
	public List<SysZhcxCol> findAll() {
		return sysZhcxColDao.findAll();
	}
	
	public void save(SysZhcxCol info) {
		sysZhcxColDao.save(info);
	}
	
	public Page<SysZhcxCol> page(int pageNumber, int pageSize, SysZhcxCol info) {
		Example<SysZhcxCol> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.DESC, "deleteFlag"), new Order(Direction.DESC, "pageList"), new Order(Direction.DESC, "colsOrder"), new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		Page<SysZhcxCol> sourceCodes = sysZhcxColDao.findAll(example, request);
		return sourceCodes;
	}
	
	public void delete(List<SysZhcxCol> list) {
		sysZhcxColDao.delete(list);
	}
	
	/**
	 * 方法名： findAllColumn
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param vo
	 * 参 数： @return
	 * 返 回： List<SysZhcxCol>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public List<SysZhcxCol> findAllColumn(SysZhcxColVo vo) {
		String tabsuuid = vo.getTableUuid();
		return sysZhcxColDao.findAllColumn(tabsuuid);
	}
	
	/**
	 * 方法名： pagev
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param pageNumber
	 * 参 数： @param pageSize
	 * 参 数： @param col
	 * 参 数： @return
	 * 返 回： Page<VSysZhxCol>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public Page<VSysZhxCol> pagev(int pageNumber, int pageSize, VSysZhxCol col) {
		Example<VSysZhxCol> example = Example.of(col);
		Sort sort = new Sort(new Order(Direction.DESC, "tableName"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		Page<VSysZhxCol> sourceCodes = vSysZhxColDao.findAll(example, request);
		return sourceCodes;
	}
}
