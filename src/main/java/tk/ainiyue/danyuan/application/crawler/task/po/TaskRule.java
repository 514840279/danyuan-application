package tk.ainiyue.danyuan.application.crawler.task.po;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * The persistent class for the task_rule database table.
 */
@Entity
@Table(name = "task_rule")
@NamedQuery(name = "TaskRule.findAll", query = "SELECT t FROM TaskRule t")
public class TaskRule implements Serializable {
	private static final long	serialVersionUID	= 1L;

	@EmbeddedId
	private TaskRulePK			id;

	private String				context;

	private String				name;

	private Integer				status;

	private String				type;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "update_time", columnDefinition = " timestamp  default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	@org.hibernate.annotations.CreationTimestamp
	private Date				updateTime;

	@Column(name = "user_name")
	private String				userName;

	public TaskRule() {
	}

	public TaskRulePK getId() {
		return this.id;
	}

	public void setId(TaskRulePK id) {
		this.id = id;
	}

	public String getContext() {
		return this.context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Date getUpdateTime() {
		return this.updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
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

	/**
	 * 方法名 ： toString<br />
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用) <br />
	 * 参 数 ： @return <br />
	 * 参 考 ： @see java.lang.Object#toString() <br />
	 * 作 者 ： Administrator
	 */

	@Override
	public String toString() {
		return "TaskRule [id=" + id.toString() + ", context=" + context + ", name=" + name + ", status=" + status + ", type=" + type + ", updateTime=" + updateTime + "]";
	}

}