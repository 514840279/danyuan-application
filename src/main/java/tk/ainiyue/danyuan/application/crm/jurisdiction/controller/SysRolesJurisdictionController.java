package tk.ainiyue.danyuan.application.crm.jurisdiction.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.crm.jurisdiction.po.SysRolesJurisdictionInfo;
import tk.ainiyue.danyuan.application.crm.jurisdiction.service.SysRolesJurisdictionService;

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
@Api(value = "/sysRolesJurisdiction", description = "角色权限管理")
public class SysRolesJurisdictionController {
	//
	private static final Logger			logger = LoggerFactory.getLogger(SysRolesJurisdictionController.class);
	
	//
	@Autowired
	private SysRolesJurisdictionService	sysRolesJurisdictionService;
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysRolesJurisdictionInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@ApiOperation(value = "查询全部角色权限管理信息", notes = "")
	@RequestMapping(path = "/sysRolesJurisdictionList", method = RequestMethod.GET)
	public List<SysRolesJurisdictionInfo> findAll() {
		logger.info("sysRolesJurisdictionList", SysRolesJurisdictionController.class);
		return sysRolesJurisdictionService.findAll();
	}
}
