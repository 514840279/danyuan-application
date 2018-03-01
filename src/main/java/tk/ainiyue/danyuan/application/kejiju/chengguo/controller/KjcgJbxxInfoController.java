package tk.ainiyue.danyuan.application.kejiju.chengguo.controller;

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
import tk.ainiyue.danyuan.application.kejiju.chengguo.po.KjcgJbxxInfo;
import tk.ainiyue.danyuan.application.kejiju.chengguo.service.KjcgJbxxInfoService;
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
public class KjcgJbxxInfoController {
	//
	private static final Logger	logger	= LoggerFactory.getLogger(KjcgJbxxInfoController.class);
	
	//
	@Autowired
	private KjcgJbxxInfoService	kjcgJbxxInfoService;
	
	@ApiOperation(value = "分页查询全部部门信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<KjcgJbxxInfo> page(KjcgJbxxInfoVo vo) {
		logger.info("page", KjcgJbxxInfoController.class);
		return kjcgJbxxInfoService.page(vo.getPageNumber(), vo.getPageSize(), vo.getInfo());
	}
	
	@ApiOperation(value = "分页查询全部部门信息", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	@ResponseBody
	public String save(@RequestBody KjcgJbxxInfo info) {
		logger.info("save", KjcgJbxxInfoController.class);
		System.out.println(info.toString());
		kjcgJbxxInfoService.save(info);
		return "1";
	}
	
	@ApiOperation(value = "删除组织机构管理信息", notes = "")
	@RequestMapping(path = "/sysDepartmentDelete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestBody KjcgJbxxInfoVo vo) {
		logger.info("delete", KjcgJbxxInfoController.class);
		try {
			kjcgJbxxInfoService.delete(vo.getList());
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
}
