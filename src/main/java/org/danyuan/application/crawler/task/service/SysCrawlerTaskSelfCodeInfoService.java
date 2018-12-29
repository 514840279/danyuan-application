package org.danyuan.application.crawler.task.service;

import java.util.List;
import java.util.Optional;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.crawler.task.dao.SysCrawlerTaskSelfCodeInfoDao;
import org.danyuan.application.crawler.task.po.SysCrawlerTaskSelfCodeInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysCrawlerTaskSelfCodeInfoService.java
 * 包 名 ： org.danyuan.application.crawler.task.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2018年11月1日 下午9:48:04
 * 版 本 ： V1.0
 */
@Service
public class SysCrawlerTaskSelfCodeInfoService extends BaseServiceImpl<SysCrawlerTaskSelfCodeInfo> implements BaseService<SysCrawlerTaskSelfCodeInfo> {
	
	@Autowired
	SysCrawlerTaskSelfCodeInfoDao sysCrawlerTaskSelfCodeInfoDao;
	
	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param entity
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseService#findOne(java.lang.Object)
	 * 作 者 ： wang
	 */
	
	@Override
	public SysCrawlerTaskSelfCodeInfo findOne(SysCrawlerTaskSelfCodeInfo entity) {
		Example<SysCrawlerTaskSelfCodeInfo> example = Example.of(entity);
		Optional<SysCrawlerTaskSelfCodeInfo> t = sysCrawlerTaskSelfCodeInfoDao.findOne(example);
		if (t.isPresent()) {
			entity = t.get();
		}
		return entity;
	}
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param entity
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseService#findAll(java.lang.Object)
	 * 作 者 ： wang
	 */
	
	@Override
	public List<SysCrawlerTaskSelfCodeInfo> findAll(SysCrawlerTaskSelfCodeInfo entity) {
		Example<SysCrawlerTaskSelfCodeInfo> example = Example.of(entity);
		return sysCrawlerTaskSelfCodeInfoDao.findAll(example);
	}
	
	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param pageNumber
	 * 参 数 ： @param pageSize
	 * 参 数 ： @param entity
	 * 参 数 ： @param map
	 * 参 数 ： @param order
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseService#page(int, int, java.lang.Object, java.util.Map, org.springframework.data.domain.Sort.Order[])
	 * 作 者 ： wang
	 */
	
	@Override
	public Page<SysCrawlerTaskSelfCodeInfo> page(Pagination<SysCrawlerTaskSelfCodeInfo> vo) {
		Example<SysCrawlerTaskSelfCodeInfo> example = Example.of(vo.getInfo());
		Sort sort = Sort.by(new Order(Direction.DESC, "createTime"));
		PageRequest request = PageRequest.of(vo.getPageNumber() - 1, vo.getPageSize(), sort);
		return sysCrawlerTaskSelfCodeInfoDao.findAll(example, request);
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param entities
	 * 参 考 ： @see org.danyuan.application.common.base.BaseService#save(java.util.List)
	 * 作 者 ： wang
	 */
	
	@Override
	public void saveAll(List<SysCrawlerTaskSelfCodeInfo> entities) {
		sysCrawlerTaskSelfCodeInfoDao.saveAll(entities);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param entity
	 * 参 考 ： @see org.danyuan.application.common.base.BaseService#delete(java.lang.Object)
	 * 作 者 ： wang
	 */
	
	@Override
	public void delete(SysCrawlerTaskSelfCodeInfo entity) {
		sysCrawlerTaskSelfCodeInfoDao.delete(entity);
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param entities
	 * 参 考 ： @see org.danyuan.application.common.base.BaseService#delete(java.util.List)
	 * 作 者 ： wang
	 */
	
	@Override
	public void deleteAll(List<SysCrawlerTaskSelfCodeInfo> entities) {
		sysCrawlerTaskSelfCodeInfoDao.deleteAll(entities);
	}
	
	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ：
	 * 参 考 ： @see org.danyuan.application.common.base.BaseService#trunc()
	 * 作 者 ： wang
	 */
	
	@Override
	public void trunc() {
		sysCrawlerTaskSelfCodeInfoDao.deleteAllInBatch();
	}
	
}
