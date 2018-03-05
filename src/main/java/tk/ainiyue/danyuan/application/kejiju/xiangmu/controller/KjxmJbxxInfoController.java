package tk.ainiyue.danyuan.application.kejiju.xiangmu.controller;

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
import tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmJbxxInfo;
import tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmJbxxService;
import tk.ainiyue.danyuan.application.kejiju.xiangmu.vo.KjxmJbxxInfoVo;

/**    
*  文件名 ： KjxmJbxxInfoController.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.xiangmu.controller  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年3月1日 下午10:48:45  
*  版    本 ： V1.0    
*/
@RestController
@RequestMapping("/kjxmJbxxInfo")
@Api(value = "/KjxmJbxxInfo", description = "科研项目基本信息")
public class KjxmJbxxInfoController {
	//
	private static final Logger	logger	= LoggerFactory.getLogger(KjxmJbxxInfoController.class);
	
	//
	@Autowired
	private KjxmJbxxService		kjxmJbxxService;
	
	@ApiOperation(value = "分页查询全部信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<KjxmJbxxInfo> page(KjxmJbxxInfoVo vo) {
		logger.info("page", KjxmJbxxInfoController.class);
		KjxmJbxxInfo info = new KjxmJbxxInfo();
		if (!StringUtils.isNullOrEmpty(vo.getProjectName().trim())) {
			info.setProjectName(vo.getProjectName().trim());
		}
		if (!StringUtils.isNullOrEmpty(vo.getProjectDomain().trim())) {
			info.setProjectDomain(vo.getProjectDomain().trim());
		}
		if (!StringUtils.isNullOrEmpty(vo.getApprovalYear().trim())) {
			info.setApprovalYear(vo.getApprovalYear().trim());
		}
		if (!StringUtils.isNullOrEmpty(vo.getRegion().trim())) {
			info.setRegion(vo.getRegion().trim());
		}
		if (!StringUtils.isNullOrEmpty(vo.getProjectType().trim())) {
			info.setProjectType(vo.getProjectType().trim());
		}
		
		return kjxmJbxxService.page(vo.getPageNumber(), vo.getPageSize(), info);
	}
	
	@ApiOperation(value = "更新", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	@ResponseBody
	public String save(@RequestBody KjxmJbxxInfo info) {
		logger.info("save", KjxmDwxxInfoController.class);
		System.out.println(info.toString());
		kjxmJbxxService.save(info);
		return "1";
	}
	
	@ApiOperation(value = "删除", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestBody KjxmJbxxInfoVo vo) {
		logger.info("delete", KjxmJbxxInfoController.class);
		try {
			kjxmJbxxService.delete(vo.getList());
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
	
	@ApiOperation(value = "技术领域", notes = "")
	@RequestMapping(path = "/dicJsly", method = RequestMethod.POST)
	@ResponseBody
	public List<String> dicJsly() {
		logger.info("dicJsly", KjxmJbxxInfoController.class);
		return kjxmJbxxService.dicJsly();
	}
	
	@ApiOperation(value = "项目类型", notes = "")
	@RequestMapping(path = "/dicXmlx", method = RequestMethod.POST)
	@ResponseBody
	public List<String> dicXmlx() {
		logger.info("dicXmlx", KjxmJbxxInfoController.class);
		return kjxmJbxxService.dicXmlx();
	}
	
	@ApiOperation(value = "时间", notes = "")
	@RequestMapping(path = "/dicSj", method = RequestMethod.POST)
	@ResponseBody
	public List<String> dicSj() {
		logger.info("dicSj", KjxmJbxxInfoController.class);
		return kjxmJbxxService.dicSj();
	}
	
	@ApiOperation(value = "地区", notes = "")
	@RequestMapping(path = "/dicDq", method = RequestMethod.POST)
	@ResponseBody
	public List<String> dicDq() {
		
		logger.info("dicDq", KjxmJbxxInfoController.class);
		return kjxmJbxxService.dicDq();
	}
	
	@ApiOperation(value = "成果时间", notes = "")
	@RequestMapping(path = "/showDetail", method = RequestMethod.POST)
	public ModelAndView showDetail(KjxmJbxxInfo info, HttpServletRequest request) {
		logger.info("showDetail", KjxmJbxxInfoController.class);
		System.out.println(info.toString());
		info = kjxmJbxxService.findOne(info);
		ModelAndView view = new ModelAndView("kejiju/xiangmu/detail");
		view.addObject("KjxmJbxxInfo", info);
		return view;
	}
	
}
