package org.danyuan.application.common.config;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.fasterxml.jackson.databind.ObjectMapper;

import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

//自定义的登录成功处理器
@Component("myLoginSuccessHandler")
public class MyLoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {
	private Logger			logger	= LoggerFactory.getLogger(getClass());

	@Autowired
	private ObjectMapper	objectMapper;
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Authentication authentication) throws IOException, ServletException {
		logger.info("登录成功！");

//        登录成功后设置JWT
		String Token = Jwts.builder()
		// 设置token的信息
//                .setClaims(claimsMap)
		        // 将认证后的authentication写入token，验证时，直接验证它
		        .claim("authentication", authentication)
		        // 设置主题
		        .setSubject("主题")
		        // 过期时间
		        .setExpiration(new Date(System.currentTimeMillis() + 60 * 60 * 24 * 1000))
		        // 加密方式
		        .signWith(SignatureAlgorithm.HS512, "MyJWTtest").compact();
		httpServletResponse.addHeader("Authorization", "Mrain" + Token);
		// 要做的工作就是将Authentication以json的形式返回给前端。 需要工具类ObjectMapper，Spring已自动注入。
		// 设置返回类型
		httpServletResponse.setContentType("application/json;charset=UTF-8");
		Map<String, Object> tokenInfo = new HashMap<>();
		tokenInfo.put("Authorization", "Mrain" + Token);
		// 将token信息写入
		httpServletResponse.getWriter().write(objectMapper.writeValueAsString(tokenInfo));
	}
}