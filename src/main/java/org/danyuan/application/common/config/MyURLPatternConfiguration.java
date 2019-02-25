package org.danyuan.application.common.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;

@Configuration
public class MyURLPatternConfiguration extends WebMvcConfigurationSupport {
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		// 指定到D盘下的myFile文件夹
		// 注:如果是Linux的话，直接指定文件夹路径即可，不需要指定哪个盘(Linux就一个可用盘)
		String dirString = System.getProperty("user.dir");
		registry.addResourceHandler("/file/**").addResourceLocations("file:" + dirString);
		super.addResourceHandlers(registry);
	}
}