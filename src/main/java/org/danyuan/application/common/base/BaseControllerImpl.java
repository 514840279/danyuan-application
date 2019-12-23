package org.danyuan.application.common.base;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.NoRepositoryBean;
import org.springframework.web.bind.annotation.RequestBody;

/**
 * @描述 通用类控制层实现类
 * @文件名 BaseControllerImpl.java
 * @包名 org.danyuan.application.common.base
 * @时间 2019年1月16日 下午2:14:54
 * @author Administrator
 * @版本 V1.0
 */
@NoRepositoryBean
public class BaseControllerImpl<T> implements BaseController<T> {

	@Autowired
	BaseService<T> baseService;
	
	/**
	 * 分页请求方法
	 *
	 * @方法名 page
	 * @参数 @param vo
	 * @参数 @return
	 * @参考 @see org.danyuan.application.common.base.BaseController#page(org.danyuan.application.common.base.Pagination)
	 * @author Administrator
	 */

	@Override
	public BaseResult<Page<T>> page(@RequestBody Pagination<T> vo) {
		try {
			Page<T> page = baseService.page(vo);
			return ResultUtil.success(page);
		} catch (Exception e) {
			return ResultUtil.error(-1, e.getMessage());
		}
	}
	
	/**
	 * 查询所有数据，慎用
	 *
	 * @方法名 findAll
	 * @参数 @param info
	 * @参数 @return
	 * @参考 @see org.danyuan.application.common.base.BaseController#findAll(java.lang.Object)
	 * @author Administrator
	 */

	@Override
	public BaseResult<List<T>> findAll(@RequestBody T info) {
		try {
			List<T> list = baseService.findAll(info);
			return ResultUtil.success(list);
		} catch (Exception e) {
			return ResultUtil.error(-1, e.getMessage());
		}
	}
	
	/**
	 * 查询一条记录，
	 *
	 * @方法名 findOne
	 * @参数 @param info
	 * @参数 @return
	 * @参考 @see org.danyuan.application.common.base.BaseController#findOne(java.lang.Object)
	 * @author Administrator
	 */

	@Override
	public BaseResult<T> findOne(@RequestBody T info) {
		try {
			T page = baseService.findOne(info);
			return ResultUtil.success(page);
		} catch (Exception e) {
			return ResultUtil.error(-1, e.getMessage());
		}
	}
	
	/**
	 * 单条记录保存
	 *
	 * @方法名 save
	 * @参数 @param info
	 * @参数 @return
	 * @参考 @see org.danyuan.application.common.base.BaseController#save(java.lang.Object)
	 * @author Administrator
	 */

	@Override
	public BaseResult<T> save(@RequestBody T info) {
		try {
			T page = baseService.save(info);
			return ResultUtil.success(page);
		} catch (Exception e) {
			return ResultUtil.error(-1, e.getMessage());
		}
	}
	
	/**
	 * 多条记录保存
	 *
	 * @方法名 save
	 * @参数 @param vo
	 * @参数 @return
	 * @参考 @see org.danyuan.application.common.base.BaseController#save(org.danyuan.application.common.base.Pagination)
	 * @author Administrator
	 */

	@Override
	public BaseResult<T> saveAll(@RequestBody Pagination<T> vo) {
		try {
			baseService.saveAll(vo.getList());
			return ResultUtil.success();
		} catch (Exception e) {
			return ResultUtil.error(-1, e.getMessage());
		}
	}
	
	/**
	 * 多条记录删除
	 *
	 * @方法名 delete
	 * @参数 @param vo
	 * @参数 @return
	 * @参考 @see org.danyuan.application.common.base.BaseController#delete(org.danyuan.application.common.base.Pagination)
	 * @author Administrator
	 */

	@Override
	public BaseResult<T> deleteAll(@RequestBody Pagination<T> vo) {
		try {
			baseService.deleteAll(vo.getList());
			return ResultUtil.success();
		} catch (Exception e) {
			return ResultUtil.error(-1, e.getMessage());
		}
	}
	
	/**
	 * 单条记录删除
	 *
	 * @方法名 delete
	 * @参数 @param info
	 * @参数 @return
	 * @参考 @see org.danyuan.application.common.base.BaseController#delete(java.lang.Object)
	 * @author Administrator
	 */

	@Override
	public BaseResult<T> delete(@RequestBody T info) {
		try {
			baseService.delete(info);
			return ResultUtil.success(info);
		} catch (Exception e) {
			return ResultUtil.error(-1, e.getMessage());
		}
	}
	
	/**
	 * 删除整个表，慎用
	 *
	 * @方法名 trunc
	 * @参数 @return
	 * @参考 @see org.danyuan.application.common.base.BaseController#trunc()
	 * @author Administrator
	 */

	@Override
	public BaseResult<T> trunc() {
		try {
			baseService.trunc();
			return ResultUtil.success();
		} catch (Exception e) {
			return ResultUtil.error(-1, e.getMessage());
		}
	}
	
	/**
	 * 统计数量
	 *
	 * @方法名 count
	 * @参数 @param info
	 * @参数 @return
	 * @参考 @see org.danyuan.application.common.base.BaseController#count(java.lang.Object)
	 * @author Administrator
	 */

	@Override
	public BaseResult<Long> count(T info) {
		try {
			Long lengthLong = baseService.count(info);
			return ResultUtil.success(lengthLong);
		} catch (Exception e) {
			return ResultUtil.error(-1, e.getMessage());
		}
	}
	
}
