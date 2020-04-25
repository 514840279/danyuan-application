package org.danyuan.application.crawler.param.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.http.ParseException;
import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.common.utils.httpsdownload.HttpUtil;
import org.danyuan.application.crawler.param.dao.SysCrawlerRulerInfoDao;
import org.danyuan.application.crawler.param.po.SysCrawlerRulerInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @文件名 SysCrawlerRulerInfoService.java
 * @包名 org.danyuan.application.crawler.param.service
 * @描述 service层
 * @时间 2020年04月25日 08:00:24
 * @author test
 * @版本 V1.0
 */
@Service
public class SysCrawlerRulerInfoService extends BaseServiceImpl<SysCrawlerRulerInfo> implements BaseService<SysCrawlerRulerInfo> {
	
	@Autowired
	SysCrawlerRulerInfoDao sysCrawlerRulerInfoDao;
	
	/**
	 * @throws IOException
	 * @throws ParseException
	 * @方法名 start
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param list
	 * @参数 @return
	 * @返回 String
	 * @author Administrator
	 * @throws
	 */
	public String start(List<SysCrawlerRulerInfo> list) throws ParseException, IOException {
		for (SysCrawlerRulerInfo sysCrawlerRulerInfo : list) {
			if ("0".equals(sysCrawlerRulerInfo.getStatue())) {
				// 启动任务
				Map<String, String> map = new HashMap<>();
				map.put("uuid", sysCrawlerRulerInfo.getUuid());
				map.put("taskUuid", sysCrawlerRulerInfo.getUuid());
				map.put("contentInfo", sysCrawlerRulerInfo.getContentJsonInfo());
				map.put("delete", sysCrawlerRulerInfo.getDeleteFlag() + "");
				map.put("statue", "1");
				HttpUtil.postJson("http://127.0.0.1:3000/crawler", map, "UTF-8");
			}
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
