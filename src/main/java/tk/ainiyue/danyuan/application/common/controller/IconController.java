package tk.ainiyue.danyuan.application.common.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/icon")
public class IconController {
	
	@RequestMapping("/nodecorator/select")
	private String index(String iconName, HttpServletRequest request) {
		
		request.setAttribute("iconName", iconName);
		return "icon_selector";
	}
}
