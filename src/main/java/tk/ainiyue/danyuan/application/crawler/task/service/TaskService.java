package tk.ainiyue.danyuan.application.crawler.task.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Order;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.common.base.BaseService;
import tk.ainiyue.danyuan.application.crawler.task.dao.TaskDao;
import tk.ainiyue.danyuan.application.crawler.task.dao.TaskRuleDao;
import tk.ainiyue.danyuan.application.crawler.task.po.Task;
import tk.ainiyue.danyuan.application.crawler.task.po.TaskRule;
import tk.ainiyue.danyuan.application.crawler.task.po.TaskRulePK;

@Service
public class TaskService implements BaseService<Task> {
	
	@Autowired
	TaskDao		taskDao;
	
	@Autowired
	TaskRuleDao	taskRuleDao;
	
	@Override
	public Task findOne(Task info) {
		Example<Task> example = Example.of(info);
		return taskDao.findOne(example);
	}
	
	@Override
	public List<Task> findAll(Task info) {
		return taskDao.findAll();
	}
	
	@Override
	public Page<Task> page(int pageNumber, int pageSize, Task info, Map<String, String> map, Order... order) {
		
		// Example<Task> example = Example.of(info);
		Sort sort = new Sort(order);
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		Page<Task> page = taskDao.findAll(new Specification<Task>() {
			
			@Override
			public Predicate toPredicate(Root<Task> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
				List<Predicate> list = new ArrayList<>();
				if (map.get("id") != null) {
					list.add(cb.like(root.get("id").as(String.class), "%" + map.get("id") + "%"));
				}
				if (map.get("taskName") != null) {
					list.add(cb.like(root.get("taskName").as(String.class), "%" + map.get("taskName") + "%"));
				}
				if (info.getTaskName() != null) {
					list.add(cb.like(root.get("taskName").as(String.class), "%" + info.getTaskName() + "%"));
				}
				if (map.get("status") != null) {
					list.add(cb.equal(root.get("status").as(String.class), map.get("status")));
				}
				if (info.getStatus() != null) {
					list.add(cb.equal(root.get("status").as(String.class), info.getStatus()));
				}
				if (map.get("appendixStatus") != null) {
					int st = "是".equals(map.get("appendixStatus")) ? 1 : 0;
					list.add(cb.equal(root.get("appendixStatus").as(Integer.class), st));
				}
				if (info.getAppendixStatus() != null) {
					list.add(cb.equal(root.get("appendixStatus").as(String.class), info.getAppendixStatus()));
				}
				if (map.get("timingStart") != null) {
					int st = "是".equals(map.get("timingStart")) ? 1 : 0;
					list.add(cb.equal(root.get("timingStart").as(Integer.class), st));
				}
				if (info.getTimingStart() != null) {
					list.add(cb.equal(root.get("timingStart").as(String.class), info.getTimingStart()));
				}
				return cb.and(list.toArray(new Predicate[list.size()]));
			}
		}, request);
		return page;
	}
	
	@Override
	public void save(Task info) {
		taskDao.save(info);
	}
	
	@Override
	public void save(List<Task> list) {
		taskDao.save(list);
	}
	
	@Override
	public void delete(Task info) {
		taskDao.delete(info);
	}
	
	@Override
	public void delete(List<Task> list) {
		for (Task task : list) {
			List<TaskRule> listr = taskRuleDao.findAll(task.getId());
			taskRuleDao.delete(listr);
		}
		taskDao.delete(list);
	}
	
	@Override
	public void trunc() {
		taskDao.deleteAllInBatch();
	}
	
	/**
	 * 方法名： startAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param list
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void startAll(List<Task> list) {
		for (Task task : list) {
			taskDao.upStatusStart(task.getId());
		}
	}
	
	/**
	 * 方法名： stopAll
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param list
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void stopAll(List<Task> list) {
		for (Task task : list) {
			taskDao.upStatusStop(task.getId());
		}
		
	}
	
	/**
	 * 方法名： upd
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param info
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void upd(Task info) {
		
		taskDao.upd(info.getAppendixStatus(), info.getExecuteTime(), info.getExecuteType(), info.getStatus(), info.getTaskName(), info.getUrl(), info.getThreadNumber(), info.getId(), info.getPostType(), info.getPostType(), info.getHead());
		
	}
	
	/**
	 * 方法名： copy
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param info
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void copy(Task info) {
		List<TaskRule> list = taskRuleDao.findAll(info.getId());
		String ids = UUID.randomUUID().toString();
		info.setId(ids);
		taskDao.save(info);
		for (TaskRule taskRule : list) {
			TaskRulePK id = new TaskRulePK();
			id.setId(ids);
			id.setRuleId(UUID.randomUUID().toString());
			taskRule.setId(id);
			taskRuleDao.save(taskRule);
		}
		
	}
	
	/**
	 * 方法名： checkurl
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param info
	 * 参 数： @return
	 * 返 回： Boolean
	 * 作 者 ： Administrator
	 * @throws
	 */
	public Boolean checkurl(String url) {
		Task info = new Task();
		info.setUrl(url);
		Example<Task> example = Example.of(info);
		List<Task> list = taskDao.findAll(example);
		System.err.println(list);
		if (list == null) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 方法名： clean
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param task
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public void clean(Task task) {
		taskDao.clean(task.getId());
	}
	
}
