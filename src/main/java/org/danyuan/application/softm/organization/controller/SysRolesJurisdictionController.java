package org.danyuan.application.softm.organization.controller;

import java.util.List;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.common.base.BaseResult;
import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.common.base.ResultUtil;
import org.danyuan.application.softm.organization.po.SysRolesJurisdictionInfo;
import org.danyuan.application.softm.organization.service.SysRolesJurisdictionInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * 文件名 ： SysRolesJurisdictionController.java
 * 包 名 ： tk.ainiyue.admin.jurisdiction.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:47:24
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysRolesJurisdiction")
public class SysRolesJurisdictionController extends BaseControllerImpl<SysRolesJurisdictionInfo> implements BaseController<SysRolesJurisdictionInfo> {
	//
	private static final Logger				logger	= LoggerFactory.getLogger(SysRolesJurisdictionController.class);
	
	//
	@Autowired
	private SysRolesJurisdictionInfoService	sysRolesJurisdictionInfoService;
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysRolesJurisdictionInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@RequestMapping(path = "/sysRolesJurisdictionList", method = RequestMethod.GET)
	public List<SysRolesJurisdictionInfo> findAll() {
		logger.info("sysRolesJurisdictionList", SysRolesJurisdictionController.class);
		return sysRolesJurisdictionInfoService.findAll();
	}
	
	@RequestMapping(path = "/findAllBySearchText", method = RequestMethod.POST)
	public Page<SysRolesJurisdictionInfo> findAllBySearchText(int pageNumber, int pageSize, SysRolesJurisdictionInfo sysRolesJurisdictionInfo) {
		logger.info("findAllBySearchText", SysRolesJurisdictionController.class);
		return sysRolesJurisdictionInfoService.findAllBySearchText(pageNumber, pageSize, sysRolesJurisdictionInfo);
	}
	
	@Override
	@RequestMapping(path = "/saveAll", method = RequestMethod.POST)
	@ResponseBody
	public BaseResult<SysRolesJurisdictionInfo> saveAll(@RequestBody Pagination<SysRolesJurisdictionInfo> vo) {
		logger.info("saveAll", SysRolesJurisdictionController.class);
		try {
			sysRolesJurisdictionInfoService.saveAll(vo.getList());
			return ResultUtil.success();
		} catch (Exception e) {
			return ResultUtil.error(e.getMessage());
		}
	}
}
