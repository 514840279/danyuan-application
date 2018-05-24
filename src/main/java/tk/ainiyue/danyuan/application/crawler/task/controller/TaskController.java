package tk.ainiyue.danyuan.application.crawler.task.controller;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import tk.ainiyue.danyuan.application.common.base.Pagination;
import tk.ainiyue.danyuan.application.crawler.task.po.Task;
import tk.ainiyue.danyuan.application.crawler.task.service.TaskService;

@RestController
@RequestMapping("/task")
@Api(value = "/TaskController", description = "爬虫任务")
public class TaskController {
	//
	private static final Logger	logger	= LoggerFactory.getLogger(TaskController.class);
	
	@Autowired
	TaskService					taskService;
	
	@ApiOperation(value = "查询全部信息", notes = "")
	@RequestMapping(path = "/page", method = RequestMethod.POST)
	public Page<Task> page(@RequestBody Pagination<Task> vo) {
		logger.info("page", TaskController.class);
		Order order = new Order(Direction.DESC, "createTime");
		if (vo.getSortName() != null) {
			order = new Order(vo.getOrder(), vo.getSortName());
		}
		if (vo.getInfo() == null) {
			vo.setInfo(new Task());
		}
		return taskService.page(vo.getPageNumber().intValue(), vo.getPageSize().intValue(), vo.getInfo(), vo.getMap(), order);
	}
	
	@ApiOperation(value = "查询全部信息", notes = "")
	@RequestMapping(path = "/findAll", method = RequestMethod.POST)
	public List<Task> findAll(Task info) {
		return taskService.findAll(info);
	}
	
	public String findOne(@RequestBody Task info) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@ApiOperation(value = "新建信息", notes = "")
	@RequestMapping(path = "/save", method = RequestMethod.POST)
	public String save(@RequestBody Task info, HttpServletRequest request) {
		
		if (info.getId() == null) {
			info.setId(UUID.randomUUID().toString());
			info.setStatus("停止");
		}
		if (info.getHead() == null || "".equals(info.getHead())) {
			String header = headers(request);
			info.setHead(header);
		}
		if (info.getCharacterSet() == null || "".equals(info.getCharacterSet())) {
			String characterSet = characterSet(info);
			info.setCharacterSet(characterSet);
		}
		taskService.save(info);
		return "1";
	}
	
	/**
	 * 方法名： characterSet
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param url
	 * 参 数： @return
	 * 返 回： String
	 * 作 者 ： Administrator
	 * @throws
	 */
	private String characterSet(Task info) {
		// try {
		// CloseableHttpClient httpCilent = HttpClients.createDefault();
		// // 发送get请求
		// HttpGet request = new HttpGet(info.getUrl());
		// HttpResponse response = httpCilent.execute(request);
		// /** 请求发送成功，并得到响应 **/
		// if (response.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {
		// /** 读取服务器返回过来的json字符串数据 **/
		// String strResult = EntityUtils.toString(response.getEntity());
		// // System.err.println(strResult);
		// String reg = "<*?charset=[\"\\']?([a-zA-z0-9\\-\\_]+)(\\1)*?";
		// // 创建 Pattern 对象
		// Pattern r = Pattern.compile(reg);
		// // 现在创建 matcher 对象
		// Matcher m = r.matcher(strResult.toLowerCase());
		// if (m.find()) {
		// return m.group(1).toString().toUpperCase();
		// }
		// }
		// } catch (IOException e) {
		// return null;
		// }
		
		return null;
	}
	
	/**
	 * 方法名： headers
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param request
	 * 参 数： @return
	 * 返 回： String
	 * 作 者 ： Administrator
	 * @throws
	 */
	private String headers(HttpServletRequest request) {
		String headers = "";
		// 获取所有的消息头名称
		Enumeration<String> headerNames = request.getHeaderNames();
		// 获取获取的消息头名称，获取对应的值，并输出
		while (headerNames.hasMoreElements()) {
			String nextElement = headerNames.nextElement();
			// System.out.println(nextElement + ":" + request.getHeader(nextElement));
			switch (nextElement) {
				case ("host"):
					break;
				case ("content-length"):
					break;
				case ("accept"):
					break;
				case ("origin"):
					break;
				case ("content-type"):
					break;
				case ("referer"):
					break;
				case ("cookie"):
					break;
				default:
					headers += nextElement + ":" + request.getHeader(nextElement) + "\n";
			}
		}
		return headers;
	}
	
	@ApiOperation(value = "新建信息", notes = "")
	@RequestMapping(path = "/copy", method = RequestMethod.POST)
	public String copy(@RequestBody Task info) {
		info.setStatus("停止");
		taskService.copy(info);
		return "1";
	}
	
	public String save(Pagination<Task> vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@ApiOperation(value = "删除信息", notes = "")
	@RequestMapping(path = "/delete", method = RequestMethod.POST)
	public String delete(@RequestBody Pagination<Task> vo) {
		taskService.delete(vo.getList());
		return "1";
	}
	
	public String delete(Task info) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public String trunc() {
		// TODO Auto-generated method stub
		return null;
	}
	
	@ApiOperation(hidden = true, value = "/addBefor")
	@RequestMapping(path = "/addBefor", method = RequestMethod.GET)
	public ModelAndView addBefor(HttpServletRequest request) {
		logger.info("addBefor", TaskController.class);
		ModelAndView view = new ModelAndView("crawler/add");
		Task task = new Task();
		task.setAppendixStatus(0);
		task.setTimingStart(0);
		task.setPostType("GET");
		task.setThreadNumber(15);
		// task.setCharacterSet("UTF-8");
		view.addObject("task", task);
		return view;
	}
	
	@ApiOperation(value = "启动采集器信息", notes = "")
	@RequestMapping(path = "/startAll", method = RequestMethod.POST)
	public String startAll(@RequestBody Pagination<Task> vo) {
		taskService.startAll(vo.getList());
		return "1";
	}
	
	@ApiOperation(value = "启动采集器信息", notes = "")
	@RequestMapping(path = "/stopAll", method = RequestMethod.POST)
	public String stopAll(@RequestBody Pagination<Task> vo) {
		taskService.stopAll(vo.getList());
		return "1";
	}
	
	@ApiOperation(hidden = true, value = "/updBefor")
	@RequestMapping(path = "/updBefor", method = RequestMethod.GET)
	public ModelAndView updBefor(HttpServletRequest request) {
		logger.info("updBefor", TaskController.class);
		ModelAndView view = new ModelAndView("crawler/add");
		Task task = new Task();
		task.setId(request.getParameter("id"));
		task = taskService.findOne(task);
		view.addObject("task", task);
		return view;
	}
	
	@ApiOperation(value = "检查url重复", notes = "")
	@RequestMapping(path = "/checkurl", method = RequestMethod.POST)
	public Map<String, Boolean> checkurl(String code) {
		logger.info("checkurl", TaskController.class);
		boolean boo = taskService.checkurl(code);
		Map<String, Boolean> map = new HashMap<>();
		map.put("valid", boo);
		return map;
	}
	
	@ApiOperation(value = "删除信息", notes = "")
	@RequestMapping(path = "/clean", method = RequestMethod.POST)
	public String clean(@RequestBody Task task) {
		taskService.clean(task);
		return "1";
	}
}
