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
 * The persistent class for the kjry_jyxx_info database table.
 * 
 */
@Entity
@Table(name = "kjry_jyxx_info")
@NamedQuery(name = "KjryJyxxInfo.findAll", query = "SELECT k FROM KjryJyxxInfo k")
public class KjryJyxxInfo implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	private String				uuid;
	
	// 国家
	private String				country;
	
	@Column(name = "create_time")
	private Timestamp			createTime;
	
	@Column(name = "create_user")
	private String				createUser;
	
	// 学位
	private String				degree;
	
	// 学历
	private String				education;
	
	// 结束时间
	@Column(name = "end_time")
	private String				endTime;
	
	// 专业
	private String				major;
	
	// 院校名称
	@Column(name = "school_name")
	private String				schoolName;
	
	// 起始时间
	@Column(name = "start_time")
	private String				startTime;
	
	// 指导教师
	private String				teacher;
	
	// 培训进修
	private String				training;
	
	// 院校组织机构代码
	@Column(name = "university_code")
	private String				universityCode;
	
	// 院校统一社会信用代码
	@Column(name = "university_uscc")
	private String				universityUscc;
	
	@Transient
	private String				personId;
	
	//bi-directional many-to-one association to KjryJbxxInfo
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "ryxx_uuid")
	@JsonIgnore
	private KjryJbxxInfo		kjryJbxxInfo;
	
	public KjryJyxxInfo() {
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
	
	public String getDegree() {
		return this.degree;
	}
	
	public void setDegree(String degree) {
		this.degree = degree;
	}
	
	public String getEducation() {
		return this.education;
	}
	
	public void setEducation(String education) {
		this.education = education;
	}
	
	public String getEndTime() {
		return this.endTime;
	}
	
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	
	public String getMajor() {
		return this.major;
	}
	
	public void setMajor(String major) {
		this.major = major;
	}
	
	public String getSchoolName() {
		return this.schoolName;
	}
	
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	
	public String getStartTime() {
		return this.startTime;
	}
	
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	
	public String getTeacher() {
		return this.teacher;
	}
	
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	
	public String getTraining() {
		return this.training;
	}
	
	public void setTraining(String training) {
		this.training = training;
	}
	
	public String getUniversityCode() {
		return this.universityCode;
	}
	
	public void setUniversityCode(String universityCode) {
		this.universityCode = universityCode;
	}
	
	public String getUniversityUscc() {
		return this.universityUscc;
	}
	
	public void setUniversityUscc(String universityUscc) {
		this.universityUscc = universityUscc;
	}
	
	public KjryJbxxInfo getKjryJbxxInfo() {
		return this.kjryJbxxInfo;
	}
	
	public void setKjryJbxxInfo(KjryJbxxInfo kjryJbxxInfo) {
		this.kjryJbxxInfo = kjryJbxxInfo;
	}
	
}