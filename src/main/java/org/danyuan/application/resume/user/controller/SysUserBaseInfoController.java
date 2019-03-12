package org.danyuan.application.resume.user.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.common.base.BaseResult;
import org.danyuan.application.common.utils.MailVo;
import org.danyuan.application.common.utils.SimapleMailRegist;
import org.danyuan.application.common.utils.excel.WordToHtml;
import org.danyuan.application.common.utils.string.StringUtils;
import org.danyuan.application.softm.roles.po.SysUserBaseInfo;
import org.danyuan.application.softm.roles.service.SysUserBaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

/**
 * @文件名 SysUserBaseInfoController.java
 * @包名 org.danyuan.application.resume.user.controller
 * @描述 controller层
 * @时间 2019年03月04日 14:46:05
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysUserBaseInfo")
public class SysUserBaseInfoController extends BaseControllerImpl<SysUserBaseInfo> implements BaseController<SysUserBaseInfo> {
	
	@Autowired
	private SysUserBaseService	sysUserBaseService;

	@Autowired
	SimapleMailRegist			mailRegist;
	
	@RequestMapping(path = "/sendMail", method = RequestMethod.POST)
	public BaseResult<String> sendMail(@RequestBody SysUserBaseInfo info) {
		MailVo mailMessage = new MailVo();
		String codeString = StringUtils.genRandomNumByLen(6);
		StringBuilder sBuilder = new StringBuilder();
		sBuilder.append("您正在使用《初学者》《简历管理》，您的注册码是：");
		sBuilder.append("\n  " + codeString + "");
		sBuilder.append("\n 请妥善保管好，不要发送给任何人，谢谢合作！");
		sBuilder.append("\n 请妥善保管好，不要发送给任何人，谢谢合作！");
		sBuilder.append("\n 请妥善保管好，不要发送给任何人，谢谢合作！");
		sBuilder.append("\n 请妥善保管好，不要发送给任何人，谢谢合作！");
		sBuilder.append("\n 请妥善保管好，不要发送给任何人，谢谢合作！");
		sBuilder.append("\n 初学者：http://www.danyuan.wang");
		sBuilder.append("\n 一个致力于使用代码改变生活的网站！");
		
		mailMessage.setMessage(sBuilder.toString());
		mailMessage.setTitle("简历注册验证码");
		mailMessage.setMail(info.getEmail());
		// 发送邮件
		mailRegist.SendMailToCustom(mailMessage);
		BaseResult<String> result = new BaseResult<>();
		result.setCode(200);
		result.setData(codeString);
		return result;
	}
	
	@RequestMapping(path = "/uploadResume")
	public BaseResult<String> uploadResume(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		BaseResult<String> result = new BaseResult<>();
		// 文件保存
		request.setCharacterEncoding("UTF-8");
		String emailString = request.getParameter("email");
		String username = request.getParameter("username");
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
		List<MultipartFile> files = multipartHttpServletRequest.getFiles("file");
		for (MultipartFile multipartFile : files) {
			String filename = multipartFile.getOriginalFilename();
			InputStream inputStream = null;
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
			
			String path = System.getProperty("user.dir") + "\\file\\" + simpleDateFormat.format(new Date());
			result.setData("\\file\\" + simpleDateFormat.format(new Date()) + "\\" + filename);
			
			File file = new File(path);
			try {
				inputStream = multipartFile.getInputStream();
				result.setData(simpleDateFormat.format(new Date()) + "\\" + filename);
				
				if (!file.exists()) {
					file.mkdirs();
				}
				path = path + "\\" + filename;
				FileOutputStream fos = new FileOutputStream(path);

				byte[] b = new byte[1024];
				while ((inputStream.read(b)) != -1) {
					fos.write(b);
				}
				fos.close();
				inputStream.close();
				// word 转html
				if (filename.toLowerCase().contains(".docx")) {
					WordToHtml.Word2007ToHtml(path, filename);
					result.setData("\\file\\" + simpleDateFormat.format(new Date()) + "\\" + filename.substring(0, filename.lastIndexOf(".")) + ".html");
				} else {
					WordToHtml.Word2003ToHtml(path, filename);
					result.setData("\\file\\" + simpleDateFormat.format(new Date()) + "\\" + filename.substring(0, filename.lastIndexOf(".")) + ".html");
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		// 更新信息
		SysUserBaseInfo entity = new SysUserBaseInfo();
		entity.setEmail(emailString);
		entity = sysUserBaseService.findOne(entity);
		MailVo mailMessage = new MailVo();
		StringBuilder sBuilder = new StringBuilder();
		if (entity == null) {
			// 新建
			SysUserBaseInfo info = new SysUserBaseInfo();
			info.setUuid(UUID.randomUUID().toString());
			info.setEmail(emailString);
			info.setDeleteFlag(0);
			info.setCreateUser(username);
			info.setUpdateUser(username);
			info.setUserName(emailString);
			info.setPersionName(emailString);
			String codeString = StringUtils.genRandomNumByLen(8);
			info.setPassword(codeString);
			info.setResumePath("http://www.danyuan.wang/" + result.getData());
			encryptPassword(info);
			sysUserBaseService.save(info);
			//

			sBuilder.append("欢迎您使用《初学者》《简历管理系统》：");
			sBuilder.append("\n 已为您创建好简历 并在系统中为您注册新的账户 ");
			sBuilder.append("\n 账号： " + info.getUserName());
			sBuilder.append("\n 默认密码： " + codeString);
			sBuilder.append("\n 您的简历地址：http://www.danyuan.wang" + result.getData());
			sBuilder.append("\n 账号密码用户后期登录使用。");
			sBuilder.append("\n 请妥善保管好，不要发送给任何人，谢谢合作！");
			sBuilder.append("\n 初学者：http://www.danyuan.wang");
			sBuilder.append("\n 一个致力于使用代码改变生活的网站！");

		} else {
			
			sBuilder.append("欢迎您使用《初学者》《简历管理系统》：");
			sBuilder.append("\n 已为您创建好简历 ");
			sBuilder.append("\n 您的简历地址：http://www.danyuan.wang" + result.getData());
			sBuilder.append("\n 请妥善保管好，不要发送给任何人，谢谢合作！");
			sBuilder.append("\n 初学者：http://www.danyuan.wang");
			sBuilder.append("\n 一个致力于使用代码改变生活的网站！");
			entity.setResumePath("http://www.danyuan.wang" + result.getData());
			entity.setResumePath(result.getData());
			sysUserBaseService.save(entity);
		}

		mailMessage.setMessage(sBuilder.toString());
		mailMessage.setTitle("简历注册");
		mailMessage.setMail(emailString);
		// 发送邮件
		mailRegist.SendMailToCustom(mailMessage);
		// 生成简历二维码，个人名片信息

		return result;
	}

	/**
	 * 加密密码
	 */
	@Autowired
	PasswordEncoder passwordEncoder;
	
	private void encryptPassword(org.danyuan.application.softm.roles.po.SysUserBaseInfo userEntity) {
		String password = userEntity.getPassword();
		password = passwordEncoder.encode(password);
		userEntity.setPassword(password);
	}
}
