package tk.ainiyue.danyuan.application.dbm.zhcx.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.dbm.zhcx.dao.SysZhcxTabDao;
import tk.ainiyue.danyuan.application.dbm.zhcx.dao.VSysZhcxTabDao;
import tk.ainiyue.danyuan.application.dbm.zhcx.po.SysZhcxTab;
import tk.ainiyue.danyuan.application.dbm.zhcx.po.VSysZhcxTab;
import tk.ainiyue.danyuan.application.dbm.zhcx.vo.MulteityParam;
import tk.ainiyue.danyuan.application.dbm.zhcx.vo.SysZhcxTabVo;

@Service
public class SysZhcxTabService {
	@Autowired
	private SysZhcxTabDao	sysZhcxTabDao;
	@Autowired
	private VSysZhcxTabDao	vSysZhcxTabDao;
	
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
	 * 方法名： pagev
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param pageNumber
	 * 参 数： @param pageSize
	 * 参 数： @param tab
	 * 参 数： @return
	 * 返 回： Page<VSysZhcxTab>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public Page<VSysZhcxTab> pagev(int pageNumber, int pageSize, String searchText) {
		// Example<VSysZhcxTab> example = Example.of(tab);
		Sort sort = new Sort(new Order(Direction.DESC, "tableName"), new Order(Direction.DESC, "tableDesc"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		Page<VSysZhcxTab> sourceCodes = vSysZhcxTabDao.findAll(new Specification<VSysZhcxTab>() {
			
			@Override
			public Predicate toPredicate(Root<VSysZhcxTab> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> list = new ArrayList<>();
				list.add(cb.like(root.get("tableName").as(String.class), "%" + searchText + "%"));
				return cb.and(list.toArray(new Predicate[list.size()]));
			}
			
		}, request);
		return sourceCodes;
	}
	
	public void delete(List<SysZhcxTab> list) {
		sysZhcxTabDao.delete(list);
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
	
}
