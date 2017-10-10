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
import tk.ainiyue.danyuan.application.crawler.param.po.SysSeedRulerColumInfo;
import tk.ainiyue.danyuan.application.crawler.param.service.SysSeedRulerColumService;
import tk.ainiyue.danyuan.application.crawler.param.vo.SysSeedRulerColumVo;

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
@RequestMapping("/sysRulerColum")
@Api(value = "/sysRuler", description = "采集参数管理")
public class SysSeedRulerColumController {
	//
	private static final Logger		 logger	= LoggerFactory.getLogger(SysSeedRulerColumController.class);
	//
	@Autowired
	private SysSeedRulerColumService sysSeedRulerColumService;

	@ApiOperation(value = "查询全部参数信息", notes = "")
	@RequestMapping(path = "/findAll", method = RequestMethod.POST)
	public List<SysSeedRulerColumInfo> findAll(String uuid, int pageNumber, int pageSize, String searchText) {
		logger.info("findAll", SysSeedRulerColumController.class);
		return sysSeedRulerColumService.findAllByRulerUuid(uuid);
	}

	@ApiOperation(value = "通过uuid查询全部参数信息", notes = "")
	@RequestMapping(path = "/findAllByRulerUuid", method = RequestMethod.POST)
	public List<SysSeedRulerColumInfo> findAllByRulerUuid(@RequestBody String uuid) {
		logger.info("findAllByRulerUuid", SysSeedRulerColumController.class);
		return sysSeedRulerColumService.findAllByRulerUuid(uuid.replace("\"", ""));
	}

	@ApiOperation(value = "添加参数信息", notes = "")
	@RequestMapping(path = "/addSysRulerColum", method = RequestMethod.POST)
	public SysSeedRulerColumInfo addSysRulerColum(@RequestBody SysSeedRulerColumInfo info) {
		logger.info("addSysRulerColum", SysSeedRulerColumController.class);
		sysSeedRulerColumService.addSysRulerColum(info);
		return info;
	}

	@ApiOperation(value = "删除参数信息", notes = "")
	@RequestMapping(path = "/deleteSysRulerColum", method = RequestMethod.POST)
	public List<SysSeedRulerColumInfo> deleteSysRulerColum(@RequestBody SysSeedRulerColumVo vo) {
		logger.info("deleteSysRulerColum", SysSeedRulerColumController.class);
		sysSeedRulerColumService.deleteSysRulerInfo(vo.getList());
		return sysSeedRulerColumService.findAllByRulerUuid(vo.getUuid());
	}
}
