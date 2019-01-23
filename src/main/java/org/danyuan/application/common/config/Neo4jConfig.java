package org.danyuan.application.common.config;

import org.neo4j.driver.v1.AuthTokens;
import org.neo4j.driver.v1.Driver;
import org.neo4j.driver.v1.GraphDatabase;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.neo4j.repository.config.EnableNeo4jRepositories;

@Configuration
@EnableNeo4jRepositories(basePackages = "org.danyuan.application.dbms.chart")
public class Neo4jConfig {
	
	@Value("${spring.data.neo4j.username}")
	private String	spring_data_neo4j_username;

	@Value("${spring.data.neo4j.password}")
	private String	spring_data_neo4j_password;
	@Value("${spring.data.neo4j.uri}")
	private String	spring_data_neo4j_uri;

	@Bean(name = "driver")
	public Driver driver() {
		return GraphDatabase.driver(spring_data_neo4j_uri, AuthTokens.basic(spring_data_neo4j_username, spring_data_neo4j_password));
	}

}
