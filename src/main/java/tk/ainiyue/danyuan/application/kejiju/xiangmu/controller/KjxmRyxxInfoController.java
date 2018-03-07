package tk.ainiyue.danyuan.application.kejiju.xiangmu.controller;

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
import tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmJbxxInfo;
import tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmRyxxInfo;
import tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmJbxxService;
import tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmRyxxService;
import tk.ainiyue.danyuan.application.kejiju.xiangmu.vo.KjxmRyxxInfoVo;

/**    
*  文件名 ： KjxmRyxxInfoController.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.xiangmu.controller  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年3月1日 下午10:54:43  
*  版    本 ： V1.0    
*/
@RestController
@RequestMapping("/kjxmRyxxInfo")
@Api(value = "/KjxmRyxxInfo", description = "科研项目人员信息")
public class KjxmRyxxInfoController {
	//
	private static final Logger	logger	= LoggerFactory.getLogger(KjxmRyxxInfoController.class);
	
	//
	@Autowired
	private KjxmRyxxService		kjxmRyxxService;
	
	//
	@Autowired
	private KjxmJbxxService		kjxmJbxxService;
	
	@ApiOperation(value = "更新", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	@ResponseBody
	public String save(@RequestBody KjxmRyxxInfo info) {
		logger.info("save", KjxmRyxxInfoController.class);
		KjxmJbxxInfo jbxx = new KjxmJbxxInfo();
		jbxx.setUuid(info.getXmjbUuid());
		jbxx = kjxmJbxxService.findOne(jbxx);
		info.setKjxmJbxxInfo(jbxx);
		System.out.println(info.toString());
		kjxmRyxxService.save(info);
		return "1";
	}
	
	@ApiOperation(value = "删除", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestBody KjxmRyxxInfoVo vo) {
		logger.info("delete", KjxmRyxxInfoController.class);
		try {
			kjxmRyxxService.delete(vo.getList());
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
	
	@ApiOperation(value = "查询全部信息", notes = "")
	@RequestMapping(path = "/list", method = RequestMethod.GET)
	public List<KjxmRyxxInfo> list(KjxmJbxxInfo info) {
		logger.info("list", KjxmRyxxInfoController.class);
		return kjxmRyxxService.list(info);
	}
	
	@ApiOperation(value = "upd", notes = "")
	@RequestMapping(path = "/upd", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView upd(KjxmRyxxInfoVo vo) {
		System.out.println(vo.toString());
		logger.info("upd", KjxmRyxxInfoController.class);
		KjxmRyxxInfo info = new KjxmRyxxInfo();
		KjxmJbxxInfo jb = new KjxmJbxxInfo();
		jb.setUuid(vo.getXmjbUuid());
		info.setKjxmJbxxInfo(jb);
		if (StringUtils.isNullOrEmpty(vo.getUuid())) {
			info.setUuid(UUID.randomUUID().toString());
		} else {
			info.setUuid(vo.getUuid());
			info = kjxmRyxxService.findOne(info);
		}
		ModelAndView view = new ModelAndView("kejiju/xiangmu/renyuan_upd");
		view.addObject("kjxmRyxxInfo", info);
		return view;
	}
	
	@ApiOperation(value = "showDetail", notes = "")
	@RequestMapping(path = "/showDetail", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView showDetail(KjxmRyxxInfo info) {
		logger.info("showDetail", KjxmRyxxInfoController.class);
		if (StringUtils.isNullOrEmpty(info.getUuid())) {
			info.setUuid(UUID.randomUUID().toString());
		} else {
			info = kjxmRyxxService.findOne(info);
		}
		ModelAndView view = new ModelAndView("kejiju/xiangmu/renyuan_dateil");
		view.addObject("kjxmRyxxInfo", info);
		return view;
	}
}
