package org.danyuan.application.softm.organization.controller;

import java.util.List;

import org.danyuan.application.softm.organization.po.SysRolesJurisdictionInfo;
import org.danyuan.application.softm.organization.service.SysRolesJurisdictionService;
import org.danyuan.application.softm.organization.vo.SysRolesJurisdictionVo;
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
	@RequestMapping(path = "/sysRolesJurisdictionList", method = RequestMethod.GET)
	public List<SysRolesJurisdictionInfo> findAll() {
		logger.info("sysRolesJurisdictionList", SysRolesJurisdictionController.class);
		return sysRolesJurisdictionService.findAll();
	}

	@RequestMapping(path = "/findAllBySearchText", method = RequestMethod.POST)
	public Page<SysRolesJurisdictionInfo> findAllBySearchText(int pageNumber, int pageSize, SysRolesJurisdictionInfo sysRolesJurisdictionInfo) {
		logger.info("findAllBySearchText", SysRolesJurisdictionController.class);
		return sysRolesJurisdictionService.findAllBySearchText(pageNumber, pageSize, sysRolesJurisdictionInfo);
	}

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
