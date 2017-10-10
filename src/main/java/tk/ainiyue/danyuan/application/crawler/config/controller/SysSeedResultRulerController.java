package tk.ainiyue.danyuan.application.crawler.config.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.crawler.config.po.SysSeedResultRulerInfo;
import tk.ainiyue.danyuan.application.crawler.config.service.SysSeedResultRulerService;
import tk.ainiyue.danyuan.application.crawler.config.vo.SysSeedResultRulerVo;

/**
 * 文件名 ： SysColumnController.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.column.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:51:35
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysSeedResultRulerInfo")
@Api(value = "/sysSeedResultRulerInfo", description = "采集配置管理")
public class SysSeedResultRulerController {
	//
	private static final Logger		  logger = LoggerFactory.getLogger(SysSeedResultRulerController.class);

	//
	@Autowired
	private SysSeedResultRulerService sysSeedResultRulerService;

	@ApiOperation(value = "查询全部配置规则信息", notes = "")
	@RequestMapping(path = "/findAllBySysSeedResultRulerInfo", method = RequestMethod.POST)
	public List<SysSeedResultRulerInfo> findAllBySysSeedResultRulerInfo(@RequestBody SysSeedResultRulerInfo info) {
		logger.info("findAll", SysSeedResultRulerController.class);
		return sysSeedResultRulerService.findAllBySysSeedResultRulerInfo(info);
	}

	@ApiOperation(value = "保存配置规则信息", notes = "")
	@RequestMapping(path = "/saveSysSeedResultRulerInfo", method = RequestMethod.POST)
	public List<SysSeedResultRulerInfo> saveSysSeedResultRulerInfo(@RequestBody SysSeedResultRulerVo vo) {
		logger.info("findAll", SysSeedResultRulerController.class);
		return sysSeedResultRulerService.saveSysSeedResultRulerInfo(vo);
	}

}
