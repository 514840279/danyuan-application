package tk.ainiyue.danyuan.application.kejiju.xiangmu.po;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the kjxm_ryxx_info database table.
 * 
 */
@Entity
@Table(name="kjxm_ryxx_info")
@NamedQuery(name="KjxmRyxxInfo.findAll", query="SELECT k FROM KjxmRyxxInfo k")
public class KjxmRyxxInfo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String uuid;

	@Column(name="create_time")
	private Timestamp createTime;

	@Column(name="create_user")
	private String createUser;

	@Column(name="head_birthdate")
	private String headBirthdate;

	@Column(name="head_degree")
	private String headDegree;

	@Column(name="head_education")
	private String headEducation;

	@Column(name="head_email")
	private String headEmail;

	@Column(name="head_ethnic_group")
	private String headEthnicGroup;

	@Column(name="head_gender")
	private String headGender;

	@Column(name="head_honorary")
	private String headHonorary;

	@Column(name="head_id_number")
	private String headIdNumber;

	@Column(name="head_id_type")
	private String headIdType;

	@Column(name="head_major")
	private String headMajor;

	@Column(name="head_mobile_telephone")
	private String headMobileTelephone;

	@Column(name="head_name")
	private String headName;

	@Column(name="head_organization")
	private String headOrganization;

	@Column(name="head_political_status")
	private String headPoliticalStatus;

	@Column(name="head_position_level")
	private String headPositionLevel;

	@Column(name="head_position_title")
	private String headPositionTitle;

	@Column(name="head_professional_title")
	private String headProfessionalTitle;

	@Column(name="head_research_direction")
	private String headResearchDirection;

	@Column(name="head_school_name")
	private String headSchoolName;

	@Column(name="head_telephone")
	private String headTelephone;

	@Column(name="participant_birthday")
	private String participantBirthday;

	@Column(name="participant_degree")
	private String participantDegree;

	@Column(name="participant_education")
	private String participantEducation;

	@Column(name="participant_gender")
	private String participantGender;

	@Column(name="participant_id_number")
	private String participantIdNumber;

	@Column(name="participant_id_type")
	private String participantIdType;

	@Column(name="participant_major")
	private String participantMajor;

	@Column(name="participant_name")
	private String participantName;

	@Column(name="participant_organization")
	private String participantOrganization;

	@Column(name="participant_position_level")
	private String participantPositionLevel;

	@Column(name="participant_profession_title")
	private String participantProfessionTitle;

	@Column(name="participant_research_direction")
	private String participantResearchDirection;

	@Column(name="participant_title")
	private String participantTitle;

	@Column(name="participant_work_rank")
	private String participantWorkRank;

	@Column(name="participant_working_time")
	private int participantWorkingTime;

	private String role;

	private String task;

	//bi-directional many-to-one association to KjxmJbxxInfo
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="xmjb_uuid",  insertable=false, updatable=false)
	private KjxmJbxxInfo kjxmJbxxInfo;



	public KjxmRyxxInfo() {
	}

	public String getUuid() {
		return this.uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
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

	public String getHeadBirthdate() {
		return this.headBirthdate;
	}

	public void setHeadBirthdate(String headBirthdate) {
		this.headBirthdate = headBirthdate;
	}

	public String getHeadDegree() {
		return this.headDegree;
	}

	public void setHeadDegree(String headDegree) {
		this.headDegree = headDegree;
	}

	public String getHeadEducation() {
		return this.headEducation;
	}

	public void setHeadEducation(String headEducation) {
		this.headEducation = headEducation;
	}

	public String getHeadEmail() {
		return this.headEmail;
	}

	public void setHeadEmail(String headEmail) {
		this.headEmail = headEmail;
	}

	public String getHeadEthnicGroup() {
		return this.headEthnicGroup;
	}

	public void setHeadEthnicGroup(String headEthnicGroup) {
		this.headEthnicGroup = headEthnicGroup;
	}

	public String getHeadGender() {
		return this.headGender;
	}

	public void setHeadGender(String headGender) {
		this.headGender = headGender;
	}

	public String getHeadHonorary() {
		return this.headHonorary;
	}

	public void setHeadHonorary(String headHonorary) {
		this.headHonorary = headHonorary;
	}

	public String getHeadIdNumber() {
		return this.headIdNumber;
	}

	public void setHeadIdNumber(String headIdNumber) {
		this.headIdNumber = headIdNumber;
	}

	public String getHeadIdType() {
		return this.headIdType;
	}

	public void setHeadIdType(String headIdType) {
		this.headIdType = headIdType;
	}

	public String getHeadMajor() {
		return this.headMajor;
	}

	public void setHeadMajor(String headMajor) {
		this.headMajor = headMajor;
	}

	public String getHeadMobileTelephone() {
		return this.headMobileTelephone;
	}

	public void setHeadMobileTelephone(String headMobileTelephone) {
		this.headMobileTelephone = headMobileTelephone;
	}

	public String getHeadName() {
		return this.headName;
	}

	public void setHeadName(String headName) {
		this.headName = headName;
	}

	public String getHeadOrganization() {
		return this.headOrganization;
	}

	public void setHeadOrganization(String headOrganization) {
		this.headOrganization = headOrganization;
	}

	public String getHeadPoliticalStatus() {
		return this.headPoliticalStatus;
	}

	public void setHeadPoliticalStatus(String headPoliticalStatus) {
		this.headPoliticalStatus = headPoliticalStatus;
	}

	public String getHeadPositionLevel() {
		return this.headPositionLevel;
	}

	public void setHeadPositionLevel(String headPositionLevel) {
		this.headPositionLevel = headPositionLevel;
	}

	public String getHeadPositionTitle() {
		return this.headPositionTitle;
	}

	public void setHeadPositionTitle(String headPositionTitle) {
		this.headPositionTitle = headPositionTitle;
	}

	public String getHeadProfessionalTitle() {
		return this.headProfessionalTitle;
	}

	public void setHeadProfessionalTitle(String headProfessionalTitle) {
		this.headProfessionalTitle = headProfessionalTitle;
	}

	public String getHeadResearchDirection() {
		return this.headResearchDirection;
	}

	public void setHeadResearchDirection(String headResearchDirection) {
		this.headResearchDirection = headResearchDirection;
	}

	public String getHeadSchoolName() {
		return this.headSchoolName;
	}

	public void setHeadSchoolName(String headSchoolName) {
		this.headSchoolName = headSchoolName;
	}

	public String getHeadTelephone() {
		return this.headTelephone;
	}

	public void setHeadTelephone(String headTelephone) {
		this.headTelephone = headTelephone;
	}

	public String getParticipantBirthday() {
		return this.participantBirthday;
	}

	public void setParticipantBirthday(String participantBirthday) {
		this.participantBirthday = participantBirthday;
	}

	public String getParticipantDegree() {
		return this.participantDegree;
	}

	public void setParticipantDegree(String participantDegree) {
		this.participantDegree = participantDegree;
	}

	public String getParticipantEducation() {
		return this.participantEducation;
	}

	public void setParticipantEducation(String participantEducation) {
		this.participantEducation = participantEducation;
	}

	public String getParticipantGender() {
		return this.participantGender;
	}

	public void setParticipantGender(String participantGender) {
		this.participantGender = participantGender;
	}

	public String getParticipantIdNumber() {
		return this.participantIdNumber;
	}

	public void setParticipantIdNumber(String participantIdNumber) {
		this.participantIdNumber = participantIdNumber;
	}

	public String getParticipantIdType() {
		return this.participantIdType;
	}

	public void setParticipantIdType(String participantIdType) {
		this.participantIdType = participantIdType;
	}

	public String getParticipantMajor() {
		return this.participantMajor;
	}

	public void setParticipantMajor(String participantMajor) {
		this.participantMajor = participantMajor;
	}

	public String getParticipantName() {
		return this.participantName;
	}

	public void setParticipantName(String participantName) {
		this.participantName = participantName;
	}

	public String getParticipantOrganization() {
		return this.participantOrganization;
	}

	public void setParticipantOrganization(String participantOrganization) {
		this.participantOrganization = participantOrganization;
	}

	public String getParticipantPositionLevel() {
		return this.participantPositionLevel;
	}

	public void setParticipantPositionLevel(String participantPositionLevel) {
		this.participantPositionLevel = participantPositionLevel;
	}

	public String getParticipantProfessionTitle() {
		return this.participantProfessionTitle;
	}

	public void setParticipantProfessionTitle(String participantProfessionTitle) {
		this.participantProfessionTitle = participantProfessionTitle;
	}

	public String getParticipantResearchDirection() {
		return this.participantResearchDirection;
	}

	public void setParticipantResearchDirection(String participantResearchDirection) {
		this.participantResearchDirection = participantResearchDirection;
	}

	public String getParticipantTitle() {
		return this.participantTitle;
	}

	public void setParticipantTitle(String participantTitle) {
		this.participantTitle = participantTitle;
	}

	public String getParticipantWorkRank() {
		return this.participantWorkRank;
	}

	public void setParticipantWorkRank(String participantWorkRank) {
		this.participantWorkRank = participantWorkRank;
	}

	public int getParticipantWorkingTime() {
		return this.participantWorkingTime;
	}

	public void setParticipantWorkingTime(int participantWorkingTime) {
		this.participantWorkingTime = participantWorkingTime;
	}

	public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getTask() {
		return this.task;
	}

	public void setTask(String task) {
		this.task = task;
	}

	public KjxmJbxxInfo getKjxmJbxxInfo() {
		return this.kjxmJbxxInfo;
	}

	public void setKjxmJbxxInfo1(KjxmJbxxInfo kjxmJbxxInfo) {
		this.kjxmJbxxInfo = kjxmJbxxInfo;
	}

}