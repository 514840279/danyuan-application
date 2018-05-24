package tk.ainiyue.danyuan.application.zhcx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.zhcx.dao.SysZhcxTypeDao;
import tk.ainiyue.danyuan.application.zhcx.po.SysZhcxType;

@Service
public class SysZhcxTypeService {
	@Autowired
	private SysZhcxTypeDao sysZhcxTypeDao;

	public List<SysZhcxType> findAll() {
		return sysZhcxTypeDao.findAll();
	}

	public void save(SysZhcxType info) {
		sysZhcxTypeDao.save(info);
	}

	public Page<SysZhcxType> page(int pageNumber, int pageSize, SysZhcxType info) {
		Example<SysZhcxType> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.ASC, "typeOrder"), new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		Page<SysZhcxType> sourceCodes = sysZhcxTypeDao.findAll(example, request);
		return sourceCodes;
	}

	public void delete(List<SysZhcxType> list) {
		sysZhcxTypeDao.delete(list);
	}

	public void delete(SysZhcxType info) {
		sysZhcxTypeDao.delete(info);
	}

	/**
	 * 方法名： findAllType
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param username
	 * 参 数： @return
	 * 返 回： List<SysZhcxType>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public List<SysZhcxType> findAllType(String username) {
		return sysZhcxTypeDao.findAllType();
	}

	/**
	 * 方法名： list
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysZhcxType>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public List<SysZhcxType> list() {
		return sysZhcxTypeDao.findAll();
	}
}
