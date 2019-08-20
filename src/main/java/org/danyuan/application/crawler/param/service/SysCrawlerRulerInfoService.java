package org.danyuan.application.crawler.param.service;

import java.util.List;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.crawler.param.dao.SysCrawlerRulerInfoDao;
import org.danyuan.application.crawler.param.po.SysCrawlerRulerInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysCrawlerRulerInfoService.java
 * 包 名 ： org.danyuan.application.crawler.param.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2018年11月1日 下午9:20:50
 * 版 本 ： V1.0
 */
@Service
public class SysCrawlerRulerInfoService extends BaseServiceImpl<SysCrawlerRulerInfo> implements BaseService<SysCrawlerRulerInfo> {

	@Autowired
	SysCrawlerRulerInfoDao sysCrawlerRulerInfoDao;

	/**
	 * @方法名 start
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param list
	 * @参数 @return
	 * @返回 String
	 * @author Administrator
	 * @throws
	 */
	public String start(List<SysCrawlerRulerInfo> list) {
		for (SysCrawlerRulerInfo sysCrawlerRulerInfo : list) {
			sysCrawlerRulerInfo.setStatue("1");
			sysCrawlerRulerInfoDao.save(sysCrawlerRulerInfo);
		}
		return "1";
	}
	
	/**
	 * @方法名 start
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param list
	 * @参数 @return
	 * @返回 String
	 * @author Administrator
	 * @throws
	 */
	public String stop(List<SysCrawlerRulerInfo> list) {
		for (SysCrawlerRulerInfo sysCrawlerRulerInfo : list) {
			sysCrawlerRulerInfo.setStatue("0");
			sysCrawlerRulerInfoDao.save(sysCrawlerRulerInfo);
		}
		return "1";
	}
}
