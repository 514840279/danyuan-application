package tk.ainiyue.danyuan.application.usermanager.organization.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import tk.ainiyue.danyuan.application.usermanager.organization.po.SysOrganizationInfo;
import tk.ainiyue.danyuan.application.usermanager.organization.service.SysOrganizationService;

/**
 * 文件名 ： SysOrganizationController.java
 * 包 名 ： tk.ainiyue.admin.organization.controller
 * 描 述 ： 组织机构控制类
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:48:51
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysOrganization")
public class SysOrganizationController {
	//
	private static final Logger	   logger = LoggerFactory.getLogger(SysOrganizationController.class);

	//
	@Autowired
	private SysOrganizationService sysOrganizationService;

	/**
	 * 方法名： findAll
	 * 功 能：查询所有数据
	 * 参 数： @return
	 * 返 回： List<SysRolesJurisdictionInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@RequestMapping("/sysOrganizationList")
	public List<SysOrganizationInfo> findAll() {
		logger.info("sysOrganizationList", SysOrganizationController.class);
		return sysOrganizationService.findAll();
	}

	/**
	 * 方法名： findAll
	 * 功 能： 添加数据
	 * 参 数： @return
	 * 返 回： List<SysRolesJurisdictionInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@RequestMapping(value = "/sysOrganizationAdd", method = RequestMethod.POST)
	@ResponseBody
	public String sysOrganizationAdd(@RequestBody SysOrganizationInfo info) {
		System.out.println(info.toString());
		logger.info("sysOrganizationAdd", SysOrganizationController.class);
		try {
			sysOrganizationService.sysOrganizationAdd(info);
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}

	/**
	 * 方法名： sysOrganizationDelete
	 * 功 能： 删除
	 * 参 数： @param info
	 * 参 数： @return
	 * 返 回： String
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@RequestMapping(value = "/sysOrganizationDelete", method = RequestMethod.POST)
	@ResponseBody
	public String sysOrganizationDelete(@RequestBody SysOrganizationInfo info) {
		logger.info("sysOrganizationDelete", SysOrganizationController.class);
		try {
			sysOrganizationService.sysOrganizationDelete(info);
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}

	/**
	 * 方法名： findSysOrganization
	 * 功 能：根据uuid查询一条数据
	 * 参 数： @param info
	 * 参 数： @return
	 * 返 回： SysOrganizationInfo
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@RequestMapping(value = "/findSysOrganization", method = RequestMethod.POST)
	@ResponseBody
	public SysOrganizationInfo findSysOrganization(@RequestBody SysOrganizationInfo info) {
		logger.info("findSysOrganization", SysOrganizationController.class);
		return sysOrganizationService.findSysOrganization(info.getUuid());
	}

	/**
	 * 方法名： sysOrganizationEdit
	 * 功 能： 修改数据
	 * 参 数： @param info
	 * 参 数： @return
	 * 返 回： String
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@RequestMapping(value = "/sysOrganizationEdit", method = RequestMethod.POST)
	@ResponseBody
	public String sysOrganizationEdit(@RequestBody SysOrganizationInfo info) {
		System.out.println(info.toString());
		logger.info("sysOrganizationEdit", SysOrganizationController.class);
		try {
			sysOrganizationService.sysOrganizationEdit(info);
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}

}
