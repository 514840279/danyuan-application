package org.danyuan.application.common.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 说明：跨域请求
 *
 * @author WangBin
 * @version v1.0
 * @date 2018/1/21/
 */
@Configuration
//@EnableWebMvc
public class CorsConfig implements WebMvcConfigurer {

	@Override
	public void addCorsMappings(CorsRegistry registry) {
		// 设置允许跨域的路径
		registry.addMapping("/**")
		        // 设置允许跨域请求的域名
		        .allowedOrigins("*")
		        // 是否允许证书 不再默认开启
		        .allowCredentials(true)
		        // 设置允许的方法
		        .allowedMethods("*")
		        // 跨域允许时间
		        .maxAge(3600);
	}
}