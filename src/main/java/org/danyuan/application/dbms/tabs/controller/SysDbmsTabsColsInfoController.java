package org.danyuan.application.dbms.tabs.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsColsInfo;
import org.danyuan.application.dbms.tabs.service.SysDbmsTabsColsInfoService;
import org.danyuan.application.dbms.tabs.vo.SysDbmsTabsColsInfoVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
public class SysDbmsTabsColsInfoController extends BaseControllerImpl<SysDbmsTabsColsInfo> implements BaseController<SysDbmsTabsColsInfo> {
	//
	private static final Logger			logger	= LoggerFactory.getLogger(SysDbmsTabsColsInfoController.class);
	
	//
	@Autowired
	private SysDbmsTabsColsInfoService	sysDbmsTabsColsInfoService;
	
	@Autowired
	JdbcTemplate						jdbcTemplate;
	
	@GetMapping("/detail/{uuid}")
	public ModelAndView name(@PathVariable("uuid") String uuid) {
		logger.info("detail", SysDbmsTabsColsInfoController.class);
		ModelAndView modelAndView = new ModelAndView("dbms/tabs/sysdbmstabscolsinfodetail");
		SysDbmsTabsColsInfo info = new SysDbmsTabsColsInfo();
		info.setUuid(uuid);
		modelAndView.addObject("sysDbmsTabsColsInfo", sysDbmsTabsColsInfoService.findOne(info));
		return modelAndView;
	}
	
	@RequestMapping(path = "/pagev", method = RequestMethod.POST)
	public List<SysDbmsTabsColsInfo> pagev(@RequestBody Pagination<SysDbmsTabsColsInfo> vo) throws SQLException {
		logger.info("pagev", SysDbmsTabsColsInfoController.class);
		
		return sysDbmsTabsColsInfoService.pagev(vo.getInfo().getTabsUuid());
		
	}
	
	@RequestMapping(path = "/findAllBySysDbmsTabsColsInfo", method = RequestMethod.POST)
	public List<SysDbmsTabsColsInfo> findAllBySysDbmsTabsColsInfo(@RequestBody SysDbmsTabsColsInfo info) {
		logger.info("findAll", SysDbmsTabsColsInfoController.class);
		return sysDbmsTabsColsInfoService.findAllBySysDbmsTabsColsInfo(info);
	}
	
	@RequestMapping(path = "/updBefor", method = RequestMethod.POST)
	public ModelAndView updBefor(@ModelAttribute SysDbmsTabsColsInfo info) {
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
	
}
