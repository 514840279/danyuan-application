package tk.ainiyue.danyuan.application.crawler.task.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * The primary key class for the task_rule database table.
 */
@Embeddable
public class TaskRulePK implements Serializable {
	// default serial version id, required for serializable classes.
	private static final long	serialVersionUID	= 1L;

	private String				id;

	@Column(name = "rule_id")
	private String				ruleId;

	public TaskRulePK() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRuleId() {
		return this.ruleId;
	}

	public void setRuleId(String ruleId) {
		this.ruleId = ruleId;
	}

	@Override
	public boolean equals(Object other) {
		if (this == other) {
			return true;
		}
		if (!(other instanceof TaskRulePK)) {
			return false;
		}
		TaskRulePK castOther = (TaskRulePK) other;
		return this.id.equals(castOther.id) && this.ruleId.equals(castOther.ruleId);
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int hash = 17;
		hash = hash * prime + this.id.hashCode();
		hash = hash * prime + this.ruleId.hashCode();

		return hash;
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
		return "TaskRulePK [id=" + id + ", ruleId=" + ruleId + "]";
	}

}