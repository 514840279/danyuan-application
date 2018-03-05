package tk.ainiyue.danyuan.application.kejiju.renyuan.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.jdbc.StringUtils;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJbxxInfo;
import tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryJbxxService;
import tk.ainiyue.danyuan.application.kejiju.renyuan.vo.KjryJbxxInfoVo;

/**    
*  文件名 ： KjryJbxxInfoController.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.renyuan.controller  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： Administrator  
*  时    间 ： 2018年3月2日 上午9:57:35  
*  版    本 ： V1.0    
*/
@RestController
@RequestMapping("/kjryJbxxInfo")
@Api(value = "/KjryJbxxInfo", description = "科研人员基本信息")
public class KjryJbxxController {
	//
	private static final Logger	logger	= LoggerFactory.getLogger(KjryJbxxController.class);
	
	//
	@Autowired
	private KjryJbxxService		KjryJbxxService;
	
	@ApiOperation(value = "分页查询全部信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<KjryJbxxInfo> page(KjryJbxxInfoVo vo) {
		logger.info("page", KjryJbxxController.class);
		KjryJbxxInfo info = new KjryJbxxInfo();
		if (!StringUtils.isNullOrEmpty(vo.getName().trim())) {
			info.setName(vo.getName().trim());
		}
		if (!StringUtils.isNullOrEmpty(vo.getDegree().trim())) {
			info.setDegree(vo.getDegree().trim());
		}
		if (!StringUtils.isNullOrEmpty(vo.getPorfessionalTitle().trim())) {
			info.setPorfessionalTitle(vo.getPorfessionalTitle().trim());
		}
		if (!StringUtils.isNullOrEmpty(vo.getResearchDirection().trim())) {
			info.setResearchDirection(vo.getResearchDirection().trim());
		}
		
		return KjryJbxxService.page(vo.getPageNumber(), vo.getPageSize(), info);
	}
	
	@ApiOperation(value = "更新", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	@ResponseBody
	public String save(@RequestBody KjryJbxxInfo info) {
		logger.info("save", KjryJbxxController.class);
		System.out.println(info.toString());
		KjryJbxxService.save(info);
		return "1";
	}
	
	@ApiOperation(value = "删除", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestBody KjryJbxxInfoVo vo) {
		logger.info("delete", KjryJbxxController.class);
		try {
			KjryJbxxService.delete(vo.getList());
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
	
	@ApiOperation(value = "技术领域", notes = "")
	@RequestMapping(path = "/dicJsly", method = RequestMethod.POST)
	@ResponseBody
	public List<String> dicJsly() {
		logger.info("dicJsly", KjryJbxxController.class);
		return KjryJbxxService.dicJsly();
	}
	
	@ApiOperation(value = "职称", notes = "")
	@RequestMapping(path = "/dicZc", method = RequestMethod.POST)
	@ResponseBody
	public List<String> dicZc() {
		logger.info("dicZc", KjryJbxxController.class);
		return KjryJbxxService.dicZc();
	}
	
	@ApiOperation(value = "学位", notes = "")
	@RequestMapping(path = "/dicXw", method = RequestMethod.POST)
	@ResponseBody
	public List<String> dicXw() {
		logger.info("dicXw", KjryJbxxController.class);
		return KjryJbxxService.dicXw();
	}
	
	@ApiOperation(value = "详细页面", notes = "")
	@RequestMapping(path = "/showDetail", method = RequestMethod.POST)
	public ModelAndView showDetail(KjryJbxxInfo info, HttpServletRequest request) {
		logger.info("showDetail", KjryJbxxController.class);
		System.out.println(info.toString());
		info = KjryJbxxService.findOne(info);
		ModelAndView view = new ModelAndView("kejiju/renyuan/detail");
		view.addObject("KjryJbxxInfo", info);
		return view;
	}
	
}
