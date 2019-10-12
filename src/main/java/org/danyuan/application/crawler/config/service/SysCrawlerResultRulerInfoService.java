package org.danyuan.application.crawler.config.service;

import java.util.List;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.crawler.config.dao.SysCrawlerResultRulerInfoDao;
import org.danyuan.application.crawler.config.po.SysCrawlerResultRulerInfo;
import org.danyuan.application.crawler.config.vo.SysCrawlerResultRulerVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysCrawlerResultRulerInfoService.java
 * 包 名 ： org.danyuan.application.crawler.config.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2018年11月1日 下午8:46:46
 * 版 本 ： V1.0
 */
@Service
public class SysCrawlerResultRulerInfoService extends BaseServiceImpl<SysCrawlerResultRulerInfo> implements BaseService<SysCrawlerResultRulerInfo> {
	
	@Autowired
	SysCrawlerResultRulerInfoDao sysCrawlerResultRulerInfoDao;
	
	/**
	 * @return
	 * 方法名： saveResultRulerInfo
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param vo
	 * 返 回： void
	 * 作 者 ： wang
	 * @throws
	 */
	public List<SysCrawlerResultRulerInfo> saveResultRulerInfo(SysCrawlerResultRulerVo vo) {
		SysCrawlerResultRulerInfo info = new SysCrawlerResultRulerInfo();
		info.setTableUuid(vo.getTableUuid());
		info.setRulerUuid(vo.getRulerUuid());
		Example<SysCrawlerResultRulerInfo> example = Example.of(info);
		sysCrawlerResultRulerInfoDao.deleteAll(sysCrawlerResultRulerInfoDao.findAll(example));
		if (vo.getList() != null) {
			for (SysCrawlerResultRulerInfo iterable_element : vo.getList()) {
				iterable_element.setTableUuid(vo.getTableUuid());
				iterable_element.setRulerUuid(vo.getRulerUuid());
				sysCrawlerResultRulerInfoDao.save(iterable_element);
			}
		}
		return sysCrawlerResultRulerInfoDao.findAll(example);
	}
	
}
