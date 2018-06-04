package tk.ainiyue.danyuan.application.softm.organization.controller;

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
import tk.ainiyue.danyuan.application.softm.organization.po.SysRolesJurisdictionInfo;
import tk.ainiyue.danyuan.application.softm.organization.service.SysRolesJurisdictionService;
import tk.ainiyue.danyuan.application.softm.organization.vo.SysRolesJurisdictionVo;

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
	private static final Logger			logger	= LoggerFactory.getLogger(SysRolesJurisdictionController.class);
	
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
	
	@ApiOperation(value = "分页查询全部部门信息", notes = "")
	@RequestMapping(path = "/findAllBySearchText", method = RequestMethod.POST)
	public Page<SysRolesJurisdictionInfo> findAllBySearchText(int pageNumber, int pageSize, SysRolesJurisdictionInfo sysRolesJurisdictionInfo) {
		logger.info("findAllBySearchText", SysRolesJurisdictionController.class);
		return sysRolesJurisdictionService.findAllBySearchText(pageNumber, pageSize, sysRolesJurisdictionInfo);
	}
	
	@ApiOperation(value = "修改角色权限信息", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	@ResponseBody
	public String save(@RequestBody SysRolesJurisdictionInfo info) {
		logger.info("save", SysRolesJurisdictionController.class);
		try {
			sysRolesJurisdictionService.save(info);
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
	
	@ApiOperation(value = "修改角色权限信息", notes = "")
	@RequestMapping(path = "/saveAll", method = RequestMethod.POST)
	@ResponseBody
	public String save(@RequestBody SysRolesJurisdictionVo vo) {
		logger.info("saveAll", SysRolesJurisdictionController.class);
		try {
			for (SysRolesJurisdictionInfo info : vo.getSysRolesJurisdictionInfolist()) {
				System.out.println(info.toString());
				sysRolesJurisdictionService.save(info);
			}
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
	
	@ApiOperation(value = "删除角色权限信息", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestBody SysRolesJurisdictionInfo info) {
		logger.info("delete", SysRolesJurisdictionController.class);
		try {
			sysRolesJurisdictionService.delete(info);
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
}
