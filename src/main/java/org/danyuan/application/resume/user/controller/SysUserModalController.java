package org.danyuan.application.resume.user.controller;

import java.io.FileWriter;
import java.io.IOException;
import java.util.List;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.common.base.BaseResult;
import org.danyuan.application.resume.modal.po.SysModalInfo;
import org.danyuan.application.resume.modal.service.SysModalInfoService;
import org.danyuan.application.resume.user.po.SysUserBaseInfo;
import org.danyuan.application.resume.user.po.SysUserEducation;
import org.danyuan.application.resume.user.po.SysUserEvaluate;
import org.danyuan.application.resume.user.po.SysUserModal;
import org.danyuan.application.resume.user.po.SysUserProject;
import org.danyuan.application.resume.user.po.SysUserSkill;
import org.danyuan.application.resume.user.po.SysUserWorkExpreience;
import org.danyuan.application.resume.user.service.SysUserBaseService;
import org.danyuan.application.resume.user.service.SysUserEducationService;
import org.danyuan.application.resume.user.service.SysUserEvaluateService;
import org.danyuan.application.resume.user.service.SysUserModalService;
import org.danyuan.application.resume.user.service.SysUserProjectService;
import org.danyuan.application.resume.user.service.SysUserSkillService;
import org.danyuan.application.resume.user.service.SysUserWorkExpreienceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;
import org.thymeleaf.templateresolver.ClassLoaderTemplateResolver;

/**
 * @文件名 SysUserModalController.java
 * @包名 org.danyuan.application.resume.user.controller
 * @描述 controller层
 * @时间 2019年02月28日 17:42:26
 * @author test
 * @版本 V1.0
 */
@RestController
@RequestMapping("/sysUserModal")
public class SysUserModalController extends BaseControllerImpl<SysUserModal> implements BaseController<SysUserModal> {
	
	@Autowired
	SysUserModalService				sysUserModalService;
	
	@Autowired
	SysUserBaseService				sysUserBaseService;				// 基本信息
	
	@Autowired
	SysUserEducationService			sysUserEducationService;		// 教育信息
	
	@Autowired
	SysUserSkillService				sysUserSkillService;			// 技能信息
	
	@Autowired
	SysUserWorkExpreienceService	sysUserWorkExpreienceService;	// 工作履历
	
	@Autowired
	SysUserProjectService			sysUserProjectService;			// 项目经验
	
	@Autowired
	SysUserEvaluateService			sysUserEvaluateService;			// 评价信息
	
	@Autowired
	SysModalInfoService				sysModalInfoService;
	
	@RequestMapping(path = "/writeResume", method = RequestMethod.POST)
	public BaseResult<String> writeResume(@RequestBody SysUserModal info) throws IllegalArgumentException, IllegalAccessException {
		BaseResult<String> result = new BaseResult<>();
		try {
			// 构造模板引擎
			ClassLoaderTemplateResolver resolver = new ClassLoaderTemplateResolver();
			resolver.setPrefix("templates/");// 模板所在目录，相对于当前classloader的classpath。
			resolver.setSuffix(".html");// 模板文件后缀
			// resolver.setTemplateMode("HTML5");
			TemplateEngine templateEngine = new TemplateEngine();
			templateEngine.setTemplateResolver(resolver);
			
			// 构造上下文(Model)
			Context context = new Context();
			// 基本
			SysUserBaseInfo base = sysUserBaseService.findById(info.getUserUuid());
			context.setVariable("base", base);
			// 教育
			SysUserEducation education = new SysUserEducation();
			education.setUserUuid(info.getUserUuid());
			List<SysUserEducation> educations = sysUserEducationService.findAll(education);
			context.setVariable("educations", educations);
			// 技能
			SysUserSkill skill = new SysUserSkill();
			skill.setUserUuid(info.getUserUuid());
			List<SysUserSkill> skills = sysUserSkillService.findAll(skill);
			context.setVariable("skills", skills);
			
			// 工作经验
			SysUserWorkExpreience workExpreience = new SysUserWorkExpreience();
			workExpreience.setUserUuid(info.getUserUuid());
			List<SysUserWorkExpreience> workExpreiences = sysUserWorkExpreienceService.findAll(workExpreience);
			context.setVariable("workExpreiences", workExpreiences);
			// 项目经验
			SysUserProject project = new SysUserProject();
			project.setUserUuid(info.getUserUuid());
			List<SysUserProject> projects = sysUserProjectService.findAll(project);
			context.setVariable("projects", projects);
			
			// 评价
			SysUserEvaluate evaluate = new SysUserEvaluate();
			evaluate.setUserUuid(info.getUserUuid());
			evaluate.setType("自我评价");
			evaluate = sysUserEvaluateService.findOne(evaluate);
			context.setVariable("evaluate", evaluate);
			
			// 渲染模板
			String dirString = System.getProperty("user.dir");
			FileWriter write = new FileWriter(dirString + "/file/" + info.getUserUuid() + ".html");
			SysModalInfo sysModalInfo = sysModalInfoService.findOne(new SysModalInfo(info.getModalUuid()));
			
			templateEngine.process("resume/modal/" + sysModalInfo.getModalFilePath(), context, write);
			// 保存简历路径
			base.setResumePath("/file/" + info.getUserUuid() + ".html");
			sysUserBaseService.save(base);
			result.setData("/" + info.getUserUuid() + ".html");
			result.setCode(200);
		} catch (IOException e) {
			System.err.println(e.getMessage());
			result.setCode(-100);
			result.setMsg(e.getMessage());
		}
		return result;
	}
	
	@RequestMapping(path = "/showResume/{userUuid}/{resume}")
	public ModelAndView showResume(@PathVariable("userUuid") String userid, @PathVariable("resume") String resume) {
		// 构造模板引擎
		ClassLoaderTemplateResolver resolver = new ClassLoaderTemplateResolver();
		resolver.setPrefix("templates/");// 模板所在目录，相对于当前classloader的classpath。
		resolver.setSuffix(".html");// 模板文件后缀
		TemplateEngine templateEngine = new TemplateEngine();
		templateEngine.setTemplateResolver(resolver);
		
		// 构造上下文(Model)
		ModelAndView view = new ModelAndView("resume/modal/" + resume + ".html");
		// 基本
		view.addObject("base", sysUserBaseService.findById(userid));
		// 教育
		SysUserEducation education = new SysUserEducation();
		education.setUserUuid(userid);
		List<SysUserEducation> educations = sysUserEducationService.findAll(education);
		view.addObject("educations", educations);
		// 技能
		SysUserSkill skill = new SysUserSkill();
		skill.setUserUuid(userid);
		List<SysUserSkill> skills = sysUserSkillService.findAll(skill);
		view.addObject("skills", skills);
		
		// 技能
		SysUserWorkExpreience workExpreience = new SysUserWorkExpreience();
		workExpreience.setUserUuid(userid);
		List<SysUserWorkExpreience> workExpreiences = sysUserWorkExpreienceService.findAll(workExpreience);
		view.addObject("workExpreiences", workExpreiences);
		// 技能
		SysUserProject project = new SysUserProject();
		project.setUserUuid(userid);
		List<SysUserProject> projects = sysUserProjectService.findAll(project);
		view.addObject("projects", projects);
		
		// 评价
		SysUserEvaluate evaluate = new SysUserEvaluate();
		evaluate.setUserUuid(userid);
		evaluate.setType("自我评价");
		evaluate = sysUserEvaluateService.findOne(evaluate);
		view.addObject("evaluate", evaluate);
		
		// 渲染模板
		return view;
	}
	
}
