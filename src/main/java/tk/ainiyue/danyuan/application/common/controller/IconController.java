package tk.ainiyue.danyuan.application.common.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@Controller
@RequestMapping("/icon")
@Api(value = "/icon", description = "图标控制")
public class IconController {

	@ApiOperation(value = "图标页面获取", notes = "")
	@RequestMapping(path = "/nodecorator/select", method = RequestMethod.GET)
	private String index(String iconName, HttpServletRequest request) {

		request.setAttribute("iconName", iconName);
		return "icon_selector";
	}
	
	@ApiOperation(value = "图标页面获取", notes = "")
	@RequestMapping(path = "/nodecorator/ztree", method = RequestMethod.GET)
	private String ztree(String uuid, HttpServletRequest request) {

		request.setAttribute("uuid", uuid);
		return "jurisdiction_selelect";
	}
}
