package tk.ainiyue.danyuan.application.crawler.param.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import tk.ainiyue.danyuan.application.crawler.param.po.SysSeedRolerColumInfo;
import tk.ainiyue.danyuan.application.crawler.param.service.SysSeedRolerColumService;

/**
 * 文件名 ： SysSeedRolerColumController.java
 * 包 名 ： tk.ainiyue.danyuan.application.crawler.param.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年7月20日 下午4:47:56
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysRolerColum")
public class SysSeedRolerColumController {
	//
	private static final Logger		 logger	= LoggerFactory.getLogger(SysSeedRolerColumController.class);
	//
	@Autowired
	private SysSeedRolerColumService sysSeedRolerColumService;
	
	@RequestMapping("/findAll")
	public List<SysSeedRolerColumInfo> findAll() {
		logger.info("findAll", SysSeedRolerColumController.class);
		return sysSeedRolerColumService.findAll();
	}
}
