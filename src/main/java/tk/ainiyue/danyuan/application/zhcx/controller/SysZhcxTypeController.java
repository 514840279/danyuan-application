package tk.ainiyue.danyuan.application.zhcx.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.zhcx.po.SysZhcxType;
import tk.ainiyue.danyuan.application.zhcx.service.SysZhcxTypeService;
import tk.ainiyue.danyuan.application.zhcx.vo.SysZhcxTypeVo;

/**
 * 文件名 ： SysTableController.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.table.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:54:36
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysZhcxType")
@Api(value = "/SysZhcxType", description = "数据库表管理")
public class SysZhcxTypeController {
	//
	private static final Logger	logger	= LoggerFactory.getLogger(SysZhcxTypeController.class);

	//
	@Autowired
	private SysZhcxTypeService	sysZhcxTypeService;

	@ApiOperation(value = "分页查询符合名称信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<SysZhcxType> page(int pageNumber, int pageSize, String searchText) {
		logger.info("page", SysZhcxTypeController.class);
		SysZhcxType type = new SysZhcxType();
		type.setTypeName(searchText);
		return sysZhcxTypeService.page(pageNumber, pageSize, type);
	}

	@ApiOperation(value = "分页查询符合名称信息", notes = "")
	@RequestMapping(path = "/list", method = RequestMethod.POST)
	public List<SysZhcxType> list() {
		logger.info("list", SysZhcxTypeController.class);
		return sysZhcxTypeService.list();
	}

	@ApiOperation(value = "更新", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public String save(@RequestBody SysZhcxType info) {
		logger.info("save", SysZhcxTypeController.class);
		sysZhcxTypeService.save(info);
		return "1";
	}

	@ApiOperation(value = "删除", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(@RequestBody SysZhcxTypeVo vo) {
		logger.info("delete", SysZhcxTypeController.class);
		sysZhcxTypeService.delete(vo.getList());
		return "1";
	}
}
