package org.danyuan.application.crawler.param.service;

import java.util.List;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.crawler.param.dao.SysCrawlerRulerColumInfoDao;
import org.danyuan.application.crawler.param.po.SysCrawlerRulerColumInfo;
import org.danyuan.application.crawler.param.po.SysCrawlerRulerInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysCrawlerRulerColumInfoService.java
 * 包 名 ： org.danyuan.application.crawler.param.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2018年11月1日 下午9:10:57
 * 版 本 ： V1.0
 */
@Service
public class SysCrawlerRulerColumInfoService extends BaseServiceImpl<SysCrawlerRulerColumInfo> implements BaseService<SysCrawlerRulerColumInfo> {
	
	@Autowired
	SysCrawlerRulerColumInfoDao sysCrawlerRulerColumInfoDao;
	
	/**  
	*  方法名： findParent  
	*  功    能： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @param info
	*  参    数： @return 
	*  返    回： List<SysCrawlerRulerColumInfo>  
	*  作    者 ： wang  
	*  @throws  
	*/
	public List<SysCrawlerRulerColumInfo> findParent(SysCrawlerRulerInfo sysCrawlerRulerInfo) {
		return sysCrawlerRulerColumInfoDao.findParent(sysCrawlerRulerInfo.getUuid());
	}
	
}
