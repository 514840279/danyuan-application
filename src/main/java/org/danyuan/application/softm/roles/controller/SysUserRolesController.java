package org.danyuan.application.softm.roles.controller;

import java.util.List;

import org.danyuan.application.softm.roles.po.SysUserRolesInfo;
import org.danyuan.application.softm.roles.service.SysUserRolesService;
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
 * 文件名 ： SysUserRolesController.java
 * 包 名 ： tk.ainiyue.admin.userrole.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:58:24
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysUserRoles")
public class SysUserRolesController {

	//
	private static final Logger	logger	= LoggerFactory.getLogger(SysUserRolesController.class);

	//
	@Autowired
	private SysUserRolesService	sysUserRolesService;

	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysUserRolesInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@RequestMapping(path = "/sysUserRolesList", method = RequestMethod.GET)
	public List<SysUserRolesInfo> findAll() {
		logger.info("sysUserRolesList", SysUserRolesController.class);
		return sysUserRolesService.findAll();
	}

	@RequestMapping(path = "/findAllBySearchText", method = RequestMethod.POST)
	public Page<SysUserRolesInfo> findAllBySearchText(int pageNumber, int pageSize, SysUserRolesInfo sysUserRolesInfo) {
		logger.info("findAllBySearchText", SysUserRolesController.class);
		return sysUserRolesService.findAllBySearchText(pageNumber, pageSize, sysUserRolesInfo);
	}

	@RequestMapping(path = "/save", method = RequestMethod.POST)
	@ResponseBody
	public String save(@RequestBody SysUserRolesInfo info) {
		logger.info("save", SysUserRolesController.class);
		try {
			sysUserRolesService.save(info);
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}

	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestBody SysUserRolesInfo info) {
		logger.info("delete", SysUserRolesController.class);
		try {
			sysUserRolesService.delete(info);
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
}
