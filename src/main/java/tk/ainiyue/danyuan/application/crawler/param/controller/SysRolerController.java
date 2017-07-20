package tk.ainiyue.danyuan.application.crawler.param.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import tk.ainiyue.danyuan.application.crawler.param.po.SysRolerInfo;
import tk.ainiyue.danyuan.application.crawler.param.service.SysRolerService;

/**
 * 文件名 ： SysRolerController.java
 * 包 名 ： tk.ainiyue.danyuan.application.crawler.param.controller
 * 描 述 ： 爬虫规则controller
 * 机能名称：爬虫规则
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年7月20日 上午11:34:54
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysRoler")
public class SysRolerController {
	//
	private static final Logger	logger = LoggerFactory.getLogger(SysRolerController.class);
	//
	@Autowired
	private SysRolerService		sysSeedRolerService;
	
	@RequestMapping("/findAll")
	public List<SysRolerInfo> findAll() {
		logger.info("findAll", SysRolerController.class);
		return sysSeedRolerService.findAll();
	}
}
