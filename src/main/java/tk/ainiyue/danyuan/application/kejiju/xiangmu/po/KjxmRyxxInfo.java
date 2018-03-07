package tk.ainiyue.danyuan.application.kejiju.xiangmu.po;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * The persistent class for the kjxm_ryxx_info database table.
 * 
 */
@Entity
@Table(name = "kjxm_ryxx_info")
@NamedQuery(name = "KjxmRyxxInfo.findAll", query = "SELECT k FROM KjxmRyxxInfo k")
public class KjxmRyxxInfo implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	private String				uuid;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "create_time")
	private Date				createTime;
	
	@Column(name = "create_user")
	private String				createUser;
	
	// 负责人出生日期
	@Column(name = "head_birthdate")
	private String				headBirthdate;
	
	// 负责人学位
	@Column(name = "head_degree")
	private String				headDegree;
	
	// 负责人学历
	@Column(name = "head_education")
	private String				headEducation;
	
	// 负责人邮箱
	@Column(name = "head_email")
	private String				headEmail;
	
	// 负责人民族
	@Column(name = "head_ethnic_group")
	private String				headEthnicGroup;
	
	// 负责人性别
	@Column(name = "head_gender")
	private String				headGender;
	
	// 负责人才称号
	@Column(name = "head_honorary")
	private String				headHonorary;
	
	// 负责人证件号码
	@Column(name = "head_id_number")
	private String				headIdNumber;
	
	// 负责人证件类型
	@Column(name = "head_id_type")
	private String				headIdType;
	
	// 负责人专业
	@Column(name = "head_major")
	private String				headMajor;
	
	// 负责人移动电话
	@Column(name = "head_mobile_telephone")
	private String				headMobileTelephone;
	
	// 负责人姓名
	@Column(name = "head_name")
	private String				headName;
	
	// 负责人所在单位
	@Column(name = "head_organization")
	private String				headOrganization;
	
	// 负责人政治面貌
	@Column(name = "head_political_status")
	private String				headPoliticalStatus;
	
	// 负责人职务级别
	@Column(name = "head_position_level")
	private String				headPositionLevel;
	
	// 负责人职务
	@Column(name = "head_position_title")
	private String				headPositionTitle;
	
	// 负责人职称
	@Column(name = "head_professional_title")
	private String				headProfessionalTitle;
	
	// 负责人研究方向
	@Column(name = "head_research_direction")
	private String				headResearchDirection;
	
	// 负责人毕业院校
	@Column(name = "head_school_name")
	private String				headSchoolName;
	
	// 负责人办公电话
	@Column(name = "head_telephone")
	private String				headTelephone;
	
	// 参加人出生日期
	@Column(name = "participant_birthday")
	private String				participantBirthday;
	
	// 参加人学位
	@Column(name = "participant_degree")
	private String				participantDegree;
	
	// 参加人学历
	@Column(name = "participant_education")
	private String				participantEducation;
	
	// 参加人性别
	@Column(name = "participant_gender")
	private String				participantGender;
	
	// 参加人证件号码
	@Column(name = "participant_id_number")
	private String				participantIdNumber;
	
	// 参加人证件类型
	@Column(name = "participant_id_type")
	private String				participantIdType;
	
	// 参加人专业
	@Column(name = "participant_major")
	private String				participantMajor;
	
	// 参加人姓名
	@Column(name = "participant_name")
	private String				participantName;
	
	// 参加人所在单位
	@Column(name = "participant_organization")
	private String				participantOrganization;
	
	// 参加人职务级别
	@Column(name = "participant_position_level")
	private String				participantPositionLevel;
	
	// 参加人职称
	@Column(name = "participant_profession_title")
	private String				participantProfessionTitle;
	
	// 参加人研究方向
	@Column(name = "participant_research_direction")
	private String				participantResearchDirection;
	
	// 参加人职务
	@Column(name = "participant_title")
	private String				participantTitle;
	
	// 参加人排序号 
	@Column(name = "participant_work_rank")
	private String				participantWorkRank;
	
	// 参加人工作时间
	@Column(name = "participant_working_time")
	private int					participantWorkingTime;
	
	// 人员角色
	private String				role;
	
	// 任务分工
	private String				task;
	
	@Transient
	private String				xmjbUuid;
	
	//bi-directional many-to-one association to KjxmJbxxInfo
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "xmjb_uuid")
	@JsonIgnore
	private KjxmJbxxInfo		kjxmJbxxInfo;
	
	/**  
	 *  方法名 ： getXmjbUuid 
	 *  功    能 ： 返回变量 xmjbUuid 的值  
	 *  @return: String 
	 */
	public String getXmjbUuid() {
		return xmjbUuid;
	}
	
	/**  
	 *  方法名 ： setXmjbUuid 
	 *  功    能 ： 设置变量 xmjbUuid 的值
	 */
	public void setXmjbUuid(String xmjbUuid) {
		this.xmjbUuid = xmjbUuid;
	}
	
	public KjxmRyxxInfo() {
	}
	
	public String getUuid() {
		return this.uuid;
	}
	
	public void setUuid(String uuid) {
		this.uuid = uuid;
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
	
	public void setKjxmJbxxInfo(KjxmJbxxInfo kjxmJbxxInfo) {
		this.kjxmJbxxInfo = kjxmJbxxInfo;
	}
	
}