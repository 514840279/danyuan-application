package tk.ainiyue.danyuan.application.crm.department.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import tk.ainiyue.danyuan.application.crm.department.po.SysDepartmentInfo;
import tk.ainiyue.danyuan.application.crm.department.service.SysDepartmentService;

/**
 * 文件名 ： SysDepartment.java
 * 包 名 ： tk.ainiyue.admin.department.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:45:28
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysDepartment")
@Api(value = "/sysDepartment", description = "部门管理")
public class SysDepartmentController {
	
	//
	private static final Logger	 logger	= LoggerFactory.getLogger(SysDepartmentController.class);
	
	//
	@Autowired
	private SysDepartmentService sysDepartmentService;
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysDepartmentInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@RequestMapping(path = "/sysDepartmentList", method = RequestMethod.POST)
	public List<SysDepartmentInfo> findAll() {
		logger.info("sysSystemList", SysDepartmentController.class);
		return sysDepartmentService.findAll();
	}
}
