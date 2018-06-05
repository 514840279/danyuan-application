package tk.ainiyue.danyuan.application.dbms.tabs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.dbms.tabs.po.SysDbmsTabsJdbcInfo;
import tk.ainiyue.danyuan.application.dbms.tabs.service.SysDbmsTabsJdbcInfoService;
import tk.ainiyue.danyuan.application.dbms.tabs.vo.SysDbmsTabsJdbcInfoVo;

/**
 * 文件名 ： SysDbmsTabsJdbcInfoController.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.addr.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:46:35
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysDbmsTabsJdbcInfo")
@Api(value = "/SysDbmsTabsJdbcInfo", description = "数据库管理")
public class SysDbmsTabsJdbcInfoController {
	//
	private static final Logger			logger	= LoggerFactory.getLogger(SysDbmsTabsJdbcInfoController.class);
	
	@Autowired
	private SysDbmsTabsJdbcInfoService	sysDbmsTabsJdbcInfoService;
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysSeedInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@ApiOperation(value = "查询全部数据库管理信息", notes = "")
	@RequestMapping(path = "/findAll", method = { RequestMethod.GET, RequestMethod.POST })
	public List<SysDbmsTabsJdbcInfo> findAll() {
		logger.info("findAll", SysDbmsTabsJdbcInfoController.class);
		return sysDbmsTabsJdbcInfoService.findAll();
	}

	@ApiOperation(value = "添加数据库管理信息", notes = "")
	@RequestMapping(path = "/addSysDbmsTabsJdbcInfo", method = RequestMethod.POST)
	public List<SysDbmsTabsJdbcInfo> addSysDbmsTabsJdbcInfo(@RequestBody SysDbmsTabsJdbcInfo SysDbmsTabsJdbcInfo) {
		logger.info("findAll", SysDbmsTabsJdbcInfoController.class);
		sysDbmsTabsJdbcInfoService.save(SysDbmsTabsJdbcInfo);
		return sysDbmsTabsJdbcInfoService.findAll();
	}
	
	@ApiOperation(hidden = true, value = "/addBefor")
	@RequestMapping(path = "/addBefor", method = RequestMethod.GET)
	public ModelAndView addBefor(HttpServletRequest request) {
		SysDbmsTabsJdbcInfo info = new SysDbmsTabsJdbcInfo();
		info.setUuid(request.getParameter("uuid"));
		info.setIp(request.getParameter("address"));
		info.setDatabaseName(request.getParameter("databaseName"));
		info.setDeleteFlag(Integer.parseInt(request.getParameter("deleteFlag")));
		info.setDiscription(request.getParameter("discription"));
		info.setDriver(request.getParameter("driver"));
		info.setUsername(request.getParameter("username"));
		info.setPassword(request.getParameter("password"));
		info.setPort(request.getParameter("port"));
		info.setType(request.getParameter("type"));
		logger.info("addBefor", SysDbmsTabsJdbcInfoController.class);
		ModelAndView view = new ModelAndView("dbm/addr/add_addr");
		view.addObject("SysDbmsTabsJdbcInfo", info);
		return view;
	}
	
	@ApiOperation(value = "删除数据库管理信息", notes = "")
	@RequestMapping(path = "/deleteSysDbmsTabsJdbcInfo", method = RequestMethod.POST)
	public List<SysDbmsTabsJdbcInfo> deleteSysDbmsTabsJdbcInfo(@RequestBody SysDbmsTabsJdbcInfoVo vo) {
		logger.error(vo.getList().get(0).toString());
		logger.info("deleteSysDbmsTabsJdbcInfo", SysDbmsTabsJdbcInfoController.class);
		sysDbmsTabsJdbcInfoService.deleteSysDbmsTabsJdbcInfo(vo.getList());
		return sysDbmsTabsJdbcInfoService.findAll();
	}

}
