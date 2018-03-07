package tk.ainiyue.danyuan.application.kejiju.renyuan.controller;

import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.jdbc.StringUtils;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryGzllInfo;
import tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJbxxInfo;
import tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryGzllService;
import tk.ainiyue.danyuan.application.kejiju.renyuan.vo.KjryGzllInfoVo;

/**    
*  文件名 ： KjryGzllInfoController.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.renyuan.controller  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： Administrator  
*  时    间 ： 2018年3月2日 上午9:57:11  
*  版    本 ： V1.0    
*/
@RestController
@RequestMapping("/kjryGzllInfo")
@Api(value = "/KjryGzllInfo", description = "科研人员工作信息")
public class KjryGzllController {
	//
	private static final Logger	logger	= LoggerFactory.getLogger(KjryGzllController.class);
	
	//
	@Autowired
	private KjryGzllService		kjryGzllService;
	
	@ApiOperation(value = "更新", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	@ResponseBody
	public String save(@RequestBody KjryGzllInfo info) {
		logger.info("save", KjryGzllController.class);
		System.out.println(info.toString());
		kjryGzllService.save(info);
		return "1";
	}
	
	@ApiOperation(value = "删除", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestBody KjryGzllInfoVo vo) {
		logger.info("delete", KjryGzllController.class);
		try {
			kjryGzllService.delete(vo.getList());
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
	
	@ApiOperation(value = "查询全部信息", notes = "")
	@RequestMapping(path = "/list", method = RequestMethod.GET)
	public List<KjryGzllInfo> list(KjryJbxxInfo info) {
		logger.info("list", KjryGzllController.class);
		return kjryGzllService.list(info);
	}
	
	@ApiOperation(value = "showDetail", notes = "")
	@RequestMapping(path = "/showDetail", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView showDetail(KjryGzllInfo info) {
		logger.info("showDetail", KjryGzllController.class);
		if (StringUtils.isNullOrEmpty(info.getUuid())) {
			info.setUuid(UUID.randomUUID().toString());
		} else {
			info = kjryGzllService.findOne(info);
		}
		ModelAndView view = new ModelAndView("kejiju/renyuan/gongzuolvli_dateil");
		view.addObject("kjryGzllInfo", info);
		return view;
	}
}
