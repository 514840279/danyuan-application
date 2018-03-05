package tk.ainiyue.danyuan.application.kejiju.chengguo.controller;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.jdbc.StringUtils;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.dic.po.KjDicCglx;
import tk.ainiyue.danyuan.application.kejiju.chengguo.po.KjcgJbxxInfo;
import tk.ainiyue.danyuan.application.kejiju.chengguo.service.KjcgJbxxService;
import tk.ainiyue.danyuan.application.kejiju.chengguo.vo.KjcgJbxxInfoVo;

/**    
*  文件名 ： KjcgJbxxInfoController.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.chengguo.controller  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年3月1日 下午11:15:34  
*  版    本 ： V1.0    
*/
@RestController
@RequestMapping("/kjcgJbxxInfo")
@Api(value = "/KjcgJbxxInfo", description = "科研成果信息")
public class KjcgJbxxController {
	//
	private static final Logger	logger	= LoggerFactory.getLogger(KjcgJbxxController.class);
	
	//
	@Autowired
	private KjcgJbxxService		kjcgJbxxService;
	
	@ApiOperation(value = "分页查询全部信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<KjcgJbxxInfo> page(KjcgJbxxInfoVo vo) {
		logger.info("page", KjcgJbxxController.class);
		KjcgJbxxInfo info = new KjcgJbxxInfo();
		if (!StringUtils.isNullOrEmpty(vo.getCompletedDate().trim())) {
			info.setCompletedDate(vo.getCompletedDate());
		}
		
		if (!StringUtils.isNullOrEmpty(vo.getResultType().trim())) {
			info.setResultType(vo.getResultType());
		}
		
		if (!StringUtils.isNullOrEmpty(vo.getProjectName().trim())) {
			info.setProjectName(vo.getProjectName());
		}
		return kjcgJbxxService.page(vo.getPageNumber(), vo.getPageSize(), info);
	}
	
	@ApiOperation(value = "更新", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	@ResponseBody
	public String save(@ModelAttribute KjcgJbxxInfo info) {
		logger.info("save", KjcgJbxxController.class);
		System.out.println(info.toString());
		kjcgJbxxService.save(info);
		return "1";
	}
	
	@ApiOperation(value = "删除", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestBody KjcgJbxxInfoVo vo) {
		logger.info("delete", KjcgJbxxController.class);
		try {
			kjcgJbxxService.delete(vo.getList());
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
	
	@ApiOperation(value = "成果类型", notes = "")
	@RequestMapping(path = "/dicCglx", method = RequestMethod.POST)
	@ResponseBody
	public List<KjDicCglx> dicCglx() {
		logger.info("dicCglx", KjcgJbxxController.class);
		return kjcgJbxxService.dicCglx();
	}
	
	@ApiOperation(value = "成果时间", notes = "")
	@RequestMapping(path = "/dicCgsj", method = RequestMethod.POST)
	@ResponseBody
	public List<String> dicCgsj() {
		logger.info("dicCgsj", KjcgJbxxController.class);
		return kjcgJbxxService.dicCgsj();
	}
	
	@ApiOperation(value = "成果详细", notes = "")
	@RequestMapping(path = "/showDetail", method = RequestMethod.POST)
	public ModelAndView showDetail(HttpServletRequest request) {
		logger.info("showDetail", KjcgJbxxController.class);
		KjcgJbxxInfo info = new KjcgJbxxInfo();
		info.setResultId(request.getParameter("resultId"));
		info.setAwards(request.getParameter("awards"));
		info.setCdc(request.getParameter("cdc"));
		info.setCompletedDate(request.getParameter("completedDate"));
		info.setCompletedOrganization(request.getParameter("completedOrganization"));
		info.setCompletedby(request.getParameter("completedby"));
		info.setDiscipline(request.getParameter("discipline"));
		info.setIndustry(request.getParameter("industry"));
		info.setKeyword(request.getParameter("keyword"));
		info.setOtherCode(request.getParameter("otherCode"));
		info.setProjectId(request.getParameter("projectId"));
		info.setProjectName(request.getParameter("projectName"));
		info.setResultAbstract(request.getParameter("resultAbstract"));
		info.setResultLinks(request.getParameter("resultLinks"));
		info.setResultTitle(request.getParameter("resultTitle"));
		info.setResultType(request.getParameter("resultType"));
		
		System.err.println(info);
		ModelAndView view = new ModelAndView("kejiju/chengguo/detail");
		view.addObject("kjcgJbxxInfo", info);
		return view;
	}
	
	@ApiOperation(value = "更新前", notes = "")
	@RequestMapping(path = "/upd", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView upd(KjcgJbxxInfo info, HttpServletRequest request) {
		logger.info("upd", KjcgJbxxController.class);
		if (info.getResultId() == null) {
			info.setResultId(UUID.randomUUID().toString());
		}
		//		info.setResultId(request.getParameter("resultId"));
		//		info.setAwards(request.getParameter("awards"));
		//		info.setCdc(request.getParameter("cdc"));
		//		info.setCompletedDate(request.getParameter("completedDate"));
		//		info.setCompletedOrganization(request.getParameter("completedOrganization"));
		//		info.setCompletedby(request.getParameter("completedby"));
		//		info.setDiscipline(request.getParameter("discipline"));
		//		info.setIndustry(request.getParameter("industry"));
		//		info.setKeyword(request.getParameter("keyword"));
		//		info.setOtherCode(request.getParameter("otherCode"));
		//		info.setProjectId(request.getParameter("projectId"));
		//		info.setProjectName(request.getParameter("projectName"));
		//		info.setResultAbstract(request.getParameter("resultAbstract"));
		//		info.setResultLinks(request.getParameter("resultLinks"));
		//		info.setResultTitle(request.getParameter("resultTitle"));
		//		info.setResultType(request.getParameter("resultType"));
		
		System.err.println(info);
		ModelAndView view = new ModelAndView("kejiju/chengguo/upd");
		view.addObject("kjcgJbxxInfo", info);
		return view;
	}
	
}
