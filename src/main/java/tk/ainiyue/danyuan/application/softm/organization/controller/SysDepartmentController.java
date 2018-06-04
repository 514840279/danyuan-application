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
import tk.ainiyue.danyuan.application.softm.organization.po.SysDepartmentInfo;
import tk.ainiyue.danyuan.application.softm.organization.service.SysDepartmentService;
import tk.ainiyue.danyuan.application.softm.organization.vo.SysDepartmentInfoVo;

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
	private static final Logger		logger	= LoggerFactory.getLogger(SysDepartmentController.class);
	
	//
	@Autowired
	private SysDepartmentService	sysDepartmentService;
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysDepartmentInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@ApiOperation(value = "查询全部部门信息", notes = "")
	@RequestMapping(path = "/sysDepartmentList", method = RequestMethod.GET)
	public List<SysDepartmentInfo> findAll() {
		logger.info("sysSystemList", SysDepartmentController.class);
		return sysDepartmentService.findAll();
	}
	
	@ApiOperation(value = "分页查询全部部门信息", notes = "")
	@RequestMapping(path = "/findAllBySearchText", method = RequestMethod.POST)
	public Page<SysDepartmentInfo> findAllBySearchText(SysDepartmentInfoVo sysDepartmentInfoVo) {
		logger.info("findAllBySearchText", SysDepartmentController.class);
		SysDepartmentInfo info = new SysDepartmentInfo();
		info.setOrganizationId(sysDepartmentInfoVo.getOrganizationId());
		return sysDepartmentService.findAllBySearchText(sysDepartmentInfoVo.getPageNumber(), sysDepartmentInfoVo.getPageSize(), info);
	}
	
	@ApiOperation(value = "分页查询全部部门信息", notes = "")
	@RequestMapping(path = "/sysDepartmentAdd", method = RequestMethod.POST)
	@ResponseBody
	public String save(@RequestBody SysDepartmentInfo info) {
		logger.info("sysDepartmentAdd", SysDepartmentController.class);
		System.out.println(info.toString());
		sysDepartmentService.save(info);
		return "1";
	}
	
	@ApiOperation(value = "删除组织机构管理信息", notes = "")
	@RequestMapping(path = "/sysDepartmentDelete", method = RequestMethod.POST)
	@ResponseBody
	public String sysDepartmentDelete(@RequestBody SysDepartmentInfo info) {
		logger.info("sysDepartmentDelete", SysDepartmentController.class);
		try {
			sysDepartmentService.delete(info);
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
}
