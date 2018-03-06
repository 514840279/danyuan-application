package tk.ainiyue.danyuan.application.kejiju.xiangmu.po;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * The persistent class for the kjxm_jbxx_info database table.
 * 
 */
@Entity
@Table(name = "kjxm_jbxx_info")
@NamedQuery(name = "KjxmJbxxInfo.findAll", query = "SELECT k FROM KjxmJbxxInfo k")
public class KjxmJbxxInfo implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "uuid", columnDefinition = " varchar(36) COMMENT '主键'")
	private String				uuid;
	
	// 立项年度
	@Column(name = "approval_year")
	private String				approvalYear;
	
	// 中图分类号
	private String				cdc;
	
	// 中文关键词
	@Column(name = "cn_keyword")
	private String				cnKeyword;
	
	// 项目主管部门
	@Column(name = "competent_department")
	private String				competentDepartment;
	
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss", pattern = "yyyy-MM-dd hh:mm:ss")
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_time")
	private Date				createTime;
	
	@Column(name = "create_user")
	private String				createUser;
	
	// 学科分类代码
	private String				discipline;
	
	// 联系人邮箱
	private String				email;
	
	// 英文关键词
	@Column(name = "en_keyword")
	private String				enKeyword;
	
	// 预期成果指标
	@Column(name = "expected_index")
	private String				expectedIndex;
	
	// 中央拨付经费
	@Column(name = "govemment_fund")
	private Integer				govemmentFund;
	
	// 行业分类代码
	private String				industry;
	
	// 地方配套经费
	@Column(name = "local_fund")
	private Integer				localFund;
	
	// 联系人姓名
	private String				name;
	
	// 其他分类代码
	@Column(name = "other_code")
	private String				otherCode;
	
	// 其他来源经费
	@Column(name = "other_fund")
	private Integer				otherFund;
	
	// 科技计划指南描述
	@Column(name = "plan_abstract")
	private String				planAbstract;
	
	// 科技计划编码
	@Column(name = "plan_id")
	private String				planId;
	
	// 科技计划名称
	@Column(name = "plan_name")
	private String				planName;
	
	// 科技计划指南链接地址
	@Column(name = "plan_url")
	private String				planUrl;
	
	// 项目相关文档
	@Column(name = "porject_links")
	private String				porjectLinks;
	
	// 项目简介
	@Lob
	@Column(name = "project_abstract")
	private String				projectAbstract;
	
	// 项目实际结束时间
	@Column(name = "project_actual_endtime")
	private String				projectActualEndtime;
	
	// 项目实际起始时间
	@Column(name = "project_actual_start_time")
	private String				projectActualStartTime;
	
	// 项目领域名称
	@Column(name = "project_domain")
	private String				projectDomain;
	
	// 项目领域编码
	@Column(name = "project_domain_id")
	private String				projectDomainId;
	
	// 项目编码
	@Column(name = "project_id")
	private String				projectId;
	
	// 项目名称
	@Column(name = "project_name")
	private String				projectName;
	
	// 项目执行阶段
	@Column(name = "project_phase")
	private String				projectPhase;
	
	// 项目计划结束时间
	@Column(name = "project_plan_endtime")
	private String				projectPlanEndtime;
	
	// 项目计划起始时间
	@Column(name = "project_plan_start_time")
	private String				projectPlanStartTime;
	
	// 项目类别
	@Column(name = "project_type")
	private String				projectType;
	
	// 省级拨付经费
	@Column(name = "provincial_fund")
	private Integer				provincialFund;
	
	// 省市地区
	private String				region;
	
	// 主要研究内容
	@Lob
	@Column(name = "research_content")
	private String				researchContent;
	
	// 研究目标
	@Column(name = "research_target")
	private String				researchTarget;
	
	// 单位自筹经费
	@Column(name = "self_fund")
	private Integer				selfFund;
	
	// 联系人电话
	private String				telephone;
	
	// 项目总经费
	@Column(name = "total_fund")
	private Integer				totalFund;
	
	//bi-directional many-to-one association to KjxmRyxxInfo
	@OneToMany(mappedBy = "kjxmJbxxInfo")
	private List<KjxmRyxxInfo>	kjxmRyxxInfos;
	
	//bi-directional many-to-one association to KjxmDwxxInfo
	@OneToMany(mappedBy = "kjxmJbxxInfo")
	private List<KjxmDwxxInfo>	kjxmDwxxInfos;
	
	public KjxmJbxxInfo() {
	}
	
	public KjxmJbxxInfo(String uuid) {
		super();
		this.uuid = uuid;
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
	
	public Date getCreateTime() {
		return this.createTime;
	}
	
	public void setCreateTime(Date createTime) {
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
	
	public Integer getGovemmentFund() {
		return this.govemmentFund;
	}
	
	public void setGovemmentFund(Integer govemmentFund) {
		this.govemmentFund = govemmentFund;
	}
	
	public String getIndustry() {
		return this.industry;
	}
	
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	
	public Integer getLocalFund() {
		return this.localFund;
	}
	
	public void setLocalFund(Integer localFund) {
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
	
	public Integer getOtherFund() {
		return this.otherFund;
	}
	
	public void setOtherFund(Integer otherFund) {
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
	
	public Integer getProvincialFund() {
		return this.provincialFund;
	}
	
	public void setProvincialFund(Integer provincialFund) {
		this.provincialFund = provincialFund;
	}
	
	public String getRegion() {
		return this.region;
	}
	
	public void setRegion(String region) {
		this.region = region;
	}
	
	public String getResearchContent() {
		return this.researchContent;
	}
	
	public void setResearchContent(String researchContent) {
		this.researchContent = researchContent;
	}
	
	public String getResearchTarget() {
		return this.researchTarget;
	}
	
	public void setResearchTarget(String researchTarget) {
		this.researchTarget = researchTarget;
	}
	
	public Integer getSelfFund() {
		return this.selfFund;
	}
	
	public void setSelfFund(Integer selfFund) {
		this.selfFund = selfFund;
	}
	
	public String getTelephone() {
		return this.telephone;
	}
	
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	
	public Integer getTotalFund() {
		return this.totalFund;
	}
	
	public void setTotalFund(Integer totalFund) {
		this.totalFund = totalFund;
	}
	
	public List<KjxmRyxxInfo> getKjxmRyxxInfos() {
		return this.kjxmRyxxInfos;
	}
	
	public void setKjxmRyxxInfos(List<KjxmRyxxInfo> kjxmRyxxInfos) {
		this.kjxmRyxxInfos = kjxmRyxxInfos;
	}
	
	public KjxmRyxxInfo addKjxmRyxxInfo(KjxmRyxxInfo kjxmRyxxInfo) {
		getKjxmRyxxInfos().add(kjxmRyxxInfo);
		kjxmRyxxInfo.setKjxmJbxxInfo(this);
		
		return kjxmRyxxInfo;
	}
	
	public KjxmRyxxInfo removeKjxmRyxxInfo(KjxmRyxxInfo kjxmRyxxInfo) {
		getKjxmRyxxInfos().remove(kjxmRyxxInfo);
		kjxmRyxxInfo.setKjxmJbxxInfo(null);
		
		return kjxmRyxxInfo;
	}
	
	public List<KjxmDwxxInfo> getKjxmDwxxInfos() {
		return this.kjxmDwxxInfos;
	}
	
	public void setKjxmDwxxInfos(List<KjxmDwxxInfo> kjxmDwxxInfos) {
		this.kjxmDwxxInfos = kjxmDwxxInfos;
	}
	
	public KjxmDwxxInfo addKjxmDwxxInfo(KjxmDwxxInfo kjxmDwxxInfo) {
		getKjxmDwxxInfos().add(kjxmDwxxInfo);
		kjxmDwxxInfo.setKjxmJbxxInfo(this);
		
		return kjxmDwxxInfo;
	}
	
	public KjxmDwxxInfo removeKjxmDwxxInfo(KjxmDwxxInfo kjxmDwxxInfo) {
		getKjxmDwxxInfos().remove(kjxmDwxxInfo);
		kjxmDwxxInfo.setKjxmJbxxInfo(null);
		
		return kjxmDwxxInfo;
	}
	
	/** 
	*  方法名 ： toString
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @return  
	*  参    考 ： @see java.lang.Object#toString()  
	*  作    者 ： Administrator  
	*/
	
	@Override
	public String toString() {
		return "KjxmJbxxInfo [uuid=" + uuid + ", approvalYear=" + approvalYear + ", cdc=" + cdc + ", cnKeyword=" + cnKeyword + ", competentDepartment=" + competentDepartment + ", createTime=" + createTime + ", createUser=" + createUser + ", discipline=" + discipline + ", email=" + email + ", enKeyword=" + enKeyword + ", expectedIndex=" + expectedIndex + ", govemmentFund=" + govemmentFund + ", industry=" + industry + ", localFund=" + localFund + ", name=" + name + ", otherCode=" + otherCode + ", otherFund=" + otherFund + ", planAbstract=" + planAbstract + ", planId=" + planId + ", planName=" + planName + ", planUrl=" + planUrl + ", porjectLinks=" + porjectLinks + ", projectAbstract=" + projectAbstract + ", projectActualEndtime=" + projectActualEndtime + ", projectActualStartTime=" + projectActualStartTime + ", projectDomain=" + projectDomain + ", projectDomainId=" + projectDomainId + ", projectId=" + projectId + ", projectName=" + projectName + ", projectPhase=" + projectPhase + ", projectPlanEndtime=" + projectPlanEndtime + ", projectPlanStartTime=" + projectPlanStartTime + ", projectType=" + projectType + ", provincialFund=" + provincialFund + ", region=" + region + ", researchContent=" + researchContent + ", researchTarget=" + researchTarget + ", selfFund=" + selfFund + ", telephone=" + telephone + ", totalFund=" + totalFund + ", kjxmRyxxInfos=" + kjxmRyxxInfos + ", kjxmDwxxInfos=" + kjxmDwxxInfos + "]";
	}
	
}