package tk.ainiyue.danyuan.application.dbm.column.controller;

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
import tk.ainiyue.danyuan.application.dbm.column.po.SysColumnInfo;
import tk.ainiyue.danyuan.application.dbm.column.service.SysColumnService;
import tk.ainiyue.danyuan.application.dbm.column.vo.SysColumnVo;

/**
 * 文件名 ： SysColumnController.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.column.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:51:35
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysColumnInfo")
@Api(value = "/sysColumnInfo", description = "数据库字段管理")
public class SysColumnController {
	//
	private static final Logger	logger = LoggerFactory.getLogger(SysColumnController.class);

	//
	@Autowired
	private SysColumnService	sysColumnService;
	
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
	public Page<SysColumnInfo> findAll(int pageNumber, int pageSize, String searchText, String uuid) {
		logger.info("findAll", SysColumnController.class);
		return sysColumnService.findAllByTableUuid(pageNumber, pageSize, searchText, uuid);
	}
	
	@ApiOperation(value = "分页查询符合名称或uuid的库字段管理信息", notes = "")
	@RequestMapping(path = "/findAll1", method = RequestMethod.POST)
	public Page<SysColumnInfo> findAll1(@RequestBody SysColumnVo vo) {
		logger.info("findAll", SysColumnController.class);
		return sysColumnService.findAllByTableUuid(vo.getPageNumber(), vo.getPageSize(), vo.getSearchText(), vo.getUuid());
	}

	@ApiOperation(value = "分页查询符合名称或uuid的库字段管理信息", notes = "")
	@RequestMapping(path = "/findAllBySysColumnInfo", method = RequestMethod.POST)
	public List<SysColumnInfo> findAllBySysColumnInfo(@RequestBody SysColumnInfo info) {
		logger.info("findAll", SysColumnController.class);
		return sysColumnService.findAllBySysColumnInfo(info);
	}
	
	@ApiOperation(hidden = true, value = "/updBefor")
	@RequestMapping(path = "/updBefor", method = RequestMethod.POST)
	public ModelAndView updBefor(@ModelAttribute SysColumnInfo info) {
		System.out.println(info.toString());
		logger.info("updBefor", SysColumnController.class);
		ModelAndView view = new ModelAndView("dbm/table/upd_column");
		view.addObject("sysColumnInfo", info);
		return view;
	}

	@ApiOperation(value = "分页查询符合库字段管理信息", notes = "")
	@RequestMapping(path = "/saveSysColumnInfo", method = RequestMethod.POST)
	public Page<SysColumnInfo> saveSysColumnInfo(@RequestBody SysColumnInfo info) {
		logger.info("saveSysColumnInfo", SysColumnController.class);
		sysColumnService.save(info);
		return sysColumnService.findAllByTableUuid(1, 10, "", info.getTableUuid());
		
	}

	@ApiOperation(value = "分页查询符合库字段管理信息", notes = "")
	@RequestMapping(path = "/saveSysColumnVo", method = RequestMethod.POST)
	public Page<SysColumnInfo> saveSysColumnVo(@RequestBody SysColumnVo vo) {
		logger.error(vo.toString(), SysColumnController.class);
		logger.info("saveSysColumnVo", SysColumnController.class);
		sysColumnService.saveSysColumnInfo(vo.getList());
		return sysColumnService.findAllByTableUuid(1, 20, "", vo.getList().get(0).getTableUuid());
		
	}
	
	@ApiOperation(value = "删除库字段管理信息", notes = "")
	@RequestMapping(path = "/deleteSysColumnInfo", method = RequestMethod.POST)
	public Page<SysColumnInfo> deleteSysColumnInfo(@RequestBody SysColumnVo vo) {
		logger.info("deleteSysColumnInfo", SysColumnController.class);
		sysColumnService.deleteSysColumnInfo(vo.getList());
		return sysColumnService.findAllByTableUuid(1, 10, "", vo.getList().get(0).getTableUuid());
		
	}
	
}
