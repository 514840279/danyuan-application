package tk.ainiyue.danyuan.application.softm.syslog.service;

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
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.softm.syslog.dao.SysComnLogsDao;
import tk.ainiyue.danyuan.application.softm.syslog.dao.VSysComnLogsDao;
import tk.ainiyue.danyuan.application.softm.syslog.po.SysComnLogs;
import tk.ainiyue.danyuan.application.softm.syslog.po.VSysComnLogs;
import tk.ainiyue.danyuan.application.softm.syslog.vo.SysComnLogsVo;

/**
 * 文件名 ： SysComnLogsService.java
 * 包 名 ： com.shumeng.application.softm.syslog.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月23日 下午4:26:44
 * 版 本 ： V1.0
 */
@Service
public class SysComnLogsService {

	@Autowired
	SysComnLogsDao	sysComnLogsDao;
	@Autowired
	VSysComnLogsDao	vSysComnLogsDao;

	/**
	 * @param vo
	 * 方法名： findAllError
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysComnLogs>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public Page<SysComnLogs> findAllError(SysComnLogsVo vo) {
		// Example<SysComnLogs> example = Example.of(vo.getInfo());
		Sort sort = new Sort(new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(vo.getPageNumber() - 1, vo.getPageSize(), sort);
		Page<SysComnLogs> sourceCodes = sysComnLogsDao.findAll(new Specification<SysComnLogs>() {
			@Override
			public Predicate toPredicate(Root<SysComnLogs> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> list = new ArrayList<>();
				list.add(cb.isNotNull(root.get("message").as(String.class)));
				return cb.and(list.toArray(new Predicate[list.size()]));
			}
		}, request);
		return sourceCodes;
	}

	/**
	 * 方法名： findAllLongtime
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param vo
	 * 参 数： @return
	 * 返 回： Page<SysComnLogs>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public Page<SysComnLogs> findAllLongtime(SysComnLogsVo vo) {
		Sort sort = new Sort(new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(vo.getPageNumber() - 1, vo.getPageSize(), sort);
		Page<SysComnLogs> sourceCodes = sysComnLogsDao.findAll(new Specification<SysComnLogs>() {
			@Override
			public Predicate toPredicate(Root<SysComnLogs> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> list = new ArrayList<>();
				list.add(cb.gt((root.get("requestLong").as(Long.class)), 1000));
				list.add(cb.equal((root.get("url").as(String.class)), "/zhcx/findAllTableRow"));
				// list.add(cb.equal((root.get("classMethod").as(String.class)), "findAllTableRow"));
				return cb.and(list.toArray(new Predicate[list.size()]));
			}
		}, request);
		return sourceCodes;
	}

	/**
	 * 方法名： findAllZhcx
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param vo
	 * 参 数： @return
	 * 返 回： Page<SysComnLogs>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public Page<VSysComnLogs> findAllZhcx(SysComnLogsVo vo) {
		Example<VSysComnLogs> example = Example.of(new VSysComnLogs());
		Sort sort = new Sort(new Order(Direction.DESC, "date1"), new Order(Direction.DESC, "time1"));
		PageRequest request = new PageRequest(vo.getPageNumber() - 1, vo.getPageSize(), sort);
		Page<VSysComnLogs> sourceCodes = vSysComnLogsDao.findAll(example, request);
		return sourceCodes;
	}

	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param vo
	 * 参 数： @return
	 * 返 回： Page<SysComnLogs>
	 * 作 者 ： Administrator
	 * @throws
	 */
	public Page<SysComnLogs> findAll(SysComnLogsVo vo) {
		// Example<SysComnLogs> example = Example.of(vo.getInfo());
		Sort sort = new Sort(new Order(Direction.DESC, "createTime"));
		PageRequest request = new PageRequest(vo.getPageNumber() - 1, vo.getPageSize(), sort);
		Page<SysComnLogs> sourceCodes = sysComnLogsDao.findAll(new Specification<SysComnLogs>() {

			@Override
			public Predicate toPredicate(Root<SysComnLogs> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> list = new ArrayList<>();
				if (vo.getInfo().getCreateUser() != null) {
					list.add(cb.equal(root.get("createUser").as(String.class), vo.getInfo().getCreateUser()));
				}
				if (vo.getStrartCreateTime() != null && !"".equals(vo.getStrartCreateTime().trim())) {
					list.add(cb.greaterThanOrEqualTo(root.get("createTime").as(String.class), vo.getStrartCreateTime()));
				}
				if (vo.getEndCreateTime() != null && !"".equals(vo.getEndCreateTime().trim())) {
					list.add(cb.lessThanOrEqualTo(root.get("createTime").as(String.class), vo.getEndCreateTime()));
				}
				return cb.and(list.toArray(new Predicate[list.size()]));
			}
		}, request);
		return sourceCodes;
	}
}
