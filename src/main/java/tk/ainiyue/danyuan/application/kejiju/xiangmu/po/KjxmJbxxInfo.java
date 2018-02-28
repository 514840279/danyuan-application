package tk.ainiyue.danyuan.application.kejiju.xiangmu.po;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;


/**
 * The persistent class for the kjxm_jbxx_info database table.
 * 
 */
@Entity
@Table(name="kjxm_jbxx_info")
@NamedQuery(name="KjxmJbxxInfo.findAll", query="SELECT k FROM KjxmJbxxInfo k")
public class KjxmJbxxInfo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String uuid;

	@Column(name="approval_year")
	private String approvalYear;

	private String cdc;

	@Column(name="cn_keyword")
	private String cnKeyword;

	@Column(name="competent_department")
	private String competentDepartment;

	@Column(name="create_time")
	private Timestamp createTime;

	@Column(name="create_user")
	private String createUser;

	private String discipline;

	private String email;

	@Column(name="en_keyword")
	private String enKeyword;

	@Column(name="expected_index")
	private String expectedIndex;

	@Column(name="govemment_fund")
	private int govemmentFund;

	private String industry;

	@Column(name="local_fund")
	private int localFund;

	private String name;

	@Column(name="other_code")
	private String otherCode;

	@Column(name="other_fund")
	private int otherFund;

	@Column(name="plan_abstract")
	private String planAbstract;

	@Column(name="plan_id")
	private String planId;

	@Column(name="plan_name")
	private String planName;

	@Column(name="plan_url")
	private String planUrl;

	@Column(name="porject_links")
	private String porjectLinks;

	@Lob
	@Column(name="project_abstract")
	private String projectAbstract;

	@Column(name="project_actual_endtime")
	private String projectActualEndtime;

	@Column(name="project_actual_start_time")
	private String projectActualStartTime;

	@Column(name="project_domain")
	private String projectDomain;

	@Column(name="project_domain_id")
	private String projectDomainId;

	@Column(name="project_id")
	private String projectId;

	@Column(name="project_name")
	private String projectName;

	@Column(name="project_phase")
	private String projectPhase;

	@Column(name="project_plan_endtime")
	private String projectPlanEndtime;

	@Column(name="project_plan_start_time")
	private String projectPlanStartTime;

	@Column(name="project_type")
	private String projectType;

	@Column(name="provincial_fund")
	private int provincialFund;

	private String region;

	@Column(name="research_target")
	private String researchTarget;

	@Lob
	@Column(name="`research-content`")
	private String research_content;

	@Column(name="self_fund")
	private int selfFund;

	private String telephone;

	@Column(name="total_fund")
	private int totalFund;

	//bi-directional many-to-one association to KjxmRyxxInfo
	@OneToMany(mappedBy="kjxmJbxxInfo")
	private List<KjxmRyxxInfo> kjxmRyxxInfos;

	public KjxmJbxxInfo() {
	}

	public String getUuid() {
		return this.uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getApprovalYear() {
		return this.approvalYear;
	}

	public void setApprovalYear(String approvalYear) {
		this.approvalYear = approvalYear;
	}

	public String getCdc() {
		return this.cdc;
	}

	public void setCdc(String cdc) {
		this.cdc = cdc;
	}

	public String getCnKeyword() {
		return this.cnKeyword;
	}

	public void setCnKeyword(String cnKeyword) {
		this.cnKeyword = cnKeyword;
	}

	public String getCompetentDepartment() {
		return this.competentDepartment;
	}

	public void setCompetentDepartment(String competentDepartment) {
		this.competentDepartment = competentDepartment;
	}

	public Timestamp getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}

	public String getCreateUser() {
		return this.createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public String getDiscipline() {
		return this.discipline;
	}

	public void setDiscipline(String discipline) {
		this.discipline = discipline;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEnKeyword() {
		return this.enKeyword;
	}

	public void setEnKeyword(String enKeyword) {
		this.enKeyword = enKeyword;
	}

	public String getExpectedIndex() {
		return this.expectedIndex;
	}

	public void setExpectedIndex(String expectedIndex) {
		this.expectedIndex = expectedIndex;
	}

	public int getGovemmentFund() {
		return this.govemmentFund;
	}

	public void setGovemmentFund(int govemmentFund) {
		this.govemmentFund = govemmentFund;
	}

	public String getIndustry() {
		return this.industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public int getLocalFund() {
		return this.localFund;
	}

	public void setLocalFund(int localFund) {
		this.localFund = localFund;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOtherCode() {
		return this.otherCode;
	}

	public void setOtherCode(String otherCode) {
		this.otherCode = otherCode;
	}

	public int getOtherFund() {
		return this.otherFund;
	}

	public void setOtherFund(int otherFund) {
		this.otherFund = otherFund;
	}

	public String getPlanAbstract() {
		return this.planAbstract;
	}

	public void setPlanAbstract(String planAbstract) {
		this.planAbstract = planAbstract;
	}

	public String getPlanId() {
		return this.planId;
	}

	public void setPlanId(String planId) {
		this.planId = planId;
	}

	public String getPlanName() {
		return this.planName;
	}

	public void setPlanName(String planName) {
		this.planName = planName;
	}

	public String getPlanUrl() {
		return this.planUrl;
	}

	public void setPlanUrl(String planUrl) {
		this.planUrl = planUrl;
	}

	public String getPorjectLinks() {
		return this.porjectLinks;
	}

	public void setPorjectLinks(String porjectLinks) {
		this.porjectLinks = porjectLinks;
	}

	public String getProjectAbstract() {
		return this.projectAbstract;
	}

	public void setProjectAbstract(String projectAbstract) {
		this.projectAbstract = projectAbstract;
	}

	public String getProjectActualEndtime() {
		return this.projectActualEndtime;
	}

	public void setProjectActualEndtime(String projectActualEndtime) {
		this.projectActualEndtime = projectActualEndtime;
	}

	public String getProjectActualStartTime() {
		return this.projectActualStartTime;
	}

	public void setProjectActualStartTime(String projectActualStartTime) {
		this.projectActualStartTime = projectActualStartTime;
	}

	public String getProjectDomain() {
		return this.projectDomain;
	}

	public void setProjectDomain(String projectDomain) {
		this.projectDomain = projectDomain;
	}

	public String getProjectDomainId() {
		return this.projectDomainId;
	}

	public void setProjectDomainId(String projectDomainId) {
		this.projectDomainId = projectDomainId;
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

	public String getProjectPhase() {
		return this.projectPhase;
	}

	public void setProjectPhase(String projectPhase) {
		this.projectPhase = projectPhase;
	}

	public String getProjectPlanEndtime() {
		return this.projectPlanEndtime;
	}

	public void setProjectPlanEndtime(String projectPlanEndtime) {
		this.projectPlanEndtime = projectPlanEndtime;
	}

	public String getProjectPlanStartTime() {
		return this.projectPlanStartTime;
	}

	public void setProjectPlanStartTime(String projectPlanStartTime) {
		this.projectPlanStartTime = projectPlanStartTime;
	}

	public String getProjectType() {
		return this.projectType;
	}

	public void setProjectType(String projectType) {
		this.projectType = projectType;
	}

	public int getProvincialFund() {
		return this.provincialFund;
	}

	public void setProvincialFund(int provincialFund) {
		this.provincialFund = provincialFund;
	}

	public String getRegion() {
		return this.region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getResearchTarget() {
		return this.researchTarget;
	}

	public void setResearchTarget(String researchTarget) {
		this.researchTarget = researchTarget;
	}

	public String getResearch_content() {
		return this.research_content;
	}

	public void setResearch_content(String research_content) {
		this.research_content = research_content;
	}

	public int getSelfFund() {
		return this.selfFund;
	}

	public void setSelfFund(int selfFund) {
		this.selfFund = selfFund;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public int getTotalFund() {
		return this.totalFund;
	}

	public void setTotalFund(int totalFund) {
		this.totalFund = totalFund;
	}

	public List<KjxmRyxxInfo> getKjxmRyxxInfos() {
		return this.kjxmRyxxInfos;
	}

	public void setKjxmRyxxInfos(List<KjxmRyxxInfo> kjxmRyxxInfos) {
		this.kjxmRyxxInfos = kjxmRyxxInfos;
	}

}