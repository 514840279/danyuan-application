package org.danyuan.application.resume.user.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysUserBaseInfo.java
 * @包名 org.danyuan.application.resume.user.po
 * @描述 sys_user_base_info的实体类
 * @时间 2020年04月25日 16:38:11
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_user_base_info")
@NamedQuery(name = "SysUserBaseInfo.findAll", query = "SELECT s FROM SysUserBaseInfo s")
public class SysUserBaseInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	// 职务
	@Column(name = "persion_name")
	private String				persionName;
	
	// 用户名
	@Column(name = "user_name")
	private String				userName;
	
	// 邮箱
	@Column(name = "email")
	private String				email;
	
	// 最高学历
	@Column(name = "education")
	private String				education;
	
	// 年龄
	@Column(name = "age", precision = 10)
	private Integer				age;
	
	// 状态
	@Column(name = "statue")
	private String				statue;
	
	// 期望薪资
	@Column(name = "expected_salary")
	private String				expectedSalary;
	
	// 地址
	@Column(name = "addr")
	private String				addr;
	
	// 期望工作城市
	@Column(name = "expected_place")
	private String				expectedPlace;
	
	// 电话
	@Column(name = "phone")
	private String				phone;
	
	// 大学
	@Column(name = "university")
	private String				university;
	
	// 密码
	@Column(name = "password")
	private String				password;
	
	// 职位
	@Column(name = "position")
	private String				position;
	
	// 工龄
	@Column(name = "work_nature")
	private String				workNature;
	
	// 简历保存本地路径
	@Column(name = "resume_path")
	private String				resumePath;
	
	// 专业
	@Column(name = "major")
	private String				major;
	
	// 性别
	@Column(name = "sex")
	private String				sex;
	
	// 祖籍
	@Column(name = "ancestral_address")
	private String				ancestralAddress;
	
	// 头像
	@Column(name = "head_pic")
	private String				headPic;
	
	// qq号
	@Column(name = "qq")
	private String				qq;
	
	/**
	 * 构造方法：
	 * 描 述： 默认构造函数
	 * 参 数：
	 * 作 者 ： test
	 * @throws
	 */
	public SysUserBaseInfo() {
		super();
	}
	
	public SysUserBaseInfo(String uuid, String userName, String password) {
		super();
		this.uuid = uuid;
		this.userName = userName;
		this.password = password;
	}
	
	/**
	 * 方法名 ： getPersionName
	 * 功 能 ： 返回变量 persionName 职务 的值
	 * @return: String
	 */
	public String getPersionName() {
		return persionName;
	}
	
	/**
	 * 方法名 ： setPersionName
	 * 功 能 ： 设置变量 persionName 职务 的值
	 */
	public void setPersionName(String persionName) {
		this.persionName = persionName;
	}
	
	/**
	 * 方法名 ： getUserName
	 * 功 能 ： 返回变量 userName 用户名 的值
	 * @return: String
	 */
	public String getUserName() {
		return userName;
	}
	
	/**
	 * 方法名 ： setUserName
	 * 功 能 ： 设置变量 userName 用户名 的值
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	/**
	 * 方法名 ： getEmail
	 * 功 能 ： 返回变量 email 邮箱 的值
	 * @return: String
	 */
	public String getEmail() {
		return email;
	}
	
	/**
	 * 方法名 ： setEmail
	 * 功 能 ： 设置变量 email 邮箱 的值
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	
	/**
	 * 方法名 ： getEducation
	 * 功 能 ： 返回变量 education 最高学历 的值
	 * @return: String
	 */
	public String getEducation() {
		return education;
	}
	
	/**
	 * 方法名 ： setEducation
	 * 功 能 ： 设置变量 education 最高学历 的值
	 */
	public void setEducation(String education) {
		this.education = education;
	}
	
	/**
	 * 方法名 ： getAge
	 * 功 能 ： 返回变量 age 年龄 的值
	 * @return: String
	 */
	public Integer getAge() {
		return age;
	}
	
	/**
	 * 方法名 ： setAge
	 * 功 能 ： 设置变量 age 年龄 的值
	 */
	public void setAge(Integer age) {
		this.age = age;
	}
	
	/**
	 * 方法名 ： getStatue
	 * 功 能 ： 返回变量 statue 状态 的值
	 * @return: String
	 */
	public String getStatue() {
		return statue;
	}
	
	/**
	 * 方法名 ： setStatue
	 * 功 能 ： 设置变量 statue 状态 的值
	 */
	public void setStatue(String statue) {
		this.statue = statue;
	}
	
	/**
	 * 方法名 ： getExpectedSalary
	 * 功 能 ： 返回变量 expectedSalary 期望薪资 的值
	 * @return: String
	 */
	public String getExpectedSalary() {
		return expectedSalary;
	}
	
	/**
	 * 方法名 ： setExpectedSalary
	 * 功 能 ： 设置变量 expectedSalary 期望薪资 的值
	 */
	public void setExpectedSalary(String expectedSalary) {
		this.expectedSalary = expectedSalary;
	}
	
	/**
	 * 方法名 ： getAddr
	 * 功 能 ： 返回变量 addr 地址 的值
	 * @return: String
	 */
	public String getAddr() {
		return addr;
	}
	
	/**
	 * 方法名 ： setAddr
	 * 功 能 ： 设置变量 addr 地址 的值
	 */
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	/**
	 * 方法名 ： getExpectedPlace
	 * 功 能 ： 返回变量 expectedPlace 期望工作城市 的值
	 * @return: String
	 */
	public String getExpectedPlace() {
		return expectedPlace;
	}
	
	/**
	 * 方法名 ： setExpectedPlace
	 * 功 能 ： 设置变量 expectedPlace 期望工作城市 的值
	 */
	public void setExpectedPlace(String expectedPlace) {
		this.expectedPlace = expectedPlace;
	}
	
	/**
	 * 方法名 ： getPhone
	 * 功 能 ： 返回变量 phone 电话 的值
	 * @return: String
	 */
	public String getPhone() {
		return phone;
	}
	
	/**
	 * 方法名 ： setPhone
	 * 功 能 ： 设置变量 phone 电话 的值
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	/**
	 * 方法名 ： getUniversity
	 * 功 能 ： 返回变量 university 大学 的值
	 * @return: String
	 */
	public String getUniversity() {
		return university;
	}
	
	/**
	 * 方法名 ： setUniversity
	 * 功 能 ： 设置变量 university 大学 的值
	 */
	public void setUniversity(String university) {
		this.university = university;
	}
	
	/**
	 * 方法名 ： getPassword
	 * 功 能 ： 返回变量 password 密码 的值
	 * @return: String
	 */
	public String getPassword() {
		return password;
	}
	
	/**
	 * 方法名 ： setPassword
	 * 功 能 ： 设置变量 password 密码 的值
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	
	/**
	 * 方法名 ： getPosition
	 * 功 能 ： 返回变量 position 职位 的值
	 * @return: String
	 */
	public String getPosition() {
		return position;
	}
	
	/**
	 * 方法名 ： setPosition
	 * 功 能 ： 设置变量 position 职位 的值
	 */
	public void setPosition(String position) {
		this.position = position;
	}
	
	/**
	 * 方法名 ： getWorkNature
	 * 功 能 ： 返回变量 workNature 工龄 的值
	 * @return: String
	 */
	public String getWorkNature() {
		return workNature;
	}
	
	/**
	 * 方法名 ： setWorkNature
	 * 功 能 ： 设置变量 workNature 工龄 的值
	 */
	public void setWorkNature(String workNature) {
		this.workNature = workNature;
	}
	
	/**
	 * 方法名 ： getResumePath
	 * 功 能 ： 返回变量 resumePath 简历保存本地路径 的值
	 * @return: String
	 */
	public String getResumePath() {
		return resumePath;
	}
	
	/**
	 * 方法名 ： setResumePath
	 * 功 能 ： 设置变量 resumePath 简历保存本地路径 的值
	 */
	public void setResumePath(String resumePath) {
		this.resumePath = resumePath;
	}
	
	/**
	 * 方法名 ： getMajor
	 * 功 能 ： 返回变量 major 专业 的值
	 * @return: String
	 */
	public String getMajor() {
		return major;
	}
	
	/**
	 * 方法名 ： setMajor
	 * 功 能 ： 设置变量 major 专业 的值
	 */
	public void setMajor(String major) {
		this.major = major;
	}
	
	/**
	 * 方法名 ： getSex
	 * 功 能 ： 返回变量 sex 性别 的值
	 * @return: String
	 */
	public String getSex() {
		return sex;
	}
	
	/**
	 * 方法名 ： setSex
	 * 功 能 ： 设置变量 sex 性别 的值
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	/**
	 * 方法名 ： getAncestralAddress
	 * 功 能 ： 返回变量 ancestralAddress 祖籍 的值
	 * @return: String
	 */
	public String getAncestralAddress() {
		return ancestralAddress;
	}
	
	/**
	 * 方法名 ： setAncestralAddress
	 * 功 能 ： 设置变量 ancestralAddress 祖籍 的值
	 */
	public void setAncestralAddress(String ancestralAddress) {
		this.ancestralAddress = ancestralAddress;
	}
	
	/**
	 * 方法名 ： getHeadPic
	 * 功 能 ： 返回变量 headPic 头像 的值
	 * @return: String
	 */
	public String getHeadPic() {
		return headPic;
	}
	
	/**
	 * 方法名 ： setHeadPic
	 * 功 能 ： 设置变量 headPic 头像 的值
	 */
	public void setHeadPic(String headPic) {
		this.headPic = headPic;
	}
	
	/**
	 * 方法名 ： getQq
	 * 功 能 ： 返回变量 qq qq号 的值
	 * @return: String
	 */
	public String getQq() {
		return qq;
	}
	
	/**
	 * 方法名 ： setQq
	 * 功 能 ： 设置变量 qq qq号 的值
	 */
	public void setQq(String qq) {
		this.qq = qq;
	}
	
	/**
	 * TODO(这里用一句话描述这个方法的作用)
	 * @方法名 toString
	 * @参数 @return
	 * @参考 @see java.lang.Object#toString()
	 * @author Administrator
	 */
	
	@Override
	public String toString() {
		return "SysUserBaseInfo [uuid=" + uuid + ", userName=" + userName + ", password=" + password + ", persionName=" + persionName + ", sex=" + sex + ", email=" + email + ", phone=" + phone + ", age=" + age + ", headPic=" + headPic + ", major=" + major + ", education=" + education + ", university=" + university + ", qq=" + qq + ", ancestralAddress=" + ancestralAddress + ", addr=" + addr + ", discription=" + discription + ", position=" + position + ", statue=" + statue + ", expectedPlace=" + expectedPlace + ", workNature=" + workNature + ", expectedSalary=" + expectedSalary + ", resumePath=" + resumePath + "]";
	}
	
}
