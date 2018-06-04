package tk.ainiyue.danyuan.application.softm.sysmenu.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import tk.ainiyue.danyuan.application.softm.sysmenu.po.SysSystemInfo;
import tk.ainiyue.danyuan.application.softm.sysmenu.service.SysSystemService;

/**
 * 文件名 ： SysSystemController.java
 * 包 名 ： tk.ainiyue.admin.system.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:00:14
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysSystem")
@Api(value = "/sysSystem", description = "系统管理")
public class SysSystemController {
	
	//
	private static final Logger	logger = LoggerFactory.getLogger(SysMenuController.class);

	//
	@Autowired
	private SysSystemService	sysSystemService;
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysSystemInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@RequestMapping(path = "/sysSystemList", method = RequestMethod.GET)
	public List<SysSystemInfo> findAll() {
		logger.info("sysSystemList", SysMenuController.class);
		return sysSystemService.findAll();
	}
}
