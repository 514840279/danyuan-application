package tk.ainiyue.danyuan.application.user.userrole.controller;

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
import tk.ainiyue.danyuan.application.user.userrole.po.SysUserRolesInfo;
import tk.ainiyue.danyuan.application.user.userrole.service.SysUserRolesService;

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
@Api(value = "/sysUserRoles", description = "用户角色管理")
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
	@RequestMapping(path = "/sysUserRolesList", method = RequestMethod.GET)
	public List<SysUserRolesInfo> findAll() {
		logger.info("sysUserRolesList", SysUserRolesController.class);
		return sysUserRolesService.findAll();
	}
	
	@ApiOperation(value = "分页查询全部部门信息", notes = "")
	@RequestMapping(path = "/findAllBySearchText", method = RequestMethod.POST)
	public Page<SysUserRolesInfo> findAllBySearchText(int pageNumber, int pageSize, SysUserRolesInfo sysUserRolesInfo) {
		logger.info("findAllBySearchText", SysUserRolesController.class);
		return sysUserRolesService.findAllBySearchText(pageNumber, pageSize, sysUserRolesInfo);
	}
	
	@ApiOperation(value = "修改角色信息", notes = "")
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
	
	@ApiOperation(value = "删除角色信息", notes = "")
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
