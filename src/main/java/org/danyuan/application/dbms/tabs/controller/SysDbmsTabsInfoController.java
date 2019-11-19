package org.danyuan.application.dbms.tabs.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.danyuan.application.common.config.MultiDatasourceConfig;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsJdbcInfo;
import org.danyuan.application.dbms.tabs.service.SysDbmsTabsInfoService;
import org.danyuan.application.dbms.tabs.service.SysDbmsTabsJdbcInfoService;
import org.danyuan.application.dbms.tabs.vo.SysDbmsTabsInfoVo;
import org.danyuan.application.dbms.tabs.vo.SysDbmsTabsJdbcInfoVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
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
	private static final Logger			logger	= LoggerFactory.getLogger(SysDbmsTabsInfoController.class);

	//
	@Autowired
	private SysDbmsTabsInfoService		sysDbmsTabsInfoService;
	@Autowired
	private SysDbmsTabsJdbcInfoService	sysDbmsTabsJdbcInfoService;

	@Autowired
	JdbcTemplate						jdbcTemplate;

	@Autowired
	MultiDatasourceConfig				multiDatasourceConfig;

	@RequestMapping(path = "/pagev", method = { RequestMethod.GET, RequestMethod.POST })
	public List<SysDbmsTabsInfo> pagev(@RequestBody SysDbmsTabsJdbcInfoVo vo) throws SQLException {
		logger.info("pagev", SysDbmsTabsInfoController.class);
		Map<String, DataSource> multiDatasource = multiDatasourceConfig.multiDatasource();
		try {
			
			List<SysDbmsTabsInfo> list = null;
			SysDbmsTabsJdbcInfo info = sysDbmsTabsJdbcInfoService.findOne(vo.getInfo());
			DataSource connection = multiDatasource.get(info.getUuid());
			JdbcTemplate jdbcTemplate = new JdbcTemplate(connection);
			NamedParameterJdbcTemplate template = new NamedParameterJdbcTemplate(jdbcTemplate);
			if (info != null && info.getType().equals("mysql")) {
				// List<Map<String, Object>> list = jdbcTemplate.queryForList(sql);
				StringBuilder pageSql = new StringBuilder();
				pageSql.append(" SELECT UUID() AS uuid,   ");
				pageSql.append("  '" + info.getUuid() + "' as jdbc_uuid,  ");
				pageSql.append(" CONCAT(T.`TABLE_SCHEMA`,'.' ,T.`TABLE_NAME`) AS tabs_name,");
				pageSql.append("  'WEIFENLEI' as type_uuid, ");
				pageSql.append(" T.`TABLE_COMMENT`  AS tabs_desc, ");
				pageSql.append(" 'mysql'  AS db_type, ");
				pageSql.append(" T.`TABLE_ROWS` AS tabs_rows ");
				pageSql.append(" FROM `INFORMATION_SCHEMA`.`TABLES` T ");
				pageSql.append(" WHERE T.`TABLE_SCHEMA` = '" + ("".equals(vo.getSearchText()) ? info.getDatabaseName() : vo.getSearchText().toUpperCase()) + "'");
				pageSql.append(" AND NOT EXISTS ( ");
				pageSql.append("	SELECT 1 FROM application.`sys_dbms_tabs_info` a ");
				pageSql.append("	WHERE CONCAT(    T.`TABLE_SCHEMA`,    '.',    T.`TABLE_NAME`  ) = a.`tabs_name` ");
				pageSql.append(" )");
				pageSql.append(" order by CONCAT(T.`TABLE_SCHEMA`,'.' ,T.`TABLE_NAME`),TABLE_ROWS desc");
				
				list = template.getJdbcOperations().query(pageSql.toString(), new BeanPropertyRowMapper<>(SysDbmsTabsInfo.class));
			} else {
				
				StringBuilder sBuilder = new StringBuilder();
				sBuilder.append(" select  ");
				sBuilder.append("  t.owner||'_'||t.table_name as UUID, ");
				sBuilder.append("  '" + info.getUuid() + "' as jdbc_uuid,  ");
				sBuilder.append("  'WEIFENLEI' as type_uuid, ");
				sBuilder.append("  t1.comments as tabs_desc, ");
				sBuilder.append("  t.num_rows as tabs_rows, ");
				sBuilder.append("  t.blocks*8*1024 as tab_space, ");
				sBuilder.append("  rownum as tabs_order, ");
				sBuilder.append("  '0' as delete_flag, ");
				sBuilder.append("  'oracle' as db_type, ");
				sBuilder.append("  t.owner||'.'||t.table_name  as tabs_name  ,");
				sBuilder.append("  '" + info.getUuid() + "'  as addr_uUid  ");
				sBuilder.append("  from all_tables  t ");
				sBuilder.append(" left join all_tab_comments  t1   on t1.owner = t.owner   and t1.table_name=t.table_name ");
				sBuilder.append("  where  t.owner = '" + info.getUsername().toUpperCase() + "' ");
				
				list = template.getJdbcOperations().query(sBuilder.toString(), new BeanPropertyRowMapper<>(SysDbmsTabsInfo.class));
				
			}

			return list;
		} finally {
			multiDatasourceConfig.destroyMultiDatasource(multiDatasource);
		}
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

		return sysDbmsTabsInfoService.findAll();
	}

	@RequestMapping(path = "/findAllBySysTableInfo", method = RequestMethod.POST)
	public List<SysDbmsTabsInfo> findAllBySysTableInfo(@RequestBody SysDbmsTabsInfo sysDbmsTabsInfo) {
		logger.error(sysDbmsTabsInfo.toString());
		logger.info("findAll", SysDbmsTabsInfoController.class);
		return sysDbmsTabsInfoService.findAll(sysDbmsTabsInfo);
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
	public String change(@RequestBody SysDbmsTabsInfoVo vo) {
		logger.info("save", SysDbmsTabsInfoController.class);
		sysDbmsTabsInfoService.change(vo);
		return "1";
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

	@RequestMapping(path = "/updBefor", method = RequestMethod.POST)
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
