package tk.ainiyue.danyuan.application.kejiju.renyuan.po;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * The persistent class for the kjry_gzll_info database table.
 * 
 */
@Entity
@Table(name = "kjry_gzll_info")
@NamedQuery(name = "KjryGzllInfo.findAll", query = "SELECT k FROM KjryGzllInfo k")
public class KjryGzllInfo implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	private String				uuid;
	
	// 国家
	private String				country;
	
	@Column(name = "create_time")
	private Timestamp			createTime;
	
	@Column(name = "create_user")
	private String				createUser;
	
	// 结束时间
	@Column(name = "end_time")
	private String				endTime;
	
	// 工作单位机构代码
	private String				organization;
	
	// 单位组织
	@Column(name = "organization_code")
	private String				organizationCode;
	
	// 职务级别
	@Column(name = "position_level")
	private String				positionLevel;
	
	// 职务
	@Column(name = "position_title")
	private String				positionTitle;
	
	// 职称
	@Column(name = "professional_title")
	private String				professionalTitle;
	
	// 工作内容
	@Column(name = "research_content")
	private String				researchContent;
	
	// 研究方向
	@Column(name = "research_direction")
	private String				researchDirection;
	
	// 工作性质
	@Column(name = "research_type")
	private String				researchType;
	
	// 起始时间
	@Column(name = "start_time")
	private String				startTime;
	
	// 单位统一社会信用代码
	@Column(name = "unified_social_credit_code")
	private String				unifiedSocialCreditCode;
	
	@Transient
	private String				personId;
	
	//bi-directional many-to-one association to KjryJbxxInfo
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "ryxx_uuid")
	@JsonIgnore
	private KjryJbxxInfo		kjryJbxxInfo;
	
	public KjryGzllInfo() {
	}
	
	/**  
	 *  方法名 ： getPersonId 
	 *  功    能 ： 返回变量 personId 的值  
	 *  @return: String 
	 */
	public String getPersonId() {
		return personId;
	}
	
	/**  
	 *  方法名 ： setPersonId 
	 *  功    能 ： 设置变量 personId 的值
	 */
	public void setPersonId(String personId) {
		this.personId = personId;
	}
	
	public String getUuid() {
		return this.uuid;
	}
	
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	public String getCountry() {
		return this.country;
	}
	
	public void setCountry(String country) {
		this.country = country;
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
	
	public String getEndTime() {
		return this.endTime;
	}
	
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	
	public String getOrganization() {
		return this.organization;
	}
	
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	
	public String getOrganizationCode() {
		return this.organizationCode;
	}
	
	public void setOrganizationCode(String organizationCode) {
		this.organizationCode = organizationCode;
	}
	
	public String getPositionLevel() {
		return this.positionLevel;
	}
	
	public void setPositionLevel(String positionLevel) {
		this.positionLevel = positionLevel;
	}
	
	public String getPositionTitle() {
		return this.positionTitle;
	}
	
	public void setPositionTitle(String positionTitle) {
		this.positionTitle = positionTitle;
	}
	
	public String getProfessionalTitle() {
		return this.professionalTitle;
	}
	
	public void setProfessionalTitle(String professionalTitle) {
		this.professionalTitle = professionalTitle;
	}
	
	public String getResearchContent() {
		return this.researchContent;
	}
	
	public void setResearchContent(String researchContent) {
		this.researchContent = researchContent;
	}
	
	public String getResearchDirection() {
		return this.researchDirection;
	}
	
	public void setResearchDirection(String researchDirection) {
		this.researchDirection = researchDirection;
	}
	
	public String getResearchType() {
		return this.researchType;
	}
	
	public void setResearchType(String researchType) {
		this.researchType = researchType;
	}
	
	public String getStartTime() {
		return this.startTime;
	}
	
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	
	public String getUnifiedSocialCreditCode() {
		return this.unifiedSocialCreditCode;
	}
	
	public void setUnifiedSocialCreditCode(String unifiedSocialCreditCode) {
		this.unifiedSocialCreditCode = unifiedSocialCreditCode;
	}
	
	public KjryJbxxInfo getKjryJbxxInfo() {
		return this.kjryJbxxInfo;
	}
	
	public void setKjryJbxxInfo(KjryJbxxInfo kjryJbxxInfo) {
		this.kjryJbxxInfo = kjryJbxxInfo;
	}
	
}