package org.danyuan.application;

import org.apache.catalina.connector.Connector;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.elasticsearch.repository.config.EnableElasticsearchRepositories;
import org.springframework.data.neo4j.repository.config.EnableNeo4jRepositories;

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
@EnableElasticsearchRepositories
@EnableNeo4jRepositories
public class App {
	
	public static void main(String[] args) throws Exception {
		SpringApplication.run(App.class, args);
	}

	// @Bean
	public Connector httpConnector() {
		Connector connector = new Connector("org.apache.coyote.http11.Http11NioProtocol");
		connector.setScheme("http");
		// Connector监听的http的端口号
		connector.setPort(80);
		connector.setSecure(false);
		// 监听到http的端口号后转向到的https的端口号
		connector.setRedirectPort(8443);
		return connector;
	}

}
