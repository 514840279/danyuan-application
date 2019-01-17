package org.danyuan.application.dbms.code.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.common.base.BaseResult;
import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.common.base.ResultUtil;
import org.danyuan.application.dbms.code.po.SysDbmsGenerateCodeInfo;
import org.danyuan.application.dbms.code.service.SysDbmsGenerateCodeInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @文件名 SysDbmsGenerateCodeInfoController.java
 * @包名 org.danyuan.application.dbms.code.controller
 * @描述 TODO(用一句话描述该文件做什么)
 * @时间 2019年1月16日 下午1:26:24
 * @author Administrator
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysDbmsGenerateCodeInfo")
public class SysDbmsGenerateCodeInfoController extends BaseControllerImpl<SysDbmsGenerateCodeInfo> implements BaseController<SysDbmsGenerateCodeInfo> {

	@Autowired
	SysDbmsGenerateCodeInfoService sysDbmsGenerateCodeInfoService;

	@RequestMapping("/generate")
	public BaseResult<String> generate(@RequestBody Pagination<SysDbmsGenerateCodeInfo> vo) {
		try {
			String pathString = "";
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
			pathString = simpleDateFormat.format(new Date());
			sysDbmsGenerateCodeInfoService.generate(vo.getList(), vo.getUsername(), pathString);
			return ResultUtil.success(pathString);
		} catch (Exception e) {
			return ResultUtil.error(-1, e.getMessage());
		}
	}
}
