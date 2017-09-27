package tk.ainiyue.danyuan.application.dbm.addr.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import io.swagger.annotations.Api;
import tk.ainiyue.danyuan.application.dbm.addr.po.SysDatabaseInfo;
import tk.ainiyue.danyuan.application.dbm.addr.service.SysDatabaseService;
import tk.ainiyue.danyuan.application.dbm.addr.vo.SysDatabaseVo;

/**
 * 文件名 ： SysDatabaseController.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.addr.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:46:35
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysDatabaseInfo")
@Api(value = "/sysDatabaseInfo", description = "数据库管理")
public class SysDatabaseController {
	//
	private static final Logger	logger = LoggerFactory.getLogger(SysDatabaseController.class);

	//
	@Autowired
	private SysDatabaseService	sysDatabaseService;

	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysSeedInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@RequestMapping(path = "/findAll", method = RequestMethod.POST)
	public List<SysDatabaseInfo> findAll() {
		logger.info("findAll", SysDatabaseController.class);
		return sysDatabaseService.findAll();
	}

	@RequestMapping(path = "/addSysDatabaseInfo", method = RequestMethod.POST)
	public List<SysDatabaseInfo> addSysDatabaseInfo(@RequestBody SysDatabaseInfo sysDatabaseInfo) {
		logger.info("findAll", SysDatabaseController.class);
		sysDatabaseService.save(sysDatabaseInfo);
		return sysDatabaseService.findAll();
	}

	@RequestMapping(path = "/addBefor", method = RequestMethod.POST)
	public ModelAndView addBefor(HttpServletRequest request) {
		SysDatabaseInfo info = new SysDatabaseInfo();
		info.setUuid(request.getParameter("uuid"));
		info.setAddress(request.getParameter("address"));
		info.setDatabaseName(request.getParameter("databaseName"));
		info.setDeleteFlag(Integer.parseInt(request.getParameter("deleteFlag")));
		info.setDiscription(request.getParameter("discription"));
		info.setDriver(request.getParameter("driver"));
		info.setUsername(request.getParameter("username"));
		info.setPassword(request.getParameter("password"));
		info.setPort(request.getParameter("port"));
		info.setType(request.getParameter("type"));
		logger.info("addBefor", SysDatabaseController.class);
		ModelAndView view = new ModelAndView("dbm/addr/add_addr");
		view.addObject("sysDatabaseInfo", info);
		return view;
	}

	@RequestMapping(path = "/deleteSysDatabaseInfo", method = RequestMethod.POST)
	public List<SysDatabaseInfo> deleteSysDatabaseInfo(@RequestBody SysDatabaseVo vo) {
		logger.error(vo.getList().get(0).toString());
		logger.info("deleteSysDatabaseInfo", SysDatabaseController.class);
		sysDatabaseService.deleteSysDatabaseInfo(vo.getList());
		return sysDatabaseService.findAll();
	}
	
}
