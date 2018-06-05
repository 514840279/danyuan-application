package tk.ainiyue.danyuan.application.dbms.zhcx.controller;

import java.util.UUID;

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
import tk.ainiyue.danyuan.application.dbms.zhcx.po.SysZhcxCol;
import tk.ainiyue.danyuan.application.dbms.zhcx.service.SysZhcxColService;
import tk.ainiyue.danyuan.application.dbms.zhcx.vo.SysZhcxColVo;

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
@RequestMapping("/sysZhcxCol")
@Api(value = "/SysZhcxCol", description = "数据库表管理")
public class SysZhcxColController {
	//
	private static final Logger	logger	= LoggerFactory.getLogger(SysZhcxColController.class);

	//
	@Autowired
	private SysZhcxColService	sysZhcxColService;

	@ApiOperation(value = "分页查询符合名称信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<SysZhcxCol> page(int pageNumber, int pageSize, String searchText) {
		logger.info("page", SysZhcxColController.class);
		SysZhcxCol col = new SysZhcxCol();
		col.setTabsUuid(searchText);
		return sysZhcxColService.page(pageNumber, pageSize, col);
	}
	
	@ApiOperation(value = "更新", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public String save(@RequestBody SysZhcxCol info) {
		logger.info("save", SysZhcxColController.class);
		sysZhcxColService.save(info);
		return "1";
	}

	@ApiOperation(value = "更新", notes = "")
	@RequestMapping(path = "/savev", method = RequestMethod.POST)
	public String savev(@RequestBody SysZhcxColVo vo) {
		logger.info("savev", SysZhcxColController.class);
		for (SysZhcxCol sysZhcxCol : vo.getList()) {
			sysZhcxCol.setUuid(UUID.randomUUID().toString());
			sysZhcxCol.setCreateUser(vo.getUsername());
			sysZhcxCol.setUpdateUser(vo.getUsername());
			sysZhcxCol.setColsAlign("left");
			sysZhcxCol.setColsValign("middle");
			sysZhcxCol.setColsSwitchable("true");
			sysZhcxCol.setColsWidth("150");
			sysZhcxColService.save(sysZhcxCol);
		}
		return "1";
	}

	@ApiOperation(value = "删除", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(@RequestBody SysZhcxColVo vo) {
		logger.info("delete", SysZhcxColController.class);
		sysZhcxColService.delete(vo.getList());
		return "1";
	}

}
