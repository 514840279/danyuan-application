package tk.ainiyue.danyuan.application.softm.syslog.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.softm.syslog.po.SysComnLogs;
import tk.ainiyue.danyuan.application.softm.syslog.po.VSysComnLogs;
import tk.ainiyue.danyuan.application.softm.syslog.service.SysComnLogsService;
import tk.ainiyue.danyuan.application.softm.syslog.vo.SysComnLogsVo;

/**
 * 文件名 ： SysComnLogsController.java
 * 包 名 ： com.shumeng.application.softm.syslog.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月23日 下午4:26:31
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysComnLogs")
@Api(value = "/SysComnLogs", description = "索引字典")
public class SysComnLogsController {
	//
	private static final Logger	logger	= LoggerFactory.getLogger(SysComnLogsController.class);
	
	@Autowired
	SysComnLogsService			sysComnLogsService;
	
	@ApiOperation(value = "查询错误信息", notes = "")
	@RequestMapping(path = "/findAllError", method = RequestMethod.POST)
	public Page<SysComnLogs> findAllError(@RequestBody SysComnLogsVo vo) {
		logger.info("findAllError", SysComnLogsController.class);
		return sysComnLogsService.findAllError(vo);
		
	}
	
	@ApiOperation(value = "查询全部信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<SysComnLogs> page(@RequestBody SysComnLogsVo vo) {
		logger.info("findAllError", SysComnLogsController.class);
		return sysComnLogsService.findAll(vo);
		
	}
	
	@ApiOperation(value = "查询响应时间信息", notes = "")
	@RequestMapping(path = "/findAllLongtime", method = RequestMethod.POST)
	public Page<SysComnLogs> findAllLongtime(@RequestBody SysComnLogsVo vo) {
		logger.info("findAllLongtime", SysComnLogsController.class);
		return sysComnLogsService.findAllLongtime(vo);
		
	}
	
	@ApiOperation(value = "查询综合查询信息", notes = "")
	@RequestMapping(path = "/findAllZhcx", method = RequestMethod.POST)
	public Page<VSysComnLogs> findAllZhcx(@RequestBody SysComnLogsVo vo) {
		logger.info("findAllZhcx", SysComnLogsController.class);
		return sysComnLogsService.findAllZhcx(vo);
		
	}
	
}
