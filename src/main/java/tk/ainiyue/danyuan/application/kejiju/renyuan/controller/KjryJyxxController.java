package tk.ainiyue.danyuan.application.kejiju.renyuan.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.kejiju.renyuan.po.KjryJyxxInfo;
import tk.ainiyue.danyuan.application.kejiju.renyuan.service.KjryJyxxService;
import tk.ainiyue.danyuan.application.kejiju.renyuan.vo.KjryJyxxInfoVo;

/**    
*  文件名 ： KjryJyxxInfoController.java  
*  包    名 ： tk.ainiyue.danyuan.application.kejiju.renyuan.controller  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： Administrator  
*  时    间 ： 2018年3月2日 上午9:57:49  
*  版    本 ： V1.0    
*/
@RestController
@RequestMapping("/kjryJyxxInfo")
@Api(value = "/KjryJyxxInfo", description = "科研人员教育信息")
public class KjryJyxxController {
	//
	private static final Logger	logger	= LoggerFactory.getLogger(KjryJyxxController.class);
	
	//
	@Autowired
	private KjryJyxxService	kjryJyxxService;
	
	@ApiOperation(value = "分页查询全部信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<KjryJyxxInfo> page(KjryJyxxInfoVo vo) {
		logger.info("page", KjryJyxxController.class);
		return kjryJyxxService.page(vo.getPageNumber(), vo.getPageSize(), vo.getInfo());
	}
	
	@ApiOperation(value = "更新", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	@ResponseBody
	public String save(@RequestBody KjryJyxxInfo info) {
		logger.info("save", KjryJyxxController.class);
		System.out.println(info.toString());
		kjryJyxxService.save(info);
		return "1";
	}
	
	@ApiOperation(value = "删除", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestBody KjryJyxxInfoVo vo) {
		logger.info("delete", KjryJyxxController.class);
		try {
			kjryJyxxService.delete(vo.getList());
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
}
