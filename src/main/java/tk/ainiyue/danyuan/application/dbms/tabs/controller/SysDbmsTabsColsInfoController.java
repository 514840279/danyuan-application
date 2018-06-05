package tk.ainiyue.danyuan.application.dbms.tabs.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.dbms.tabs.po.SysDbmsTabsColsInfo;
import tk.ainiyue.danyuan.application.dbms.tabs.service.SysDbmsTabsColsInfoService;
import tk.ainiyue.danyuan.application.dbms.tabs.vo.SysDbmsTabsColsInfoVo;

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
@Api(value = "/SysDbmsTabsColsInfo", description = "数据库字段管理")
public class SysDbmsTabsColsInfoController {
	//
	private static final Logger			logger	= LoggerFactory.getLogger(SysDbmsTabsColsInfoController.class);

	//
	@Autowired
	private SysDbmsTabsColsInfoService	sysDbmsTabsColsInfoService;
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysSeedInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@ApiOperation(value = "分页查询数据库字段管理信息", notes = "")
	@RequestMapping(path = "/findAll", method = RequestMethod.POST)
	public Page<SysDbmsTabsColsInfo> findAll(int pageNumber, int pageSize, String searchText, String uuid) {
		logger.info("findAll", SysDbmsTabsColsInfoController.class);
		return sysDbmsTabsColsInfoService.findAllByTableUuid(pageNumber, pageSize, searchText, uuid);
	}
	
	@ApiOperation(value = "分页查询符合名称或uuid的库字段管理信息", notes = "")
	@RequestMapping(path = "/findAll1", method = RequestMethod.POST)
	public Page<SysDbmsTabsColsInfo> findAll1(@RequestBody SysDbmsTabsColsInfoVo vo) {
		logger.info("findAll", SysDbmsTabsColsInfoController.class);
		return sysDbmsTabsColsInfoService.findAllByTableUuid(vo.getPageNumber(), vo.getPageSize(), vo.getSearchText(), vo.getUuid());
	}

	@ApiOperation(value = "分页查询符合名称或uuid的库字段管理信息", notes = "")
	@RequestMapping(path = "/findAllBySysDbmsTabsColsInfo", method = RequestMethod.POST)
	public List<SysDbmsTabsColsInfo> findAllBySysDbmsTabsColsInfo(@RequestBody SysDbmsTabsColsInfo info) {
		logger.info("findAll", SysDbmsTabsColsInfoController.class);
		return sysDbmsTabsColsInfoService.findAllBySysDbmsTabsColsInfo(info);
	}
	
	@ApiOperation(hidden = true, value = "/updBefor")
	@RequestMapping(path = "/updBefor", method = RequestMethod.POST)
	public ModelAndView updBefor(@ModelAttribute SysDbmsTabsColsInfo info) {
		System.out.println(info.toString());
		logger.info("updBefor", SysDbmsTabsColsInfoController.class);
		ModelAndView view = new ModelAndView("dbm/table/upd_column");
		view.addObject("SysDbmsTabsColsInfo", info);
		return view;
	}

	@ApiOperation(value = "分页查询符合库字段管理信息", notes = "")
	@RequestMapping(path = "/saveSysDbmsTabsColsInfo", method = RequestMethod.POST)
	public Page<SysDbmsTabsColsInfo> saveSysDbmsTabsColsInfo(@RequestBody SysDbmsTabsColsInfo info) {
		logger.info("saveSysDbmsTabsColsInfo", SysDbmsTabsColsInfoController.class);
		sysDbmsTabsColsInfoService.save(info);
		return sysDbmsTabsColsInfoService.findAllByTableUuid(1, 10, "", info.getTabsUuid());
		
	}

	@ApiOperation(value = "分页查询符合库字段管理信息", notes = "")
	@RequestMapping(path = "/saveSysColumnVo", method = RequestMethod.POST)
	public Page<SysDbmsTabsColsInfo> saveSysColumnVo(@RequestBody SysDbmsTabsColsInfoVo vo) {
		logger.error(vo.toString(), SysDbmsTabsColsInfoController.class);
		logger.info("saveSysColumnVo", SysDbmsTabsColsInfoController.class);
		sysDbmsTabsColsInfoService.save(vo.getList());
		return sysDbmsTabsColsInfoService.findAllByTableUuid(1, 20, "", vo.getList().get(0).getTabsUuid());
		
	}
	
	@ApiOperation(value = "删除库字段管理信息", notes = "")
	@RequestMapping(path = "/deleteSysDbmsTabsColsInfo", method = RequestMethod.POST)
	public Page<SysDbmsTabsColsInfo> deleteSysDbmsTabsColsInfo(@RequestBody SysDbmsTabsColsInfoVo vo) {
		logger.info("deleteSysDbmsTabsColsInfo", SysDbmsTabsColsInfoController.class);
		sysDbmsTabsColsInfoService.delete(vo.getList());
		return sysDbmsTabsColsInfoService.findAllByTableUuid(1, 10, "", vo.getList().get(0).getTabsUuid());
		
	}
	
}
