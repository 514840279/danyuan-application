package tk.ainiyue.danyuan.application.crawler.param.controller;

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
import tk.ainiyue.danyuan.application.crawler.param.po.SysRulerInfo;
import tk.ainiyue.danyuan.application.crawler.param.service.SysRulerService;
import tk.ainiyue.danyuan.application.crawler.param.vo.SysRulerVo;

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
@RequestMapping("/sysRuler")
@Api(value = "/sysRuler", description = "采集规则管理")
public class SysRulerController {
	//
	private static final Logger	logger = LoggerFactory.getLogger(SysRulerController.class);
	//
	@Autowired
	private SysRulerService		sysSeedRulerService;

	@ApiOperation(value = "查询全部的规则信息", notes = "")
	@RequestMapping(path = "/findAll", method = RequestMethod.POST)
	public List<SysRulerInfo> findAll(String uuid, int pageNumber, int pageSize, String searchText) {
		logger.info("findAll", SysRulerController.class);
		return sysSeedRulerService.findAllBySeedUuid(uuid);
	}

	@ApiOperation(value = "通过uuid查询规则信息", notes = "")
	@RequestMapping(path = "/findAllByUuid", method = RequestMethod.POST)
	public List<SysRulerInfo> findAll(@RequestBody String uuid) {
		logger.info("findAll", SysRulerController.class);
		List<SysRulerInfo> list = sysSeedRulerService.findAllBySeedUuid(uuid.replace("\"", ""));
		return list;
	}

	@ApiOperation(value = "添加规则信息", notes = "")
	@RequestMapping(path = "/addSysRuler", method = RequestMethod.POST)
	public SysRulerInfo addSysRuler(@RequestBody SysRulerInfo rolerInfo) {
		logger.info("addSysRuler", SysRulerController.class);
		sysSeedRulerService.addSysRuler(rolerInfo);
		return rolerInfo;
	}

	@ApiOperation(value = "删除规则信息", notes = "")
	@RequestMapping(path = "/deleteSysRulerInfo", method = RequestMethod.POST)
	public List<SysRulerInfo> deleteSysRulerInfo(@RequestBody SysRulerVo vo) {
		logger.error(vo.getList().get(0).toString());
		logger.info("deleteSysRulerInfo", SysRulerController.class);
		sysSeedRulerService.deleteSysRulerInfo(vo.getList());
		return sysSeedRulerService.findAllBySeedUuid(vo.getUuid());
	}

}
