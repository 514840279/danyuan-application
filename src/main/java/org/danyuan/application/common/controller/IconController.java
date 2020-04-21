package org.danyuan.application.common.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/icon")
public class IconController {

	@RequestMapping(path = "/nodecorator/select", method = RequestMethod.GET)
	private String index(String iconName, HttpServletRequest request) {

		request.setAttribute("iconName", iconName);
		return "icon_selector";
	}
	
	@RequestMapping(path = "/nodecorator/ztree", method = RequestMethod.GET)
	private String ztree(String uuid, HttpServletRequest request) {

		request.setAttribute("uuid", uuid);
		return "jurisdiction_selelect";
	}
}
