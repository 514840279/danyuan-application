package org.danyuan.application.crawler.config.service;

import java.util.List;

import org.danyuan.application.crawler.param.dao.SysCrawlerRulerInfoDao;
import org.danyuan.application.crawler.param.po.SysCrawlerRulerInfo;
import org.danyuan.application.crawler.task.po.SysCrawlerTaskInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

/**
 * @文件名 SysRuleInfoService.java
 * @包名 org.danyuan.application.crawler.config.service
 * @描述 TODO(用一句话描述该文件做什么)
 * @时间 2019年7月19日 下午1:32:11
 * @author Administrator
 * @版本 V1.0
 */
@Service
public class SysRuleInfoService {
	
	@Autowired
	SysCrawlerRulerInfoDao sysCrawlerRulerInfoDao;
	
	/**
	 * @param i
	 * @方法名 startTask
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param list
	 * @参数 @return
	 * @返回 String
	 * @author Administrator
	 * @throws
	 */
	public String startTask(List<SysCrawlerTaskInfo> list, int i) {
		for (SysCrawlerTaskInfo sysCrawlerTaskInfo : list) {
			SysCrawlerRulerInfo sysCrawlerRulerInfo = new SysCrawlerRulerInfo();
			sysCrawlerRulerInfo.setTaskUuid(sysCrawlerTaskInfo.getUuid());
			Example<SysCrawlerRulerInfo> example = Example.of(sysCrawlerRulerInfo);
			List<SysCrawlerRulerInfo> ruleList = sysCrawlerRulerInfoDao.findAll(example);
			for (SysCrawlerRulerInfo sysCrawlerTaskInfo2 : ruleList) {
				sysCrawlerTaskInfo2.setStatue(i + "");
				sysCrawlerRulerInfoDao.save(sysCrawlerTaskInfo2);
			}
		}
		return "1";
	}
	
//	@Autowired
//	SysRuleInfoDao sysRuleInfoDao;
//
//	public void save(SysRuleInfo info) {
//		sysRuleInfoDao.save(info);
//	}
//
//	public void update(SysRuleInfo info) {
//		sysRuleInfoDao.save(info);
//	}
//
//	public SysRuleInfo findOne(SysRuleInfo info) {
//		Example<SysRuleInfo> example = Example.of(info);
//		Optional<SysRuleInfo> optional = sysRuleInfoDao.findOne(example);
//		if (optional.isPresent()) {
//			return optional.get();
//		} else {
//			save(info);
//		}
//		return info;
//	}
//
//	public List<SysRuleInfo> findAll(SysRuleInfo info) {
//		Example<SysRuleInfo> example = Example.of(info);
//		return sysRuleInfoDao.findAll(example);
//	}
//
//	public Page<SysRuleInfo> findAll(Pagination<SysRuleInfo> vo) {
//		Example<SysRuleInfo> example = Example.of(vo.getInfo());
//		Order order = Order.desc(vo.getSortName());
//		Sort sort = Sort.by(order);
//		PageRequest request = PageRequest.of(vo.getPageNumber() - 1, vo.getPageSize(), sort);
//		return sysRuleInfoDao.findAll(example, request);
//	}

}
