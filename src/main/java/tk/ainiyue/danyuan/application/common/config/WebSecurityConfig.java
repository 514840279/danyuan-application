package tk.ainiyue.danyuan.application.common.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;
import org.springframework.web.filter.CorsFilter;

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
@EnableWebMvcSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true) // 开启security注解
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Bean
	@Override
	protected AuthenticationManager authenticationManager() throws Exception {
		return super.authenticationManager();
	}
	
	@Bean
	public FilterRegistrationBean filterRegistrationBean() {
		// 对响应头进行CORS授权
		MyCorsRegistration corsRegistration = new MyCorsRegistration("/**");
		corsRegistration.allowedOrigins(CrossOrigin.DEFAULT_ORIGINS)
		        .allowedMethods(HttpMethod.GET.name(), HttpMethod.HEAD.name(), HttpMethod.POST.name(), HttpMethod.PUT.name())
		        .allowedHeaders(CrossOrigin.DEFAULT_ALLOWED_HEADERS)
		        .exposedHeaders(HttpHeaders.SET_COOKIE)
		        .allowCredentials(CrossOrigin.DEFAULT_ALLOW_CREDENTIALS)
		        .maxAge(CrossOrigin.DEFAULT_MAX_AGE);
		
		// 注册CORS过滤器
		UrlBasedCorsConfigurationSource configurationSource = new UrlBasedCorsConfigurationSource();
		configurationSource.registerCorsConfiguration("/**", corsRegistration.getCorsConfiguration());
		CorsFilter corsFilter = new CorsFilter(configurationSource);
		return new FilterRegistrationBean(corsFilter);
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		// 允许所有用户访问"/"和"/home"
		http.authorizeRequests()
		        .antMatchers("/", "/home").permitAll()
		        // 其他地址的访问均需验证权限
		        .anyRequest().authenticated()
		        .and()
		        .formLogin()
		        // 指定登录页是"/login"
		        .loginPage("/login")
		        .defaultSuccessUrl("/hello")// 登录成功后默认跳转到"/hello"
		        .permitAll()
		        .and()
		        .logout()
		        .logoutSuccessUrl("/home")// 退出登录后的默认url是"/home"
		        .permitAll();
		
	}
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		
		auth
		        .userDetailsService(customUserDetailsService())
		        .passwordEncoder(passwordEncoder());
		
	}
	
	/**
	 * 设置用户密码的加密方式为MD5加密
	 *
	 * @return
	 */
	@Bean
	public Md5PasswordEncoder passwordEncoder() {
		return new Md5PasswordEncoder();

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
	
}