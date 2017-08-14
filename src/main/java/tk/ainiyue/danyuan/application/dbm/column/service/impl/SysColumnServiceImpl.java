package tk.ainiyue.danyuan.application.dbm.column.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.dbm.column.dao.SysColumnDao;
import tk.ainiyue.danyuan.application.dbm.column.service.SysColumnService;
import tk.ainiyue.danyuan.application.dbm.table.po.SysTableInfo;

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
	public List<SysTableInfo> findAllByTableUuid(String tableUuid) {
		return sysColumnDao.findAllByTableUuid(tableUuid);
	}

}
