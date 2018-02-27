package tk.ainiyue.danyuan.application.kejiju.renyuan.po;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the kjry_gzll_info database table.
 * 
 */
@Entity
@Table(name="kjry_gzll_info")
@NamedQuery(name="KjryGzllInfo.findAll", query="SELECT k FROM KjryGzllInfo k")
public class KjryGzllInfo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String uuid;

	private String country;

	@Column(name="create_time")
	private Timestamp createTime;

	@Column(name="create_user")
	private String createUser;

	@Column(name="end_time")
	private String endTime;

	private String organization;

	@Column(name="organization_code")
	private String organizationCode;

	@Column(name="position_level")
	private String positionLevel;

	@Column(name="position_title")
	private String positionTitle;

	@Column(name="professional_title")
	private String professionalTitle;

	@Column(name="research_content")
	private String researchContent;

	@Column(name="research_direction")
	private String researchDirection;

	@Column(name="research_type")
	private String researchType;

	@Column(name="start_time")
	private String startTime;

	@Column(name="unified_social_credit_code")
	private String unifiedSocialCreditCode;

	//bi-directional many-to-one association to KjryJbxxInfo
	@ManyToOne
	@JoinColumn(name="ryxx_uuid")
	private KjryJbxxInfo kjryJbxxInfo;

	public KjryGzllInfo() {
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