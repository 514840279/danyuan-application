package org.danyuan.application.common.base;

import java.lang.reflect.Field;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Order;
import org.springframework.data.repository.NoRepositoryBean;

/**
 * 文件名 ： BaseServiceImpl.java
 * 包 名 ： org.danyuan.application.common.base
 * 描 述 ： 通用服务层实现
 * 作 者 ： wang
 * 时 间 ： 2018年12月8日 上午9:41:12
 * 版 本 ： V1.0
 */
@NoRepositoryBean
public class BaseServiceImpl<T> implements BaseService<T> {

	@Autowired
	BaseDao<T> baseDao;

	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param entity
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseService#findOne(java.lang.Object)
	 * 作 者 ： wang
	 */

	@Override
	public T findOne(T entity) {
		if (entity == null) {
			return null;
		}
		Example<T> example = Example.of(entity);
		Optional<T> optional = baseDao.findOne(example);
		if (optional.isPresent()) {
			return optional.get();
		}
		return null;
	}

	/**
	 * 方法名 ： findById
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param id
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseService#findById(java.lang.String)
	 * 作 者 ： wang
	 */

	@Override
	public T findById(String id) {
		if (id == null || "".equals(id)) {
			return null;
		}
		Optional<T> optional = baseDao.findById(id);
		if (optional.isPresent()) {
			return optional.get();
		}
		return null;
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
	public List<T> findAll(T entity) {
		if (entity == null) {
			return baseDao.findAll();
		} else {
			Example<T> example = Example.of(entity);
			List<T> list = baseDao.findAll(example);
			return list;
		}

	}

	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param entity
	 * 参 考 ： @see org.danyuan.application.common.base.BaseService#save(java.lang.Object)
	 * 作 者 ： wang
	 */

	@Override
	public T save(T entity) {
		if (entity == null) {
			return null;
		}
		Field[] fields = entity.getClass().getSuperclass().getDeclaredFields();
		boolean fluxFlag = true;
		for (Field field : fields) {
			// # 要求实体类必须要有uuid 或者需要继承 @MappedSuperclass<BaseEntity>
			if ("uuid".equals(field.getName())) {
				try {
					if (field.get(entity) == null || "".equals(field.get(entity).toString())) {
						field.set(entity, UUID.randomUUID().toString());
					}
					fluxFlag = false;
					// 成功赋值id 中断循环
					break;
				} catch (IllegalArgumentException e) {
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				}
			}
		}
		// 如果超类中没有 这访问entity
		if (fluxFlag) {
			fields = entity.getClass().getDeclaredFields();
			for (Field field : fields) {
				// # 要求实体类必须要有uuid 或者需要继承 @MappedSuperclass<BaseEntity>
				if ("uuid".equals(field.getName())) {
					try {
						if (field.get(entity) == null || "".equals(field.get(entity).toString())) {
							field.set(entity, UUID.randomUUID().toString());
						}
					} catch (IllegalArgumentException e) {
						e.printStackTrace();
					} catch (IllegalAccessException e) {
						e.printStackTrace();
					}
				}
			}
		}
		return baseDao.save(entity);
	}

	/**
	 * 方法名 ： saveAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param entities
	 * 参 考 ： @see org.danyuan.application.common.base.BaseService#saveAll(java.util.List)
	 * 作 者 ： wang
	 */

	@Override
	public void saveAll(List<T> entities) {
		baseDao.saveAll(entities);
	}

	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param entity
	 * 参 考 ： @see org.danyuan.application.common.base.BaseService#delete(java.lang.Object)
	 * 作 者 ： wang
	 */

	@Override
	public void delete(T entity) {
		baseDao.delete(entity);
	}

	/**
	 * 方法名 ： deleteAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param entities
	 * 参 考 ： @see org.danyuan.application.common.base.BaseService#deleteAll(java.util.List)
	 * 作 者 ： wang
	 */

	@Override
	public void deleteAll(List<T> entities) {
		baseDao.deleteAll(entities);
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
		baseDao.deleteAllInBatch();
	}

	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseService#findAll(org.danyuan.application.common.base.Pagination)
	 * 作 者 ： wang
	 */

	@Override
	public List<T> findAll(Pagination<T> vo) {
		if (vo.getInfo() == null) {
			if (vo.getSortName() != null) {
				Sort sort = Sort.by(Order.by(vo.getSortName()));
				return baseDao.findAll(sort);
			} else {
				return baseDao.findAll();
			}
		} else {
			Example<T> example = Example.of(vo.getInfo());
			if (vo.getSortName() != null) {
				Sort sort = Sort.by(Order.by(vo.getSortName()));
				return baseDao.findAll(example, sort);
			} else {
				return baseDao.findAll(example);
			}
		}

	}

	/**
	 * 方法名 ： page
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param vo
	 * 参 数 ： @return
	 * 参 考 ： @see org.danyuan.application.common.base.BaseService#page(org.danyuan.application.common.base.Pagination)
	 * 作 者 ： wang
	 */

	@Override
	public Page<T> page(Pagination<T> vo) {
		if (vo.getInfo() == null) {
			if (vo.getSortName() != null) {
				Sort sort = Sort.by(Order.by(vo.getSortName()));
				PageRequest request = PageRequest.of(vo.getPageNumber() - 1, vo.getPageSize(), sort);
				return baseDao.findAll(request);
			} else {
				PageRequest request = PageRequest.of(vo.getPageNumber() - 1, vo.getPageSize());
				return baseDao.findAll(request);
			}
		} else {
			Example<T> example = Example.of(vo.getInfo());
			if (vo.getSortName() != null) {
				Sort sort = Sort.by(Order.by(vo.getSortName()));
				PageRequest request = PageRequest.of(vo.getPageNumber() - 1, vo.getPageSize(), sort);
				return baseDao.findAll(example, request);
			} else {
				PageRequest request = PageRequest.of(vo.getPageNumber() - 1, vo.getPageSize());
				return baseDao.findAll(example, request);
			}
		}

	}

}
