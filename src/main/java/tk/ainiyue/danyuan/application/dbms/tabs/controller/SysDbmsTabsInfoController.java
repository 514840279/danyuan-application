package tk.ainiyue.danyuan.application.dbms.tabs.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;
import tk.ainiyue.danyuan.application.dbms.tabs.service.SysDbmsTabsInfoService;
import tk.ainiyue.danyuan.application.dbms.tabs.vo.SysDbmsTabsColsInfoVo;
import tk.ainiyue.danyuan.application.dbms.tabs.vo.SysDbmsTabsInfoVo;

/**
 * 文件名 ： SysDbmsTabsInfoController.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.table.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:54:36
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysDbmsTabsInfo")
@Api(value = "/SysDbmsTabsInfo", description = "数据库表管理")
public class SysDbmsTabsInfoController {
	//
	private static final Logger		logger	= LoggerFactory.getLogger(SysDbmsTabsInfoController.class);

	//
	@Autowired
	private SysDbmsTabsInfoService	sysDbmsTabsInfoService;

	@Autowired
	JdbcTemplate					jdbcTemplate;

	@ApiOperation(value = "查询前500数据库表管理信息", notes = "")
	@RequestMapping(path = "/findAllTableRow", method = { RequestMethod.GET, RequestMethod.POST })
	public List<Map<String, Object>> listTR(SysDbmsTabsColsInfoVo param) {
		String sql = "Select * from " + param.getSearchText() + " order by datetime desc limit 0,500";
		List<Map<String, Object>> list = jdbcTemplate.queryForList(sql);
		return list;
	}

	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysSeedInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@ApiOperation(value = "查询全部数据库表管理信息", notes = "")
	@RequestMapping(path = "/findAll", method = { RequestMethod.GET, RequestMethod.POST })
	public List<SysDbmsTabsInfo> findAll(@RequestBody SysDbmsTabsInfo sysDbmsTabsInfo) {
		logger.info("findAll", SysDbmsTabsInfoController.class);
		return sysDbmsTabsInfoService.findAll(sysDbmsTabsInfo);
	}

	@ApiOperation(value = "条件查询全部数据库表管理信息", notes = "")
	@RequestMapping(path = "/findAllBySysTableInfo", method = RequestMethod.POST)
	public List<SysDbmsTabsInfo> findAllBySysTableInfo(@RequestBody SysDbmsTabsInfo sysDbmsTabsInfo) {
		logger.error(sysDbmsTabsInfo.toString());
		logger.info("findAll", SysDbmsTabsInfoController.class);
		return sysDbmsTabsInfoService.findAll(sysDbmsTabsInfo);
	}

	@ApiOperation(value = "保存数据库表管理信息", notes = "")
	@RequestMapping(path = "/saveSysTableInfo", method = RequestMethod.POST)
	public String saveSysTableInfo(@RequestBody SysDbmsTabsInfo sysDbmsTabsInfo) {
		logger.info("saveSysTableInfo", SysDbmsTabsInfoController.class);
		sysDbmsTabsInfoService.save(sysDbmsTabsInfo);
		return "1";
	}

	@ApiOperation(value = "删除数据库表管理信息", notes = "")
	@RequestMapping(path = "/deleteSysTableInfo", method = RequestMethod.POST)
	public String deleteSysTableInfo(@RequestBody SysDbmsTabsInfoVo vo) {
		logger.info("deleteSysTableInfo", SysDbmsTabsInfoController.class);
		sysDbmsTabsInfoService.delete(vo.getList());
		return "1";
	}

	@ApiOperation(value = "修改数据库表管理信息", notes = "")
	@RequestMapping(path = "/updateSysTableInfo", method = RequestMethod.POST)
	public String updateSysTableInfo(@RequestBody SysDbmsTabsInfoVo vo) {
		logger.info("updateSysTableInfo", SysDbmsTabsInfoController.class);
		sysDbmsTabsInfoService.save(vo.getList());
		return "1";
	}

	@ApiOperation(hidden = true, value = "/updBefor")
	@RequestMapping(path = "/updBefor", method = RequestMethod.POST)
	public ModelAndView updBefor(HttpServletRequest request) {
		logger.info("updBefor", SysDbmsTabsInfoController.class);
		ModelAndView view = new ModelAndView("dbm/table/index_column");
		SysDbmsTabsInfo info = new SysDbmsTabsInfo();
		info.setUuid(request.getParameter("uuid"));
		info = sysDbmsTabsInfoService.findOne(info);
		view.addObject("sysTableInfo", info);
		return view;
	}

	@ApiOperation(hidden = true, value = "/updBeforEdit")
	@RequestMapping(path = "/updBeforEdit", method = RequestMethod.POST)
	public ModelAndView updBeforEdit(@ModelAttribute SysDbmsTabsInfo info) {
		logger.info("updBeforEdit", SysDbmsTabsInfoController.class);
		ModelAndView view = new ModelAndView("dbm/table/upd_table");
		view.addObject("sysTableInfo", info);
		return view;
	}

}
