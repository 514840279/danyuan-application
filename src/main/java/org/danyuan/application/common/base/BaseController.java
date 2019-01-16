package org.danyuan.application.common.base;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 文件名 ： BaseController.java
 * 包 名 ： tk.ainiyue.danyuan.application.common.base
 * 描 述 ： 通用类控制层接口
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2018年4月3日 下午11:03:46
 * 版 本 ： V1.0
 */
public interface BaseController<T> {

	@RequestMapping("/page")
	BaseResult<Page<T>> page(Pagination<T> vo);

	@RequestMapping("/findAll")
	BaseResult<List<T>> findAll(T info);

	@RequestMapping("/findOne")
	BaseResult<T> findOne(T info);

	@RequestMapping("/save")
	BaseResult<T> save(T info);

	@RequestMapping("/saveAll")
	BaseResult<T> saveAll(Pagination<T> vo);

	@RequestMapping("/deleteAll")
	BaseResult<T> deleteAll(Pagination<T> vo);

	@RequestMapping("/delete")
	BaseResult<T> delete(T info);

	@RequestMapping("/trunc")
	BaseResult<T> trunc();

}