package org.danyuan.application.dbms.tabs.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;
import org.danyuan.application.dbms.tabs.service.SysDbmsTabsInfoService;
import org.danyuan.application.dbms.tabs.vo.SysDbmsTabsInfoVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

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
public class SysDbmsTabsInfoController {
	//
	private static final Logger		logger	= LoggerFactory.getLogger(SysDbmsTabsInfoController.class);
	
	//
	@Autowired
	private SysDbmsTabsInfoService	sysDbmsTabsInfoService;
	
	@Autowired
	JdbcTemplate					jdbcTemplate;
	
	@RequestMapping(path = "/pagev", method = { RequestMethod.GET, RequestMethod.POST })
	public List<SysDbmsTabsInfo> pagev(@RequestBody SysDbmsTabsInfoVo vo) throws SQLException {
		logger.info("pagev", SysDbmsTabsInfoController.class);
		// Map<String, DataSource> multiDatasource = multiDatasourceConfig.multiDatasource();
		List<SysDbmsTabsInfo> list = new ArrayList<>();
		
		StringBuilder sBuilder = new StringBuilder();
		sBuilder.append(" select  ");
		sBuilder.append("  t.owner||'_'||t.table_name as uuid, ");
		sBuilder.append("  '' as jdbcUuid,  ");
		sBuilder.append("  'WEIFENLEI' as typeUuid, ");
		sBuilder.append("  t1.comments as tabsDesc, ");
		sBuilder.append("  t.num_rows as tabsRows, ");
		sBuilder.append("  t.blocks*8*1024 as tabSpace, ");
		sBuilder.append("  rownum as tabsOrder, ");
		sBuilder.append("  0 as deleteFlag, ");
		sBuilder.append("  'oracle' as dbType, ");
		sBuilder.append("  t.owner||'.'||t.table_name  as tabsName  ,");
		sBuilder.append("  ''  as addrUUid  ");
		sBuilder.append("  from all_tables  t ");
		sBuilder.append(" left join all_tab_comments  t1   on t1.owner = t.owner   and t1.table_name=t.table_name ");
		sBuilder.append("  where  t.owner = 'WTH' ");
		sBuilder.append("  AND t.owner||'.'||t.table_name not in(");
		sBuilder.append("    select tabs_name from sys_dbms_tabs_info ");
		
		sBuilder.append(") ");
		
		// list = template.query(sBuilder.toString(), new BeanPropertyRowMapper<>(SysDbmsTabsInfo.class));
		List<Map<String, Object>> list2 = jdbcTemplate.queryForList(sBuilder.toString());
		for (Map<String, Object> map : list2) {
			SysDbmsTabsInfo info = new SysDbmsTabsInfo();
			info.setUuid(map.get("UUID").toString());
			info.setTypeUuid(map.get("TYPEUUID").toString());
			info.setTabsDesc(map.get("TABSDESC") == null ? null : map.get("TABSDESC").toString());
			info.setTabsRows(map.get("TABSROWS") == null ? null : Integer.valueOf(map.get("TABSROWS").toString()));
			info.setTabsSpace(map.get("TABSPACE") == null ? null : map.get("TABSPACE").toString());
			info.setTabsOrder(map.get("TABSORDER") == null ? null : Integer.valueOf(map.get("TABSORDER").toString()));
			info.setDeleteFlag(map.get("DELETEFLAG") == null ? null : Integer.valueOf(map.get("DELETEFLAG").toString()));
			info.setDbType(map.get("DBTYPE") == null ? null : map.get("DBTYPE").toString());
			info.setTabsName(map.get("TABSNAME").toString());
			list.add(info);
		}
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
	@RequestMapping(path = "/page", method = { RequestMethod.GET, RequestMethod.POST })
	public Page<SysDbmsTabsInfo> page(@RequestBody SysDbmsTabsInfoVo vo) {
		logger.info("page", SysDbmsTabsInfoController.class);
		return sysDbmsTabsInfoService.page(vo);
	}
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysSeedInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@RequestMapping(path = "/findAll", method = { RequestMethod.GET, RequestMethod.POST })
	public List<SysDbmsTabsInfo> findAll() {
		logger.info("findAll", SysDbmsTabsInfoController.class);
		List<SysDbmsTabsInfo> list = sysDbmsTabsInfoService.findAll();
		return list;
	}
	
	@RequestMapping(path = "/findAllBySysTableInfo", method = RequestMethod.POST)
	public List<SysDbmsTabsInfo> findAllBySysTableInfo(@RequestBody SysDbmsTabsInfo sysDbmsTabsInfo) {
		logger.error(sysDbmsTabsInfo.toString());
		logger.info("findAll", SysDbmsTabsInfoController.class);
		return sysDbmsTabsInfoService.findAll(sysDbmsTabsInfo);
	}
	
	@RequestMapping(path = "/findAllBySysTableInfoAndUsername", method = RequestMethod.POST)
	public List<SysDbmsTabsInfo> findAllBySysTableInfoAndUsername(@RequestBody SysDbmsTabsInfo sysDbmsTabsInfo) {
		logger.error(sysDbmsTabsInfo.toString());
		logger.info("findAll", SysDbmsTabsInfoController.class);
		return sysDbmsTabsInfoService.findAllBySysTableInfoAndUsername(sysDbmsTabsInfo);
	}
	
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public String save(@RequestBody SysDbmsTabsInfo sysDbmsTabsInfo) {
		logger.info("save", SysDbmsTabsInfoController.class);
		if (sysDbmsTabsInfo.getUuid() == null || "".equals(sysDbmsTabsInfo.getUuid())) {
			sysDbmsTabsInfo.setUuid(UUID.randomUUID().toString());
		}
		sysDbmsTabsInfoService.save(sysDbmsTabsInfo);
		return "1";
	}
	
	@RequestMapping(path = "/change", method = RequestMethod.POST)
	public SysDbmsTabsInfo change(@RequestBody SysDbmsTabsInfoVo vo) {
		logger.info("save", SysDbmsTabsInfoController.class);
		sysDbmsTabsInfoService.change(vo);
		return vo.getNow();
	}
	
	@RequestMapping(path = "/savev", method = RequestMethod.POST)
	public String save(@RequestBody SysDbmsTabsInfoVo vo) throws SQLException {
		logger.info("savev", SysDbmsTabsInfoController.class);
		for (SysDbmsTabsInfo info : vo.getList()) {
			SysDbmsTabsInfo infot = new SysDbmsTabsInfo();
			infot.setTabsName(info.getTabsName());
			infot = sysDbmsTabsInfoService.findOne(infot);
			if (infot == null) {
				info.setDeleteFlag(0);
				info.setDissql(0);
				info.setCreateUser(vo.getUsername());
				info.setUpdateUser(vo.getUsername());
				sysDbmsTabsInfoService.savev(info);
			}
		}
		return "1";
	}
	
	@RequestMapping(path = "/drop", method = RequestMethod.POST)
	public String drop(@RequestBody SysDbmsTabsInfoVo vo) {
		logger.info("drop", SysDbmsTabsInfoController.class);
		sysDbmsTabsInfoService.drop(vo.getList());
		return "1";
	}
	
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(@RequestBody SysDbmsTabsInfoVo vo) {
		logger.info("delete", SysDbmsTabsInfoController.class);
		sysDbmsTabsInfoService.deleteAll(vo.getList());
		return "1";
	}
	
	@RequestMapping(path = "/updateSysTableInfo", method = RequestMethod.POST)
	public String updateSysTableInfo(@RequestBody SysDbmsTabsInfoVo vo) {
		logger.info("updateSysTableInfo", SysDbmsTabsInfoController.class);
		sysDbmsTabsInfoService.saveAll(vo.getList());
		return "1";
	}
	
	@RequestMapping(path = "/updBefor", method = RequestMethod.GET)
	public ModelAndView updBefor(HttpServletRequest request) {
		logger.info("updBefor", SysDbmsTabsInfoController.class);
		ModelAndView view = new ModelAndView("dbms/table/index_column");
		SysDbmsTabsInfo info = new SysDbmsTabsInfo();
		info.setUuid(request.getParameter("uuid"));
		info = sysDbmsTabsInfoService.findOne(info);
		view.addObject("sysTableInfo", info);
		return view;
	}
	
	@RequestMapping(path = "/updBeforEdit", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView updBeforEdit(HttpServletRequest request) {
		logger.info("updBeforEdit", SysDbmsTabsInfoController.class);
		ModelAndView view = new ModelAndView("dbms/table/upd_table");
		SysDbmsTabsInfo info = new SysDbmsTabsInfo();
		if (request.getParameter("uuid") != null || !"".equals(request.getParameter("uuid"))) {
			info.setUuid(request.getParameter("uuid"));
			info = sysDbmsTabsInfoService.findOne(info);
		}
		view.addObject("sysTableInfo", info);
		return view;
	}
	
}
