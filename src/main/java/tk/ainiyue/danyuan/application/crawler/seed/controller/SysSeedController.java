package tk.ainiyue.danyuan.application.crawler.seed.controller;

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
import tk.ainiyue.danyuan.application.crawler.seed.po.SysSeedInfo;
import tk.ainiyue.danyuan.application.crawler.seed.service.SysSeedService;
import tk.ainiyue.danyuan.application.crawler.seed.vo.SysSeedVo;

/**
 * 文件名 ： SysSeedController.java
 * 包 名 ： tk.ainiyue.admin.roles.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:54:27
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysSeed")
@Api(value = "/sysRuler", description = "采集地址管理")
public class SysSeedController {
	//
	private static final Logger	logger = LoggerFactory.getLogger(SysSeedController.class);
	
	//
	@Autowired
	private SysSeedService		sysSeedService;
	
	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysSeedInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@ApiOperation(value = "分页查询地址信息", notes = "")
	@RequestMapping(path = "/sysSeedList", method = RequestMethod.POST)
	public Page<SysSeedInfo> findAll(int pageNumber, int pageSize, String searchText) {
		logger.info("sysSeedList", SysSeedController.class);
		return sysSeedService.findAll(pageNumber, pageSize, searchText);
	}
	
	@ApiOperation(value = "分页查询地址信息", notes = "")
	@RequestMapping(path = "/findAll", method = RequestMethod.POST)
	public List<SysSeedInfo> findAll() {
		logger.info("sysSeedList", SysSeedController.class);
		return sysSeedService.findAll();
	}

	@ApiOperation(value = "添加地址信息", notes = "")
	@RequestMapping(path = "/addSysMenuInfo", method = RequestMethod.POST)
	public SysSeedInfo addSysMenuInfo(@RequestBody SysSeedInfo sysSeedInfo) {
		logger.info("addSysMenuInfo", SysSeedController.class);
		sysSeedService.addSysMenuInfo(sysSeedInfo);
		return sysSeedInfo;
	}
	
	@ApiOperation(value = "删除地址信息", notes = "")
	@RequestMapping(path = "/deleteSysSeedInfo", method = RequestMethod.POST)
	public Page<SysSeedInfo> deleteSysSeedInfo(@RequestBody SysSeedVo vo) {
		logger.info("deleteSysSeedInfo", SysSeedController.class);
		sysSeedService.deleteSysSeedInfo(vo.getList());
		return sysSeedService.findAll(vo.getPageNumber(), vo.getPageSize(), null);
	}
	
}
