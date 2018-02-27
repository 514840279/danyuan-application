package tk.ainiyue.danyuan.application.kejiju.chengguo.po;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the kjcg_jbxx_info database table.
 * 
 */
@Entity
@Table(name="kjcg_jbxx_info")
@NamedQuery(name="KjcgJbxxInfo.findAll", query="SELECT k FROM KjcgJbxxInfo k")
public class KjcgJbxxInfo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String uuid;

	private String awards;

	private String cdc;

	@Column(name="completed_date")
	private String completedDate;

	@Column(name="completed_organization")
	private String completedOrganization;

	private String completedby;

	@Column(name="create_time")
	private Timestamp createTime;

	@Column(name="create_user")
	private byte[] createUser;

	private String discipline;

	private String industry;

	private String keyword;

	@Column(name="other_code")
	private String otherCode;

	@Column(name="project_id")
	private String projectId;

	@Column(name="project_name")
	private String projectName;

	@Column(name="result_abstract")
	private String resultAbstract;

	@Column(name="result_id")
	private String resultId;

	@Column(name="result_links")
	private String resultLinks;

	@Column(name="result_title")
	private String resultTitle;

	@Column(name="result_type")
	private String resultType;

	public KjcgJbxxInfo() {
	}

	public String getUuid() {
		return this.uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getAwards() {
		return this.awards;
	}

	public void setAwards(String awards) {
		this.awards = awards;
	}

	public String getCdc() {
		return this.cdc;
	}

	public void setCdc(String cdc) {
		this.cdc = cdc;
	}

	public String getCompletedDate() {
		return this.completedDate;
	}

	public void setCompletedDate(String completedDate) {
		this.completedDate = completedDate;
	}

	public String getCompletedOrganization() {
		return this.completedOrganization;
	}

	public void setCompletedOrganization(String completedOrganization) {
		this.completedOrganization = completedOrganization;
	}

	public String getCompletedby() {
		return this.completedby;
	}

	public void setCompletedby(String completedby) {
		this.completedby = completedby;
	}

	public Timestamp getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	public byte[] getCreateUser() {
		return this.createUser;
	}

	public void setCreateUser(byte[] createUser) {
		this.createUser = createUser;
	}

	public String getDiscipline() {
		return this.discipline;
	}

	public void setDiscipline(String discipline) {
		this.discipline = discipline;
	}

	public String getIndustry() {
		return this.industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public String getKeyword() {
		return this.keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getOtherCode() {
		return this.otherCode;
	}

	public void setOtherCode(String otherCode) {
		this.otherCode = otherCode;
	}

	public String getProjectId() {
		return this.projectId;
	}

	public void setProjectId(String projectId) {
		this.projectId = projectId;
	}

	public String getProjectName() {
		return this.projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getResultAbstract() {
		return this.resultAbstract;
	}

	public void setResultAbstract(String resultAbstract) {
		this.resultAbstract = resultAbstract;
	}

	public String getResultId() {
		return this.resultId;
	}

	public void setResultId(String resultId) {
		this.resultId = resultId;
	}

	public String getResultLinks() {
		return this.resultLinks;
	}

	public void setResultLinks(String resultLinks) {
		this.resultLinks = resultLinks;
	}

	public String getResultTitle() {
		return this.resultTitle;
	}

	public void setResultTitle(String resultTitle) {
		this.resultTitle = resultTitle;
	}

	public String getResultType() {
		return this.resultType;
	}

	public void setResultType(String resultType) {
		this.resultType = resultType;
	}

}