package org.danyuan.application.common.config;

import java.io.IOException;
import java.util.Date;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;

import com.alibaba.fastjson.JSONObject;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;

public class JwtAuthenticationTokenFilter extends OncePerRequestFilter {

	private Logger logger = LoggerFactory.getLogger(getClass());

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
		// 获取JWT
		String authHeader = request.getHeader("Authorization");
		logger.info("--------->" + authHeader);
		if (authHeader != null) {
			// 解析token.
			Claims claims = Jwts.parser().setSigningKey("MyJWTtest").parseClaimsJws(authHeader.replace("Mrain", "")).getBody();
			// 获取suject
//	            String subject = claims.getSubject();
//	            User user = (User) claims.get("user");
			// 获取过期时间
			Date claimsExpiration = claims.getExpiration();
			logger.info("过期时间" + claimsExpiration);
			// 判断是否过期
			Date now = new Date();
			if (now.getTime() > claimsExpiration.getTime()) {
				throw new AuthenticationServiceException("凭证已过期，请重新登录！");
			}
			// 获取保存在token中的登录认证成功的authentication，
			// 利用UsernamePasswordAuthenticationToken生成新的authentication
			// 放入到SecurityContextHolder，表示认证通过
			Object tokenInfo = claims.get("authentication");
			// 通过com.alibaba.fastjson将其在转换。
			Authentication toknAuthentication = JSONObject.parseObject(JSONObject.toJSONString(tokenInfo), Authentication.class);
			UsernamePasswordAuthenticationToken authentication = new UsernamePasswordAuthenticationToken(toknAuthentication.getPrincipal(), null, toknAuthentication.getAuthorities());
			SecurityContextHolder.getContext().setAuthentication(authentication);
		}
		filterChain.doFilter(request, response);
	}
}