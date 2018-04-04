package tk.ainiyue.danyuan.application.common.base;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import io.swagger.annotations.ApiOperation;

/**    
*  文件名 ： BaseController.java  
*  包    名 ： tk.ainiyue.danyuan.application.common.base  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  机能名称：
*  技能ID ：
*  作    者 ： wang  
*  时    间 ： 2018年4月3日 下午11:03:46  
*  版    本 ： V1.0    
*/
public class BaseController<T> {
	
	//
	private static final Logger	logger	= LoggerFactory.getLogger(BaseController.class);
	
	//
	@Autowired
	private BaseService<T>		baseService;
	
	@ApiOperation(value = "分页查询信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<T> page(@RequestBody Pagination<T> vo) {
		logger.info("page", BaseController.class);
		return baseService.page(vo.getPageNumber(), vo.getPageSize(), vo.getInfo());
	}
	
	@ApiOperation(value = "查询多个信息", notes = "")
	@RequestMapping(path = "/findAll", method = RequestMethod.POST)
	public List<T> findAll(@RequestBody T info) {
		logger.info("findAll", BaseController.class);
		return baseService.findAll(info);
	}
	
	@ApiOperation(value = "查询一个信息", notes = "")
	@RequestMapping(path = "/findOne", method = RequestMethod.POST)
	public String findOne(@RequestBody T info) {
		logger.info("findOne", BaseController.class);
		baseService.findOne(info);
		return "1";
	}
	
	@ApiOperation(value = "保存一个信息", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public String save(@RequestBody T info) {
		logger.info("save", BaseController.class);
		baseService.save(info);
		return "1";
		
	}
	
	@ApiOperation(value = "保存多个信息", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public String save(@RequestBody Pagination<T> vo) {
		logger.info("save", BaseController.class);
		baseService.save(vo.getList());
		return "1";
	}
	
	@ApiOperation(value = "删除多个信息", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(@RequestBody Pagination<T> vo) {
		logger.info("delete", BaseController.class);
		baseService.delete(vo.getList());
		return "1";
	}
	
	@ApiOperation(value = "删除一个信息", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(@RequestBody T info) {
		logger.info("delete", BaseController.class);
		baseService.delete(info);
		return "1";
	}
	
	@ApiOperation(value = "删除全部信息", notes = "")
	@RequestMapping(path = "/trunc", method = RequestMethod.POST)
	public String trunc() {
		logger.info("trunc", BaseController.class);
		baseService.trunc();
		return "1";
	}
	
}