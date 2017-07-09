package tk.ainiyue.danyuan.application.usermanager.userrole.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import tk.ainiyue.danyuan.application.usermanager.userrole.po.SysUserRolesInfo;
import tk.ainiyue.danyuan.application.usermanager.userrole.service.SysUserRolesService;

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
	private static final Logger	logger = LoggerFactory.getLogger(SysUserRolesController.class);
	
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
	@RequestMapping("/sysUserRolesList")
	public List<SysUserRolesInfo> findAll() {
		logger.info("sysUserRolesList", SysUserRolesController.class);
		return sysUserRolesService.findAll();
	}
}
