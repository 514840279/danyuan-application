package org.danyuan.application.common.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

/**
 * 文件名 ： SimapleMailRegist.java
 * 包 名 ： com.geekcattle.controller.member
 * 描 述 ： 邮箱认证
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2017年9月8日 下午2:57:06
 * 版 本 ： V1.0
 */
@Component
public class SimapleMailRegist {
	@Autowired
	private JavaMailSender	mailSender;
	
	@Value(value = "${spring.mail.from}")
	private String			fromMail;

	public void SendMailToCustom(MailVo vo) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom(vo.getFromMail() == null ? fromMail : vo.getFromMail());
		message.setTo(vo.getMail());
		message.setSubject(vo.getTitle());
		message.setText(vo.getMessage());
		mailSender.send(message);
	}

}
