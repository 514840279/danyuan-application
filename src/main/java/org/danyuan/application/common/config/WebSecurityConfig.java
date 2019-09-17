package org.danyuan.application.common.config;

import java.util.Arrays;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

/**
 * 文件名 ： WebSecurityConfig.java
 * 包 名 ： tk.ainiyue.danyuan.application.common.config
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年10月8日 上午9:08:08
 * 版 本 ： V1.0
 */
@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true) // 开启security注解
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private DataSource dataSource;
//	@Autowired
//	private MyLoginSuccessHandler	myLoginSuccessHandler;
//	@Autowired
//	private MyLoginFailureHandler	myLoginFailureHandler;

	@Bean
	public PersistentTokenRepository tokenRepository() {
		JdbcTokenRepositoryImpl jdbcTokenRepository = new JdbcTokenRepositoryImpl();
		jdbcTokenRepository.setDataSource(dataSource);
		// 设置为true,则项目启动时，会在对应数据源中自动建表token表
		jdbcTokenRepository.setCreateTableOnStartup(false);
		return jdbcTokenRepository;
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		/** JWT拦截器 */
//		JwtAuthenticationTokenFilter jwtAuthenticationTokenFilter = new JwtAuthenticationTokenFilter();
		/** 将JWT拦截器添加到UsernamePasswordAuthenticationFilter之前 */
//		http.addFilterBefore(jwtAuthenticationTokenFilter, UsernamePasswordAuthenticationFilter.class);
		// 允许所有用户访问"/"和"/home"
		http.csrf().disable().authorizeRequests()
		        // 不需要验证就可以访问的路径
		        .antMatchers("/dist/*/**", "/plugins/*/**", "/pages/*/js/**", "/register.html", "/sysUserBase/save", "/login", "/*/**.md").permitAll()
		        // 限制所有请求都需要验证
		        .anyRequest().authenticated()
		        // form 登录
		        .and().formLogin()
		        // 登录方法
		        .loginProcessingUrl("/login")
				// 成功处理
//		        .successHandler(myLoginSuccessHandler)
				// 错误处理
//		        .failureHandler(myLoginFailureHandler)
		        // 默认主页
		        .defaultSuccessUrl("/index")
		        // 登录页
		        .loginPage("/login")
		        // 登录错误
		        .failureUrl("/login?error").permitAll()
		        // 退出
		        .and().logout()
		        // .logoutSuccessUrl("/logoutSuccess")
		        .permitAll()
		        // 重启清空验证信息
		        .clearAuthentication(true)
		        // 支持跨域
		        .and().cors()
		        // 记住我 token
		        .and().rememberMe().tokenRepository(tokenRepository())// 设置tokenRepository
		        // 总是记住，会刷新过期时间
		        .alwaysRemember(true)
		        // 设置过期时间为两周
		        .tokenValiditySeconds(1209600)
//		        .userDetailsService(userDetailsService) // 设置userDetailsService，用来获取username;
		;
	}
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) {
		try {
			auth.userDetailsService(customUserDetailsService()).passwordEncoder(passwordEncoder());
		} catch (Exception e) {
			System.err.println(e);
		}
		
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return PasswordEncoderFactories.createDelegatingPasswordEncoder();
	}
	
	/**
	 * 自定义UserDetailsService，从数据库中读取用户信息
	 *
	 * @return
	 */
	@Bean
	public CustomUserDetailsService customUserDetailsService() {
		return new CustomUserDetailsService();
	}
	
	@Bean
	CorsConfigurationSource corsConfigurationSource() {
		CorsConfiguration configuration = new CorsConfiguration();
		configuration.setAllowedOrigins(Arrays.asList("*"));
		configuration.setAllowedMethods(Arrays.asList("GET", "POST", "OPTIONS", "DELETE"));
		UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
		source.registerCorsConfiguration("/**", configuration);
		return source;
	}
}