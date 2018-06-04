package tk.ainiyue.danyuan.application.dbms.addr.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.dbms.addr.dao.SysDatabaseDao;
import tk.ainiyue.danyuan.application.dbms.addr.po.SysDatabaseInfo;
import tk.ainiyue.danyuan.application.dbms.addr.service.SysDatabaseService;

/**
 * 文件名 ： SysDatabaseService.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.addr.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:47:40
 * 版 本 ： V1.0
 */
@Service("sysDatabaseService")
public class SysDatabaseServiceImpl implements SysDatabaseService {
	//
	@Autowired
	private SysDatabaseDao sysDatabaseDao;
	
	@Override
	public List<SysDatabaseInfo> findAll() {
		return sysDatabaseDao.findAll();
	}
	
	@Override
	public void save(SysDatabaseInfo sysDatabaseInfo) {
		sysDatabaseDao.save(sysDatabaseInfo);
	}

	@Override
	public void deleteSysDatabaseInfo(List<SysDatabaseInfo> list) {
		sysDatabaseDao.delete(list);
	}

}
