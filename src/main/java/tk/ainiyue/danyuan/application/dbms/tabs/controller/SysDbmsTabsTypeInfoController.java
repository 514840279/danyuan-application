package tk.ainiyue.danyuan.application.dbms.tabs.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.dbms.tabs.po.SysDbmsTabsTypeInfo;
import tk.ainiyue.danyuan.application.dbms.tabs.service.SysDbmsTabsTypeInfoService;
import tk.ainiyue.danyuan.application.dbms.tabs.vo.SysDbmsTabsTypeInfoVo;

/**
 * 文件名 ： SysDbmsTabsTypeInfoController.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.type.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:58:03
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysDbmsTabsTypeInfo")
@Api(value = "/SysDbmsTabsTypeInfo", description = "数据库表类型管理")
public class SysDbmsTabsTypeInfoController {
	//
	private static final Logger			logger	= LoggerFactory.getLogger(SysDbmsTabsTypeInfoController.class);
	//
	@Autowired
	private SysDbmsTabsTypeInfoService	sysDbmsTabsTypeInfoService;
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysSeedInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@ApiOperation(value = "查询全部数据库表类型管理信息", notes = "")
	@RequestMapping(path = "/findAll", method = RequestMethod.POST)
	public List<SysDbmsTabsTypeInfo> findAll() {
		logger.info("findAll", SysDbmsTabsTypeInfoController.class);
		return sysDbmsTabsTypeInfoService.findAll();
	}
	
	@ApiOperation(value = "分页查询全部类型管理信息", notes = "")
	@RequestMapping(path = "/findAllBySearchText", method = RequestMethod.POST)
	public Page<SysDbmsTabsTypeInfo> findAllBySearchText(@RequestBody SysDbmsTabsTypeInfoVo vo) {
		logger.info("findAllBySearchText", SysDbmsTabsTypeInfoController.class);
		SysDbmsTabsTypeInfo info = vo.getInfo();
		if (info == null) {
			info = new SysDbmsTabsTypeInfo();
		}
		return sysDbmsTabsTypeInfoService.findAllBySearchText(vo.getPageNumber(), vo.getPageSize(), info);
	}
	
	@ApiOperation(value = "删除类型管理信息", notes = "")
	@RequestMapping(path = "/sysTableTypeDeleteAll", method = RequestMethod.POST)
	@ResponseBody
	public String sysTableTypeDeleteAll(@RequestBody SysDbmsTabsTypeInfoVo vo) {
		logger.info("sysTableTypeDeleteAll", SysDbmsTabsTypeInfoController.class);
		try {
			sysDbmsTabsTypeInfoService.delete(vo.getList());
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
	
	@ApiOperation(value = "修改分类信息", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	@ResponseBody
	public String save(@RequestBody SysDbmsTabsTypeInfo info) {
		logger.info("save", SysDbmsTabsTypeInfoController.class);
		System.out.println(info.toString());
		sysDbmsTabsTypeInfoService.save(info);
		return "1";
	}
	
}
