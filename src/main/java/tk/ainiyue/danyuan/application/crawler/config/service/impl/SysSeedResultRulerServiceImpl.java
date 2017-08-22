package tk.ainiyue.danyuan.application.crawler.config.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.crawler.config.dao.SysSeedResultRulerDao;
import tk.ainiyue.danyuan.application.crawler.config.po.SysSeedResultRulerInfo;
import tk.ainiyue.danyuan.application.crawler.config.service.SysSeedResultRulerService;
import tk.ainiyue.danyuan.application.crawler.config.vo.SysSeedResultRulerVo;

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
@Service("sysSeedResultRulerServiceImpl")
public class SysSeedResultRulerServiceImpl implements SysSeedResultRulerService {
	private static final Logger	  logger = LoggerFactory.getLogger(SysSeedResultRulerServiceImpl.class);
	//
	@Autowired
	private SysSeedResultRulerDao sysSeedResultRulerDao;
	
	@Override
	public List<SysSeedResultRulerInfo> findAllBySysSeedResultRulerInfo(SysSeedResultRulerInfo info) {
		logger.info(info.toString(), SysSeedResultRulerServiceImpl.class);
		Example<SysSeedResultRulerInfo> example = Example.of(info);
		return sysSeedResultRulerDao.findAll(example);
	}
	
	@Override
	public List<SysSeedResultRulerInfo> saveSysSeedResultRulerInfo(SysSeedResultRulerVo vo) {
		SysSeedResultRulerInfo info = new SysSeedResultRulerInfo();
		info.setTableUuid(vo.getTableUuid());
		info.setRulerUuid(vo.getRulerUuid());
		Example<SysSeedResultRulerInfo> example = Example.of(info);
		sysSeedResultRulerDao.delete(sysSeedResultRulerDao.findAll(example));
		if (vo.getList() != null) {
			for (SysSeedResultRulerInfo iterable_element : vo.getList()) {
				iterable_element.setTableUuid(vo.getTableUuid());
				iterable_element.setRulerUuid(vo.getRulerUuid());
				sysSeedResultRulerDao.save(iterable_element);
			}
		}
		return sysSeedResultRulerDao.findAll(example);
	}
}
