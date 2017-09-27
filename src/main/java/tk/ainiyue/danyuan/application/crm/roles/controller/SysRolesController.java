package tk.ainiyue.danyuan.application.crm.roles.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import tk.ainiyue.danyuan.application.crm.roles.po.SysRolesInfo;
import tk.ainiyue.danyuan.application.crm.roles.service.SysRolesService;

/**
 * 文件名 ： SysRolesController.java
 * 包 名 ： tk.ainiyue.admin.roles.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:54:27
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysRoles")
@Api(value = "/sysRoles", description = "角色管理")
public class SysRolesController {
	//
	private static final Logger	logger = LoggerFactory.getLogger(SysRolesController.class);
	
	//
	@Autowired
	private SysRolesService		sysRolesService;
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysRolesJurisdictionInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@RequestMapping(path = "/sysRolesList", method = RequestMethod.POST)
	public List<SysRolesInfo> findAll() {
		logger.info("sysRolesList", SysRolesController.class);
		return sysRolesService.findAll();
	}
}
