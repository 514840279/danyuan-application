package org.danyuan.application.crawler.config.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.http.ParseException;
import org.danyuan.application.common.utils.httpsdownload.HttpUtil;
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
	 * @throws IOException
	 * @throws ParseException
	 * @param i
	 * @方法名 startTask
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param list
	 * @参数 @return
	 * @返回 String
	 * @author Administrator
	 * @throws
	 */
	public String startTask(List<SysCrawlerTaskInfo> list, int i) throws ParseException, IOException {
		for (SysCrawlerTaskInfo sysCrawlerTaskInfo : list) {
			SysCrawlerRulerInfo sysCrawlerRulerInfo = new SysCrawlerRulerInfo();
			sysCrawlerRulerInfo.setTaskUuid(sysCrawlerTaskInfo.getUuid());
			Example<SysCrawlerRulerInfo> example = Example.of(sysCrawlerRulerInfo);
			List<SysCrawlerRulerInfo> ruleList = sysCrawlerRulerInfoDao.findAll(example);
			for (SysCrawlerRulerInfo sysCrawlerRulerInfo2 : ruleList) {
				// 去重
				if (!sysCrawlerRulerInfo2.getStatue().equals(i + "")) {
					sysCrawlerRulerInfo2.setStatue(i + "");
					// 修改状态
					sysCrawlerRulerInfoDao.save(sysCrawlerRulerInfo2);
					// 启动任务
					Map<String, String> map = new HashMap<>();
					map.put("uuid", sysCrawlerRulerInfo2.getUuid());
					map.put("taskUuid", sysCrawlerRulerInfo2.getUuid());
					map.put("contentInfo", sysCrawlerRulerInfo2.getContentJsonInfo());
					map.put("delete", sysCrawlerRulerInfo2.getDeleteFlag() + "");
					map.put("statue", sysCrawlerRulerInfo2.getStatue());
					HttpUtil.postJson("http://127.0.0.1:3000/crawler", map, "UTF-8");
				}
			}
		}
		return "1";
	}

	/**
	 * @throws IOException
	 * @throws ParseException
	 * @方法名 run
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param list
	 * @返回 void
	 * @author Administrator
	 * @throws
	 */
	public void run(List<SysCrawlerTaskInfo> list) throws IOException {
		if (list != null) {
			for (SysCrawlerTaskInfo sysCrawlerTaskInfo : list) {

			}
		}
		
	}
	
}
