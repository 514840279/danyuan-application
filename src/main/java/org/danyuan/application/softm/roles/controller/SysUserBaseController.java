package org.danyuan.application.softm.roles.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.danyuan.application.softm.roles.po.SysUserBaseInfo;
import org.danyuan.application.softm.roles.service.SysUserBaseService;
import org.danyuan.application.softm.roles.vo.SysUserBaseVo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

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
public class SysUserBaseController {

	@Autowired
	PasswordEncoder				passwordEncoder;
	//
	private static final Logger	logger	= LoggerFactory.getLogger(SysUserBaseController.class);

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

	@RequestMapping(path = "/findAllBySearchText", method = RequestMethod.POST)
	public Page<SysUserBaseInfo> findAllBySearchText(int pageNumber, int pageSize, SysUserBaseInfo sysUserBaseInfo) {
		logger.info("findAllBySearchText", SysUserBaseController.class);
		return sysUserBaseService.findAllBySearchText(pageNumber, pageSize, sysUserBaseInfo);
	}

	@RequestMapping(path = "/save", method = RequestMethod.POST)
	@ResponseBody
	public String save(@RequestBody SysUserBaseInfo info) {
		logger.info("save", SysUserBaseController.class);
		try {
			SysUserBaseInfo baseInfo = sysUserBaseService.findByName(info.getUserName());
			if (baseInfo == null) {
				info.setUuid(UUID.randomUUID().toString().replaceAll("-", ""));
				encryptPassword(info);
				sysUserBaseService.save(info);
			} else {
				return "用户名已存在";
			}
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}

	@RequestMapping(path = "/saveu", method = RequestMethod.POST)
	@ResponseBody
	public String saveu(@RequestBody SysUserBaseInfo info) {
		logger.info("saveu", SysUserBaseController.class);
		try {
			sysUserBaseService.saveu(info.getUuid(), info.getPersionName(), info.getAge(), info.getUserName(), info.getEmail(), info.getPhone(), info.getSex(), info.getDiscription());
			return "1";
		} catch (Exception e) {
			e.printStackTrace();
			return e.toString();
		}
	}

	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestBody SysUserBaseVo vo) {
		logger.info("delete", SysUserBaseController.class);
		try {
			sysUserBaseService.delete(vo);
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
		password = passwordEncoder.encode(password);
		userEntity.setPassword(password);
	}
	
	@RequestMapping(path = "/checkUserName", method = RequestMethod.POST)
	public Map<String, Boolean> checkUserName(String userName) {
		logger.info("checkUserName", SysUserBaseController.class);
		boolean boo = sysUserBaseService.checkUserName(userName);
		Map<String, Boolean> map = new HashMap<>();
		map.put("valid", boo);
		return map;
	}

	@RequestMapping(path = "/changePassword", method = RequestMethod.POST)
	@ResponseBody
	public String changePassword(@RequestBody SysUserBaseVo vo) {
		logger.info("changePassword", SysUserBaseController.class);
		try {
			encryptPassword(vo.getInfo());
			sysUserBaseService.changePassword(vo.getInfo());
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
}
