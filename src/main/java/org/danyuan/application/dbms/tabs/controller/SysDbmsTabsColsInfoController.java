package org.danyuan.application.dbms.tabs.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsColsInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;
import org.danyuan.application.dbms.tabs.service.SysDbmsTabsColsInfoService;
import org.danyuan.application.dbms.tabs.service.SysDbmsTabsInfoService;
import org.danyuan.application.dbms.tabs.vo.SysDbmsTabsColsInfoVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * 文件名 ： SysDbmsTabsColsInfoController.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.column.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:51:35
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysDbmsTabsColsInfo")
public class SysDbmsTabsColsInfoController {
	//
	private static final Logger			logger	= LoggerFactory.getLogger(SysDbmsTabsColsInfoController.class);
	
	//
	@Autowired
	private SysDbmsTabsColsInfoService	sysDbmsTabsColsInfoService;
	@Autowired
	private SysDbmsTabsInfoService		sysDbmsTabsInfoService;
	
	@Autowired
	JdbcTemplate						jdbcTemplate;
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysSeedInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@RequestMapping(path = "/findAll", method = RequestMethod.POST)
	public Page<SysDbmsTabsColsInfo> findAll(int pageNumber, int pageSize, String searchText, String uuid) {
		logger.info("findAll", SysDbmsTabsColsInfoController.class);
		return sysDbmsTabsColsInfoService.findAllByTableUuid(pageNumber, pageSize, searchText, uuid);
	}
	
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<SysDbmsTabsColsInfo> page(@RequestBody Pagination<SysDbmsTabsColsInfo> vo) {
		logger.info("page", SysDbmsTabsColsInfoController.class);
		return sysDbmsTabsColsInfoService.page(vo);
	}
	
	@RequestMapping(path = "/pagev", method = RequestMethod.POST)
	public List<Map<String, Object>> pagev(@RequestBody Pagination<SysDbmsTabsColsInfo> vo) {
		logger.info("pagev", SysDbmsTabsColsInfoController.class);
		SysDbmsTabsInfo tabs = new SysDbmsTabsInfo();
		tabs.setUuid(vo.getInfo().getTabsUuid());
		tabs = sysDbmsTabsInfoService.findOne(tabs);
		
		// SysDbmsTabsJdbcInfo jdbc = new SysDbmsTabsJdbcInfo();
		// jdbc.setUuid(tabs.getJdbcUuid());
		// jdbc = sysDbmsTabsJdbcInfoService.findOne(jdbc);
		Map<String, String> param = new HashMap<>();
		StringBuilder pageSql = new StringBuilder();
		pageSql.append(" SELECT  ");
		pageSql.append("   UUID() AS 'uuid', ");
		pageSql.append("   '" + tabs.getUuid() + "' as tabsUuid,");
		pageSql.append("   CONCAT(t.`TABLE_SCHEMA`, '.', t.`TABLE_NAME`) AS tabsName, ");
		pageSql.append("   t.`COLUMN_NAME` AS colsName, ");
		pageSql.append("   t.`ORDINAL_POSITION` AS colsOrder, ");
		pageSql.append("   t.`DATA_TYPE` AS colsType, ");
		pageSql.append("   t.`COLUMN_COMMENT` AS colsDesc  ");
		pageSql.append(" FROM  `information_schema`.`COLUMNS` t  ");
		pageSql.append(" WHERE CONCAT(t.`TABLE_SCHEMA`,'.',t.`TABLE_NAME`) = '" + tabs.getTabsName() + "'  ");
		pageSql.append(" ORDER BY t.`ORDINAL_POSITION`  ");
		
		NamedParameterJdbcTemplate template = new NamedParameterJdbcTemplate(jdbcTemplate);
		List<Map<String, Object>> list = template.queryForList(pageSql.toString(), param);
		return list;
		
	}
	
	@RequestMapping(path = "/findAll1", method = RequestMethod.POST)
	public Page<SysDbmsTabsColsInfo> findAll1(@RequestBody SysDbmsTabsColsInfoVo vo) {
		logger.info("findAll", SysDbmsTabsColsInfoController.class);
		return sysDbmsTabsColsInfoService.findAllByTableUuid(vo.getPageNumber(), vo.getPageSize(), vo.getSearchText(), vo.getUuid());
	}
	
	@RequestMapping(path = "/findAllBySysDbmsTabsColsInfo", method = RequestMethod.POST)
	public List<SysDbmsTabsColsInfo> findAllBySysDbmsTabsColsInfo(@RequestBody SysDbmsTabsColsInfo info) {
		logger.info("findAll", SysDbmsTabsColsInfoController.class);
		return sysDbmsTabsColsInfoService.findAllBySysDbmsTabsColsInfo(info);
	}
	
	@RequestMapping(path = "/updBefor", method = RequestMethod.POST)
	public ModelAndView updBefor(@ModelAttribute SysDbmsTabsColsInfo info) {
		System.out.println(info.toString());
		logger.info("updBefor", SysDbmsTabsColsInfoController.class);
		ModelAndView view = new ModelAndView("dbm/table/upd_column");
		view.addObject("SysDbmsTabsColsInfo", info);
		return view;
	}
	
	@RequestMapping(path = "/saveSysDbmsTabsColsInfo", method = RequestMethod.POST)
	public Page<SysDbmsTabsColsInfo> saveSysDbmsTabsColsInfo(@RequestBody SysDbmsTabsColsInfo info) {
		logger.info("saveSysDbmsTabsColsInfo", SysDbmsTabsColsInfoController.class);
		sysDbmsTabsColsInfoService.change(info);
		return sysDbmsTabsColsInfoService.findAllByTableUuid(1, 10, "", info.getTabsUuid());
		
	}
	
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public String save(@RequestBody SysDbmsTabsColsInfo info) {
		logger.info("saveSysDbmsTabsColsInfo", SysDbmsTabsColsInfoController.class);
		sysDbmsTabsColsInfoService.save(info);
		return "1";
		
	}
	
	@RequestMapping(path = "/saveSysColumnVo", method = RequestMethod.POST)
	public Page<SysDbmsTabsColsInfo> saveSysColumnVo(@RequestBody SysDbmsTabsColsInfoVo vo) {
		logger.info("saveSysColumnVo", SysDbmsTabsColsInfoController.class);
		sysDbmsTabsColsInfoService.saveAll(vo.getList());
		return sysDbmsTabsColsInfoService.findAllByTableUuid(1, 20, "", vo.getList().get(0).getTabsUuid());
	}
	
	@RequestMapping(path = "/savev", method = RequestMethod.POST)
	public String savev(@RequestBody SysDbmsTabsColsInfoVo vo) {
		logger.info("savev", SysDbmsTabsColsInfoController.class);
		for (SysDbmsTabsColsInfo info : vo.getList()) {
			info.setUuid(UUID.randomUUID().toString());
			info.setDeleteFlag(0);
			info.setCreateUser(vo.getUsername());
			info.setColsAlign("center");
			info.setColsValign("middle");
			info.setColsSwitchable(true);
			info.setColsWidth(150);
			info.setColsVisible(true);
			info.setCreateUser(vo.getUsername());
			info.setUpdateUser(vo.getUsername());
			sysDbmsTabsColsInfoService.save(info);
		}
		return "1";
	}
	
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(@RequestBody SysDbmsTabsColsInfoVo vo) {
		logger.info("delete", SysDbmsTabsColsInfoController.class);
		sysDbmsTabsColsInfoService.deleteAll(vo.getList());
		return "1";
		
	}
	
}
