package tk.ainiyue.danyuan.application.dbm.table.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.dbm.column.vo.SysColumnVo;
import tk.ainiyue.danyuan.application.dbm.table.po.SysTableInfo;
import tk.ainiyue.danyuan.application.dbm.table.service.SysTableService;
import tk.ainiyue.danyuan.application.dbm.table.vo.SysTableVo;

/**
 * 文件名 ： SysTableController.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.table.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:54:36
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysTableInfo")
@Api(value = "/sysTableInfo", description = "数据库表管理")
public class SysTableController {
	//
	private static final Logger	logger = LoggerFactory.getLogger(SysTableController.class);

	//
	@Autowired
	private SysTableService		sysTableService;
	
	@Autowired
	JdbcTemplate				jdbcTemplate;

	@ApiOperation(value = "查询前500数据库表管理信息", notes = "")
	@RequestMapping(path = "/findAllTableRow", method = { RequestMethod.GET, RequestMethod.POST })
	public List<Map<String, Object>> listTR(SysColumnVo param) {
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
	public List<SysTableInfo> findAll() {
		logger.info("findAll", SysTableController.class);
		return sysTableService.findAll();
	}

	@ApiOperation(value = "条件查询全部数据库表管理信息", notes = "")
	@RequestMapping(path = "/findAllBySysTableInfo", method = RequestMethod.POST)
	public List<SysTableInfo> findAllBySysTableInfo(@RequestBody SysTableInfo sysTableInfo) {
		logger.error(sysTableInfo.toString());
		logger.info("findAll", SysTableController.class);
		return sysTableService.findAll(sysTableInfo);
	}

	@ApiOperation(value = "保存数据库表管理信息", notes = "")
	@RequestMapping(path = "/saveSysTableInfo", method = RequestMethod.POST)
	public List<SysTableInfo> saveSysTableInfo(@RequestBody SysTableInfo sysTableInfo) {
		logger.info("saveSysTableInfo", SysTableController.class);
		return sysTableService.save(sysTableInfo);
	}
	
	@ApiOperation(value = "删除数据库表管理信息", notes = "")
	@RequestMapping(path = "/deleteSysTableInfo", method = RequestMethod.POST)
	public List<SysTableInfo> deleteSysTableInfo(@RequestBody SysTableVo vo) {
		logger.info("deleteSysTableInfo", SysTableController.class);
		return sysTableService.deleteSysTableInfo(vo);
	}
	
	@ApiOperation(hidden = true, value = "/updBefor")
	@RequestMapping(path = "/updBefor", method = RequestMethod.POST)
	public ModelAndView updBefor(HttpServletRequest request) {
		logger.info("updBefor", SysTableController.class);
		ModelAndView view = new ModelAndView("dbm/table/upd_table");
		SysTableInfo info = new SysTableInfo();
		info = sysTableService.findSysTableInofByUuid(request.getParameter("uuid"));
		view.addObject("sysTableInfo", info);
		return view;
	}

}
