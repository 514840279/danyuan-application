package tk.ainiyue.danyuan.application.kejiju.renyuan.po;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;


/**
 * The persistent class for the kjry_jbxx_info database table.
 * 
 */
@Entity
@Table(name="kjry_jbxx_info")
@NamedQuery(name="KjryJbxxInfo.findAll", query="SELECT k FROM KjryJbxxInfo k")
public class KjryJbxxInfo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String uuid;

	@Column(name="bank_account")
	private String bankAccount;

	@Column(name="bank_name")
	private String bankName;

	private String birthdate;

	private String birthplace;

	private String cdc;

	@Column(name="create_time")
	private Timestamp createTime;

	@Column(name="create_user")
	private String createUser;

	private String degree;

	private String discipline;

	private String education;

	private String email;

	@Column(name="emergency_contact")
	private String emergencyContact;

	@Column(name="emergency_number")
	private String emergencyNumber;

	@Column(name="ethnic_group")
	private String ethnicGroup;

	private String fax;

	private String field;

	@Column(name="former_name")
	private String formerName;

	private String gender;

	@Column(name="home_telephone")
	private String homeTelephone;

	private String honorary;

	@Column(name="id_number")
	private String idNumber;

	@Column(name="id_type")
	private String idType;

	private String industry;

	private String introduce;

	private String microblog;

	@Column(name="mobile_telephone")
	private String mobileTelephone;

	private String name;

	private String nationality;

	@Column(name="native_place")
	private String nativePlace;

	@Column(name="office_telephone")
	private String officeTelephone;

	private String organization;

	@Column(name="organization_city")
	private String organizationCity;

	@Column(name="organization_property")
	private String organizationProperty;

	@Column(name="organization_province")
	private String organizationProvince;

	@Column(name="other_code")
	private String otherCode;

	@Column(name="person_id")
	private String personId;

	@Column(name="person_urls")
	private String personUrls;

	@Column(name="photo_url")
	private String photoUrl;

	@Column(name="political_status")
	private String politicalStatus;

	@Column(name="porfessional_title")
	private String porfessionalTitle;

	@Column(name="position_level")
	private String positionLevel;

	@Column(name="position_title")
	private String positionTitle;

	@Column(name="postal_address")
	private String postalAddress;

	private String postcode;

	@Column(name="research_direction")
	private String researchDirection;

	@Column(name="research_type")
	private String researchType;

	@Column(name="vocational_qualifications")
	private String vocationalQualifications;

	//bi-directional many-to-one association to KjryGzllInfo
	@OneToMany(mappedBy="kjryJbxxInfo")
	private List<KjryGzllInfo> kjryGzllInfos;

	//bi-directional many-to-one association to KjryJyxxInfo
	@OneToMany(mappedBy="kjryJbxxInfo")
	private List<KjryJyxxInfo> kjryJyxxInfos;

	//bi-directional many-to-one association to KjryXsjzInfo
	@OneToMany(mappedBy="kjryJbxxInfo")
	private List<KjryXsjzInfo> kjryXsjzInfos;

	//bi-directional many-to-one association to KjryXspsInfo
	@OneToMany(mappedBy="kjryJbxxInfo")
	private List<KjryXspsInfo> kjryXspsInfos;

	public KjryJbxxInfo() {
	}

	public String getUuid() {
		return this.uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getBankAccount() {
		return this.bankAccount;
	}

	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}

	public String getBankName() {
		return this.bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getBirthdate() {
		return this.birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getBirthplace() {
		return this.birthplace;
	}

	public void setBirthplace(String birthplace) {
		this.birthplace = birthplace;
	}

	public String getCdc() {
		return this.cdc;
	}

	public void setCdc(String cdc) {
		this.cdc = cdc;
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

	public String getDiscipline() {
		return this.discipline;
	}

	public void setDiscipline(String discipline) {
		this.discipline = discipline;
	}

	public String getEducation() {
		return this.education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmergencyContact() {
		return this.emergencyContact;
	}

	public void setEmergencyContact(String emergencyContact) {
		this.emergencyContact = emergencyContact;
	}

	public String getEmergencyNumber() {
		return this.emergencyNumber;
	}

	public void setEmergencyNumber(String emergencyNumber) {
		this.emergencyNumber = emergencyNumber;
	}

	public String getEthnicGroup() {
		return this.ethnicGroup;
	}

	public void setEthnicGroup(String ethnicGroup) {
		this.ethnicGroup = ethnicGroup;
	}

	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getField() {
		return this.field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getFormerName() {
		return this.formerName;
	}

	public void setFormerName(String formerName) {
		this.formerName = formerName;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getHomeTelephone() {
		return this.homeTelephone;
	}

	public void setHomeTelephone(String homeTelephone) {
		this.homeTelephone = homeTelephone;
	}

	public String getHonorary() {
		return this.honorary;
	}

	public void setHonorary(String honorary) {
		this.honorary = honorary;
	}

	public String getIdNumber() {
		return this.idNumber;
	}

	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}

	public String getIdType() {
		return this.idType;
	}

	public void setIdType(String idType) {
		this.idType = idType;
	}

	public String getIndustry() {
		return this.industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public String getIntroduce() {
		return this.introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getMicroblog() {
		return this.microblog;
	}

	public void setMicroblog(String microblog) {
		this.microblog = microblog;
	}

	public String getMobileTelephone() {
		return this.mobileTelephone;
	}

	public void setMobileTelephone(String mobileTelephone) {
		this.mobileTelephone = mobileTelephone;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNationality() {
		return this.nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getNativePlace() {
		return this.nativePlace;
	}

	public void setNativePlace(String nativePlace) {
		this.nativePlace = nativePlace;
	}

	public String getOfficeTelephone() {
		return this.officeTelephone;
	}

	public void setOfficeTelephone(String officeTelephone) {
		this.officeTelephone = officeTelephone;
	}

	public String getOrganization() {
		return this.organization;
	}

	public void setOrganization(String organization) {
		this.organization = organization;
	}

	public String getOrganizationCity() {
		return this.organizationCity;
	}

	public void setOrganizationCity(String organizationCity) {
		this.organizationCity = organizationCity;
	}

	public String getOrganizationProperty() {
		return this.organizationProperty;
	}

	public void setOrganizationProperty(String organizationProperty) {
		this.organizationProperty = organizationProperty;
	}

	public String getOrganizationProvince() {
		return this.organizationProvince;
	}

	public void setOrganizationProvince(String organizationProvince) {
		this.organizationProvince = organizationProvince;
	}

	public String getOtherCode() {
		return this.otherCode;
	}

	public void setOtherCode(String otherCode) {
		this.otherCode = otherCode;
	}

	public String getPersonId() {
		return this.personId;
	}

	public void setPersonId(String personId) {
		this.personId = personId;
	}

	public String getPersonUrls() {
		return this.personUrls;
	}

	public void setPersonUrls(String personUrls) {
		this.personUrls = personUrls;
	}

	public String getPhotoUrl() {
		return this.photoUrl;
	}

	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}

	public String getPoliticalStatus() {
		return this.politicalStatus;
	}

	public void setPoliticalStatus(String politicalStatus) {
		this.politicalStatus = politicalStatus;
	}

	public String getPorfessionalTitle() {
		return this.porfessionalTitle;
	}

	public void setPorfessionalTitle(String porfessionalTitle) {
		this.porfessionalTitle = porfessionalTitle;
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

	public String getPostalAddress() {
		return this.postalAddress;
	}

	public void setPostalAddress(String postalAddress) {
		this.postalAddress = postalAddress;
	}

	public String getPostcode() {
		return this.postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
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

	public String getVocationalQualifications() {
		return this.vocationalQualifications;
	}

	public void setVocationalQualifications(String vocationalQualifications) {
		this.vocationalQualifications = vocationalQualifications;
	}

	public List<KjryGzllInfo> getKjryGzllInfos() {
		return this.kjryGzllInfos;
	}

	public void setKjryGzllInfos(List<KjryGzllInfo> kjryGzllInfos) {
		this.kjryGzllInfos = kjryGzllInfos;
	}

	public KjryGzllInfo addKjryGzllInfo(KjryGzllInfo kjryGzllInfo) {
		getKjryGzllInfos().add(kjryGzllInfo);
		kjryGzllInfo.setKjryJbxxInfo(this);

		return kjryGzllInfo;
	}

	public KjryGzllInfo removeKjryGzllInfo(KjryGzllInfo kjryGzllInfo) {
		getKjryGzllInfos().remove(kjryGzllInfo);
		kjryGzllInfo.setKjryJbxxInfo(null);

		return kjryGzllInfo;
	}

	public List<KjryJyxxInfo> getKjryJyxxInfos() {
		return this.kjryJyxxInfos;
	}

	public void setKjryJyxxInfos(List<KjryJyxxInfo> kjryJyxxInfos) {
		this.kjryJyxxInfos = kjryJyxxInfos;
	}

	public KjryJyxxInfo addKjryJyxxInfo(KjryJyxxInfo kjryJyxxInfo) {
		getKjryJyxxInfos().add(kjryJyxxInfo);
		kjryJyxxInfo.setKjryJbxxInfo(this);

		return kjryJyxxInfo;
	}

	public KjryJyxxInfo removeKjryJyxxInfo(KjryJyxxInfo kjryJyxxInfo) {
		getKjryJyxxInfos().remove(kjryJyxxInfo);
		kjryJyxxInfo.setKjryJbxxInfo(null);

		return kjryJyxxInfo;
	}

	public List<KjryXsjzInfo> getKjryXsjzInfos() {
		return this.kjryXsjzInfos;
	}

	public void setKjryXsjzInfos(List<KjryXsjzInfo> kjryXsjzInfos) {
		this.kjryXsjzInfos = kjryXsjzInfos;
	}

	public KjryXsjzInfo addKjryXsjzInfo(KjryXsjzInfo kjryXsjzInfo) {
		getKjryXsjzInfos().add(kjryXsjzInfo);
		kjryXsjzInfo.setKjryJbxxInfo(this);

		return kjryXsjzInfo;
	}

	public KjryXsjzInfo removeKjryXsjzInfo(KjryXsjzInfo kjryXsjzInfo) {
		getKjryXsjzInfos().remove(kjryXsjzInfo);
		kjryXsjzInfo.setKjryJbxxInfo(null);

		return kjryXsjzInfo;
	}

	public List<KjryXspsInfo> getKjryXspsInfos() {
		return this.kjryXspsInfos;
	}

	public void setKjryXspsInfos(List<KjryXspsInfo> kjryXspsInfos) {
		this.kjryXspsInfos = kjryXspsInfos;
	}

	public KjryXspsInfo addKjryXspsInfo(KjryXspsInfo kjryXspsInfo) {
		getKjryXspsInfos().add(kjryXspsInfo);
		kjryXspsInfo.setKjryJbxxInfo(this);

		return kjryXspsInfo;
	}

	public KjryXspsInfo removeKjryXspsInfo(KjryXspsInfo kjryXspsInfo) {
		getKjryXspsInfos().remove(kjryXspsInfo);
		kjryXspsInfo.setKjryJbxxInfo(null);

		return kjryXspsInfo;
	}

}