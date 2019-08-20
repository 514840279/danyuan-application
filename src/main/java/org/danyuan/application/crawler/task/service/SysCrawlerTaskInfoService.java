package org.danyuan.application.crawler.task.service;

import java.util.List;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.crawler.task.dao.SysCrawlerTaskInfoDao;
import org.danyuan.application.crawler.task.po.SysCrawlerTaskInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysCrawlerTaskInfoService.java
 * 包 名 ： org.danyuan.application.crawler.task.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2018年11月1日 下午9:43:52
 * 版 本 ： V1.0
 */
@Service
public class SysCrawlerTaskInfoService extends BaseServiceImpl<SysCrawlerTaskInfo> implements BaseService<SysCrawlerTaskInfo> {
	@Autowired
	SysCrawlerTaskInfoDao sysCrawlerTaskInfoDao;
	
	/**
	 * 方法名： findUrlType
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysCrawlerTaskInfo>
	 * 作 者 ： wang
	 * @throws
	 */
	public List<String> findUrlType() {
		return sysCrawlerTaskInfoDao.findUrlType();
	}

	/**
	 * 方法名： findTaskName
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<String>
	 * 作 者 ： wang
	 * @throws
	 */
	public List<String> findTaskName() {
		return sysCrawlerTaskInfoDao.findTaskName();
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
//	public void run(List<SysCrawlerTaskInfo> list) throws ParseException, IOException {
//		if (list != null) {
//			for (SysCrawlerTaskInfo sysCrawlerTaskInfo : list) {
//				Map<String, String> map = new HashMap<>();
//				map.put("uuid", sysCrawlerTaskInfo.getUuid());
//				map.put("dictConf", JSON.parse(sysCrawlerTaskInfo.getDictConf()).toString());
//				map.put("listConf", JSON.parse(sysCrawlerTaskInfo.getListConf()).toString());
//				map.put("detailConf", JSON.parse(sysCrawlerTaskInfo.getDetailConf()).toString());
//				HttpUtil.postJson("http://127.0.0.1:3000/crawler", map, "UTF-8");
//			}
//		}
//
//	}

}
