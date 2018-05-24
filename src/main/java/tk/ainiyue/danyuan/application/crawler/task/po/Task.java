package tk.ainiyue.danyuan.application.crawler.task.po;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQuery;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;

/**
 * The persistent class for the task database table.
 */
@Entity
@NamedQuery(name = "Task.findAll", query = "SELECT t FROM Task t")
public class Task implements Serializable {
	private static final long	serialVersionUID	= 1L;

	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "id", columnDefinition = " varchar(36) COMMENT '主键'")
	private String				id;

	@Column(name = "appendix_status")
	private Integer				appendixStatus;

	@Column(name = "comfurm_task")
	private Integer				comfurmTask;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@org.hibernate.annotations.CreationTimestamp
	private Date				createTime;

	@Column(name = "err_task")
	private Integer				errTask;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "execute_last_time", columnDefinition = " timestamp  default CURRENT_TIMESTAMP  COMMENT '最后一次执行时间'")
	@org.hibernate.annotations.CreationTimestamp
	private Date				executeLastTime;

	@Column(name = "execute_time")
	private String				executeTime;

	@Column(name = "execute_type")
	private String				executeType;

	@Column(name = "timing_start", columnDefinition = " int default '0' COMMENT '是否定时启动'")
	private Integer				timingStart;

	@Column(name = "character_set", columnDefinition = " varchar(12) default 'utf-8' COMMENT '字符集'")
	private String				characterSet;

	@Lob
	private String				head;

	@Column(name = "last_task")
	private Integer				lastTask;

	private String				status;

	@Column(name = "task_name")
	private String				taskName;

	@Column(name = "thread_number")
	private Integer				threadNumber;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "update_time", columnDefinition = " timestamp  default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	@org.hibernate.annotations.CreationTimestamp
	private Date				updateTime;

	private String				url;

	@Column(name = "post_type")
	private String				postType;
	@Column(name = "post_data")
	private String				postData;

	@Column(name = "user_name")
	private String				userName;

	public Task() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Integer getAppendixStatus() {
		return this.appendixStatus;
	}

	public void setAppendixStatus(Integer appendixStatus) {
		this.appendixStatus = appendixStatus;
	}

	public Integer getComfurmTask() {
		return this.comfurmTask;
	}

	public void setComfurmTask(Integer comfurmTask) {
		this.comfurmTask = comfurmTask;
	}

	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getErrTask() {
		return this.errTask;
	}

	public void setErrTask(Integer errTask) {
		this.errTask = errTask;
	}

	public Date getExecuteLastTime() {
		return this.executeLastTime;
	}

	public void setExecuteLastTime(Date executeLastTime) {
		this.executeLastTime = executeLastTime;
	}

	public String getExecuteTime() {
		return this.executeTime;
	}

	public void setExecuteTime(String executeTime) {
		this.executeTime = executeTime;
	}

	public String getExecuteType() {
		return this.executeType;
	}

	public void setExecuteType(String executeType) {
		this.executeType = executeType;
	}

	public String getHead() {
		return this.head;
	}

	public void setHead(String head) {
		this.head = head;
	}

	public Integer getLastTask() {
		return this.lastTask;
	}

	public void setLastTask(Integer lastTask) {
		this.lastTask = lastTask;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getTaskName() {
		return this.taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	public Integer getThreadNumber() {
		return this.threadNumber;
	}

	public void setThreadNumber(Integer threadNumber) {
		this.threadNumber = threadNumber;
	}

	public Date getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * 方法名 ： getPostType <br />
	 * 功 能 ： 返回变量 postType 的值 <br />
	 * @return: String
	 */
	public String getPostType() {
		return postType;
	}

	/**
	 * 方法名 ： setPostType <br />
	 * 功 能 ： 设置变量 postType 的值
	 */
	public void setPostType(String postType) {
		this.postType = postType;
	}

	/**
	 * 方法名 ： getPostData <br />
	 * 功 能 ： 返回变量 postData 的值 <br />
	 * @return: String
	 */
	public String getPostData() {
		return postData;
	}

	/**
	 * 方法名 ： setPostData <br />
	 * 功 能 ： 设置变量 postData 的值
	 */
	public void setPostData(String postData) {
		this.postData = postData;
	}

	/**
	 * 方法名 ： getTimingStart <br />
	 * 功 能 ： 返回变量 timingStart 的值 <br />
	 * @return: Boolean
	 */
	public Integer getTimingStart() {
		return timingStart;
	}

	/**
	 * 方法名 ： setTimingStart <br />
	 * 功 能 ： 设置变量 timingStart 的值
	 */
	public void setTimingStart(Integer timingStart) {
		this.timingStart = timingStart;
	}

	/**
	 * 方法名 ： getCharacterSet <br />
	 * 功 能 ： 返回变量 characterSet 的值 <br />
	 * @return: String
	 */
	public String getCharacterSet() {
		return characterSet;
	}

	/**
	 * 方法名 ： setCharacterSet <br />
	 * 功 能 ： 设置变量 characterSet 的值
	 */
	public void setCharacterSet(String characterSet) {
		this.characterSet = characterSet;
	}

	/**
	 * 方法名 ： getUserName <br />
	 * 功 能 ： 返回变量 userName 的值 <br />
	 * @return: String
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * 方法名 ： setUserName <br />
	 * 功 能 ： 设置变量 userName 的值
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

}