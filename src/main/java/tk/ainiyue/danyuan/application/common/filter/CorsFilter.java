package tk.ainiyue.danyuan.application.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

/**
 * 文件名 ： CorsFilter.java
 * 包 名 ： tk.ainiyue.danyuan.application.common.filter
 * 描 述 ： 跨域允许过滤器
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年9月27日 上午7:29:09
 * 版 本 ： V1.0
 */

//@Component
public class CorsFilter implements Filter {
	
	final static org.slf4j.Logger logger = org.slf4j.LoggerFactory.getLogger(CorsFilter.class);
	
	/**
	 * 方法名 ： doFilter
	 * 功 能 ： 修改头
	 * 参 数 ： @param arg0
	 * 参 数 ： @param arg1
	 * 参 数 ： @param arg2
	 * 参 数 ： @throws IOException
	 * 参 数 ： @throws ServletException
	 * 参 考 ： @see javax.servlet.Filter#doFilter(javax.servlet.ServletRequest,
	 * javax.servlet.ServletResponse, javax.servlet.FilterChain)
	 * 作 者 ： wang
	 */

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		HttpServletResponse response = (HttpServletResponse) res;
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
		response.setHeader("Access-Control-Max-Age", "3600");
		response.setHeader("Access-Control-Allow-Headers", "x-requested-with");
		System.out.println("*********************************过滤器被使用**************************");
		chain.doFilter(req, res);
	}
	
	/**
	 * 方法名 ： init
	 * 参 数 ： @param arg0
	 * 参 数 ： @throws ServletException
	 * 参 考 ： @see javax.servlet.Filter#init(javax.servlet.FilterConfig)
	 * 作 者 ： wang
	 */

	@Override
	public void init(FilterConfig filterConfig) {
	}
	
	@Override
	public void destroy() {
	}
	
}