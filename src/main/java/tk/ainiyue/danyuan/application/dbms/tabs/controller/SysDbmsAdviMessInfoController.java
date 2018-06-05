package tk.ainiyue.danyuan.application.dbms.tabs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.dbms.tabs.po.SysDbmsAdviMessInfo;
import tk.ainiyue.danyuan.application.dbms.tabs.service.SysDbmsAdviMessInfoService;

/**
 * 文件名 ： Test.java
 * 包 名 ： com.shumeng.application.application.zhcx.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月24日 下午6:08:33
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysAdviceMess")
@Api(value = "/SysAdviceMess", description = "综合查询业务")
public class SysDbmsAdviMessInfoController {

	@Autowired
	SysDbmsAdviMessInfoService sysDbmsAdviMessInfoService;

	@ApiOperation(value = "查询前500数据库表管理信息", notes = "")
	@RequestMapping(path = "/findAll", method = { RequestMethod.GET, RequestMethod.POST })
	public List<SysDbmsAdviMessInfo> findAll() throws ClassNotFoundException {
		return sysDbmsAdviMessInfoService.findAll(new SysDbmsAdviMessInfo());

	}
}
