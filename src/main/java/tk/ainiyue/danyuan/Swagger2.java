package tk.ainiyue.danyuan;

import org.springframework.context.annotation.Bean;

import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

/**
 * 文件名 ： Swagger2.java
 * 包 名 ： tk.ainiyue.danyuan
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年9月15日 下午5:02:40
 * 版 本 ： V1.0
 */
//@Configuration
//@EnableSwagger2
public class Swagger2 {
	@Bean
	public Docket createRestApi() {
		return new Docket(DocumentationType.SWAGGER_2)
		        .apiInfo(apiInfo())
		        .select()
		        .apis(RequestHandlerSelectors.basePackage("tk.ainiyue.danyuan"))
		        .paths(PathSelectors.any())
		        .build();
	}

	private ApiInfo apiInfo() {
		return new ApiInfoBuilder()
		        .title("Spring Boot中使用Swagger2构建RESTful APIs")
		        .description("详细描述参照源码 https://github.com/514840279/danyuan-application")
		        .termsOfServiceUrl("http://danyuan.wang")
		        .contact("")
		        .version("1.0")
		        .build();
	}

}
