package tk.ainiyue.danyuan.application.dbms.zhcx.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.dbms.tabs.vo.MulteityParam;
import tk.ainiyue.danyuan.application.dbms.zhcx.dao.SysZhcxTabDao;
import tk.ainiyue.danyuan.application.dbms.zhcx.po.SysZhcxTab;
import tk.ainiyue.danyuan.application.dbms.zhcx.vo.SysZhcxTabVo;

@Service
public class SysZhcxTabService {
	@Autowired
	private SysZhcxTabDao	sysZhcxTabDao;

	@Autowired
	JdbcTemplate			jdbcTemplate;

	public List<SysZhcxTab> findAll() {
		return sysZhcxTabDao.findAll();
	}

	public void save(SysZhcxTab info) {
		sysZhcxTabDao.save(info);
	}

	public Page<SysZhcxTab> page(int pageNumber, int pageSize, SysZhcxTab info) {
		if ("".equals(info.getAddrUuid())) {
			info.setAddrUuid(null);
		}
		if ("".equals(info.getTypeUuid())) {
			info.setTypeUuid(null);
		}
		Example<SysZhcxTab> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		Page<SysZhcxTab> sourceCodes = sysZhcxTabDao.findAll(example, request);
		return sourceCodes;
	}

	/**
	 * 方法名： forwardYjcx
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param userindex
	 * 参 数： @return
	 * 返 回： List<SysZhcxTab>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public List<SysZhcxTab> forwardYjcx(String userindex) {
		return sysZhcxTabDao.findAllByUserIndex(userindex);
	}

	/**
	 * 方法名： findAllTable
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param username
	 * 参 数： @param userindex
	 * 参 数： @param uservalue
	 * 参 数： @return
	 * 返 回： List<SysZhcxTab>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public List<SysZhcxTab> findAllTable(SysZhcxTabVo vo) {

		if (vo.getParamList() == null || vo.getParamList().size() == 0) {
			// 但条件查询
			return sysZhcxTabDao.findAllByUserIndexAndTypeUuid(vo.getUserindex(), vo.getTypeUuid());
		} else {
			// 多条件时循环查询并找出userindex都有的表
			List<SysZhcxTab> minusList = null;
			for (MulteityParam val : vo.getParamList()) {
				List<SysZhcxTab> tabsList = sysZhcxTabDao.findAllByUserIndexAndTypeUuid(val.getUserIndex(), vo.getTypeUuid());
				if (tabsList == null) {
					return null;
				}
				if (minusList == null) {
					minusList = tabsList;
				} else {
					List<SysZhcxTab> existsList = new ArrayList<SysZhcxTab>();
					// 多个userindex对比找到相同表
					for (SysZhcxTab sysZhcxTab : minusList) {
						for (SysZhcxTab sysZhcxTab2 : tabsList) {
							if (sysZhcxTab.getUuid().equals(sysZhcxTab2.getUuid())) {
								existsList.add(sysZhcxTab);
							}
						}
					}
					minusList = existsList;
					if (minusList.size() == 0) {
						return null;
					}
				}
			}

			// 多条件查询
			return minusList;
		}
	}

	/**
	 * 方法名： findAllByTypeUuid
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param vo
	 * 参 数： @return
	 * 返 回： List<SysZhcxTab>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public List<SysZhcxTab> findAllByTypeUuid(SysZhcxTabVo vo) {
		return sysZhcxTabDao.findAllByTypeUuid(vo.getTypeUuid());
	}

	/**
	 * 方法名： list
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param info
	 * 参 数： @return
	 * 返 回： List<VSysZhcxTab>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public List<SysZhcxTab> list(SysZhcxTab info) {
		Example<SysZhcxTab> example = Example.of(info);
		List<SysZhcxTab> sourceCodes = sysZhcxTabDao.findAll(example);
		return sourceCodes;
	}
	
	/**
	 * 方法名： delete
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param list
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void delete(List<SysZhcxTab> list) {
		// TODO Auto-generated method stub

	}

}
