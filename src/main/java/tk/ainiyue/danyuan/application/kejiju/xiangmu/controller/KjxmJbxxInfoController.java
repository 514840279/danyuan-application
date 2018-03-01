package tk.ainiyue.danyuan.application.kejiju.xiangmu.controller;

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
import tk.ainiyue.danyuan.application.kejiju.xiangmu.po.KjxmJbxxInfo;
import tk.ainiyue.danyuan.application.kejiju.xiangmu.service.KjxmJbxxInfoService;
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
	private KjxmJbxxInfoService	kjxmJbxxInfoService;
	
	@ApiOperation(value = "分页查询全部部门信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<KjxmJbxxInfo> page(KjxmJbxxInfoVo vo) {
		logger.info("page", KjxmJbxxInfoController.class);
		return kjxmJbxxInfoService.page(vo.getPageNumber(), vo.getPageSize(), vo.getInfo());
	}
	
	@ApiOperation(value = "分页查询全部部门信息", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	@ResponseBody
	public String save(@RequestBody KjxmJbxxInfo info) {
		logger.info("save", KjxmDwxxInfoController.class);
		System.out.println(info.toString());
		kjxmJbxxInfoService.save(info);
		return "1";
	}
	
	@ApiOperation(value = "删除组织机构管理信息", notes = "")
	@RequestMapping(path = "/sysDepartmentDelete", method = RequestMethod.POST)
	@ResponseBody
	public String delete(@RequestBody KjxmJbxxInfoVo vo) {
		logger.info("delete", KjxmJbxxInfoController.class);
		try {
			kjxmJbxxInfoService.delete(vo.getList());
			return "1";
		} catch (Exception e) {
			return "0";
		}
	}
}
