package tk.ainiyue.danyuan.application.softm.roles.controller;

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
import tk.ainiyue.danyuan.application.softm.roles.po.SysRolesInfo;
import tk.ainiyue.danyuan.application.softm.roles.service.SysRolesService;

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
	private static final Logger	logger	= LoggerFactory.getLogger(SysRolesController.class);
	
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
	@ApiOperation(value = "查询全部角色管理", notes = "")
	@RequestMapping(path = "/sysRolesList", method = RequestMethod.GET)
	public List<SysRolesInfo> findAll() {
		logger.info("sysRolesList", SysRolesController.class);
		return sysRolesService.findAll();
	}
	
	@ApiOperation(value = "分页查询全部部门信息", notes = "")
	@RequestMapping(path = "/findAllBySearchText", method = RequestMethod.POST)
	public Page<SysRolesInfo> findAllBySearchText(int pageNumber, int pageSize, SysRolesInfo sysRolesInfo) {
		logger.info("findAllBySearchText", SysRolesController.class);
		return sysRolesService.findAllBySearchText(pageNumber, pageSize, sysRolesInfo);
	}
	
	@ApiOperation(value = "分页查询全部部门信息", notes = "")
	@RequestMapping(path = "/findAllRoleBySearchText", method = RequestMethod.POST)
	public List<SysRolesInfo> findAllRoleBySearchText(String userId) {
		logger.info("findAllBySearchText", SysRolesController.class);
		return sysRolesService.findAllRoleBySearchText(userId.replace("\"", ""));
	}
	
	@ApiOperation(value = "修改角色信息", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	@ResponseBody
	public String save(@RequestBody SysRolesInfo info) {
		logger.info("save", SysRolesController.class);
		try {
			sysRolesService.save(info);
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
	
	@ApiOperation(value = "删除角色信息", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestBody SysRolesInfo info) {
		logger.info("delete", SysRolesController.class);
		try {
			sysRolesService.delete(info);
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
}
