package org.danyuan.application;

import java.net.InetAddress;
import java.net.UnknownHostException;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * 文件名 ： App.java
 * 包 名 ： tk.ainiyue.danyuan
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月20日 下午8:24:37
 * 版 本 ： V1.0
 */
@SpringBootApplication
@EnableJpaAuditing
@EnableScheduling
@EnableJpaRepositories(basePackages = "org.danyuan.application")
public class App implements CommandLineRunner {
	private static ApplicationContext ctx;
	
	public static void main(String[] args) throws Exception {
		ctx = SpringApplication.run(App.class, args);
	}
	
	@Override
	public void run(String... args) throws Exception {
		try {
			String host = InetAddress.getLocalHost().getHostAddress();
			TomcatServletWebServerFactory tomcatServletWebServerFactory = (TomcatServletWebServerFactory) ctx.getBean("tomcatServletWebServerFactory");
			int port = tomcatServletWebServerFactory.getPort();
			String contextPath = tomcatServletWebServerFactory.getContextPath();
			System.out.println("http://" + host + ":" + port + contextPath + "/");
			Runtime.getRuntime().exec("cmd /c start http://" + host + ":" + port + contextPath + "/"); // 打开一个批处理文件
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		
	}
	
}
