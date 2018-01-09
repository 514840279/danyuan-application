package tk.ainiyue.danyuan.application.user.userbase.controller;

import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.user.userbase.po.SysUserBaseInfo;
import tk.ainiyue.danyuan.application.user.userbase.service.SysUserBaseService;

/**
 * 文件名 ： SysUserBaseController.java
 * 包 名 ： tk.ainiyue.admin.userbase.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:57:26
 * 版 本 ： V1.0
 */
@RestController
@RequestMapping("/sysUserBase")
@Api(value = "/sysUserBase", description = "用户管理")
public class SysUserBaseController {

	//
	private static final Logger	logger = LoggerFactory.getLogger(SysUserBaseController.class);

	//
	@Autowired
	private SysUserBaseService	sysUserBaseService;

	/**
	 * 方法名： findAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @return
	 * 返 回： List<SysUserBaseInfo>
	 * 作 者 ： Tenghui.Wang
	 * @throws
	 */
	@RequestMapping(path = "/sysUserBaseList", method = RequestMethod.GET)
	public List<SysUserBaseInfo> findAll() {
		logger.info("sysUserBaseList", SysUserBaseController.class);
		return sysUserBaseService.findAll();
	}

	@ApiOperation(value = "分页查询全部部门信息", notes = "")
	@RequestMapping(path = "/findAllBySearchText", method = RequestMethod.POST)
	public Page<SysUserBaseInfo> findAllBySearchText(int pageNumber, int pageSize, SysUserBaseInfo sysUserBaseInfo) {
		logger.info("findAllBySearchText", SysUserBaseController.class);
		return sysUserBaseService.findAllBySearchText(pageNumber, pageSize, sysUserBaseInfo);
	}
	
	@ApiOperation(value = "修改角色信息", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	@ResponseBody
	public String save(@RequestBody SysUserBaseInfo info) {
		logger.info("save", SysUserBaseController.class);
		try {
			System.err.println(info.toString());
			info.setUuid(UUID.randomUUID().toString().replaceAll("-", ""));
			// encryptPassword(info);
			sysUserBaseService.save(info);
			return "1";
		} catch (Exception e) {
			e.printStackTrace();
			return e.toString();
		}
	}
	
	@ApiOperation(value = "删除角色信息", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestBody SysUserBaseInfo info) {
		logger.info("delete", SysUserBaseController.class);
		try {

			sysUserBaseService.delete(info);
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
	
	/**
	 * 加密密码
	 */
	private void encryptPassword(SysUserBaseInfo userEntity) {
		String password = userEntity.getPassword();
		password = new BCryptPasswordEncoder().encode(password);
		System.err.println(password);
		userEntity.setPassword(password);
	}
}
