package tk.ainiyue.danyuan.application.softm.roles.controller;

import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

import io.swagger.annotations.Api;
import tk.ainiyue.danyuan.application.softm.roles.vo.MailVo;
import tk.ainiyue.danyuan.application.softm.roles.vo.PhoneVo;

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
@RestController
@Api(value = "/", description = "邮箱手机发送工具")
public class SimapleMailRegist {
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping(path = "/mail/send", method = RequestMethod.POST)
	public MailVo SendMailToCustom(@RequestBody MailVo vo) {
		System.err.println(vo.getMail());
		vo.setCode(RandomStringUtils.randomAscii(18));
		
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom("514840279@qq.com");
		message.setTo(vo.getMail());
		message.setSubject("主题：简单测试邮件");
		message.setText("测试邮件内容 验证码是：" + vo.getCode() + "\n" + vo.getMessage());
		mailSender.send(message);
		return vo;
	}
	
	@RequestMapping(path = "/phone/send", method = RequestMethod.POST)
	public PhoneVo SendPhoneToCustom(@RequestBody PhoneVo vo) throws ApiException {
		System.err.println(vo.getPhone());
		vo.setCode(RandomStringUtils.randomNumeric(6));
		// 24619654
		String url = "https://eco.taobao.com/router/rest";
		String appkey = "";
		String secret = "a68a283919212762db0f58132e1c76bd";
		
		TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		req.setExtend("123456");
		req.setSmsType("normal");
		req.setSmsFreeSignName("数盟");
		req.setSmsParamString("{\"code\":\"" + vo.getCode() + "\"}");
		req.setRecNum(vo.getPhone());
		req.setSmsTemplateCode("SMS_94715134");
		AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
		System.out.println(rsp.getBody());
		
		return vo;
	}
	
}
