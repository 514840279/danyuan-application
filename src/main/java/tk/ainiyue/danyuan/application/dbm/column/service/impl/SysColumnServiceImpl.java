package tk.ainiyue.danyuan.application.dbm.column.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.dbm.column.dao.SysColumnDao;
import tk.ainiyue.danyuan.application.dbm.column.po.SysColumnInfo;
import tk.ainiyue.danyuan.application.dbm.column.service.SysColumnService;

/**
 * 文件名 ： SysColumnServiceImpl.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.column.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:52:36
 * 版 本 ： V1.0
 */
@Service("sysColumnService")
public class SysColumnServiceImpl implements SysColumnService {
	private static final Logger	logger = LoggerFactory.getLogger(SysColumnServiceImpl.class);
	//
	@Autowired
	private SysColumnDao		sysColumnDao;
	
	@Override
	public Page<SysColumnInfo> findAllByTableUuid(int pageNumber, int pageSize, String searchText, String tableUuid) {
		logger.info(tableUuid, SysColumnServiceImpl.class);
//		Page<SysColumnInfo> list = sysColumnDao.findAllByTableUuid(tableUuid);
		Sort sort = new Sort(new Order(Direction.ASC, "colsOrder"));
		PageRequest request = this.buildPageRequest(pageNumber, pageSize, sort);
		Page<SysColumnInfo> sourceCodes = null;
		if (searchText == null || "".equals(searchText) && "".equals(tableUuid)) {
			sourceCodes = sysColumnDao.findAll(request);
		} else {
			SysColumnInfo info = new SysColumnInfo();
			if (!"".equals(tableUuid)) {
				info.setTableUuid(tableUuid);
			}
			if (!"".equals(searchText)) {
				info.setColsName(searchText);
			}
			Example<SysColumnInfo> example = Example.of(info);
			sourceCodes = sysColumnDao.findAll(example, request);
		}
		return sourceCodes;
		
	}

	// 构建PageRequest
	private PageRequest buildPageRequest(int pageNumber, int pagzSize, Sort sort) {
		return new PageRequest(pageNumber - 1, pagzSize, sort);
	}
}
