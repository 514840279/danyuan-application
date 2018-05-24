package tk.ainiyue.danyuan.application.zhcx.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.zhcx.po.SysZhcxAddr;
import tk.ainiyue.danyuan.application.zhcx.service.SysZhcxAddrService;
import tk.ainiyue.danyuan.application.zhcx.vo.SysZhcxAddrVo;

/**
 * 文件名 ： SysZhcxAddrController.java
 * 包 名 ： com.shumeng.application.application.zhcx.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月24日 下午1:33:03
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysZhcxAddr")
@Api(value = "/SysZhcxAddr", description = "数据库表管理")
public class SysZhcxAddrController {
	//
	private static final Logger	logger	= LoggerFactory.getLogger(SysZhcxAddrController.class);

	//
	@Autowired
	private SysZhcxAddrService	sysZhcxAddrService;

	@ApiOperation(value = "分页查询符合名称信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<SysZhcxAddr> page(@RequestBody SysZhcxAddrVo vo) {
		logger.info("page", SysZhcxAddrController.class);
		SysZhcxAddr type = new SysZhcxAddr();
		return sysZhcxAddrService.page(vo.getPageNumber().intValue(), vo.getPageSize().intValue(), type, vo.getMap(), new Order(Direction.DESC, "createTime"));
	}

	@ApiOperation(value = "分页查询符合名称信息", notes = "")
	@RequestMapping(path = "/list", method = RequestMethod.POST)
	public List<SysZhcxAddr> list() {
		logger.info("list", SysZhcxAddrController.class);
		return sysZhcxAddrService.findAll(new SysZhcxAddr());
	}

	@ApiOperation(value = "更新", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public String save(@RequestBody SysZhcxAddr info) {
		logger.info("save", SysZhcxAddrController.class);
		sysZhcxAddrService.save(info);
		return "1";
	}

	@ApiOperation(value = "删除", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(@RequestBody SysZhcxAddrVo vo) {
		logger.info("delete", SysZhcxAddrController.class);
		sysZhcxAddrService.delete(vo.getList());
		return "1";
	}
}
