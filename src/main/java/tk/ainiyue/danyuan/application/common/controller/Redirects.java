package tk.ainiyue.danyuan.application.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 文件名 ： Redirects.java
 * 包 名 ： tk.ainiyue.danyuan.application.common.controller
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2017年10月10日 上午10:13:43
 * 版 本 ： V1.0
 */
@Controller
public class Redirects {
	
	@RequestMapping("/login")
	public String login() {
		return "/login/login";
	}
	
}
