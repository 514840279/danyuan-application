package org.danyuan.application.softm.roles.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 文件名 ： SysUserBaseInfo.java
 * 包 名 ： tk.ainiyue.admin.user.po
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2016年6月3日 下午5:51:10
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_user_base_info")
public class SysUserBaseInfo {
	
	@Id
	@Column(name = "UUID", updatable = false, columnDefinition = "varchar(36) COMMENT '主键'")
	private String	uuid;
	
	@NotNull
	@Column(name = "user_name", updatable = false, unique = true, columnDefinition = "varchar(50) COMMENT '用户名'")
	private String	userName;
	
	@Column(name = "password", columnDefinition = "varchar(128) COMMENT '密码'")
	@NotNull
	private String	password;
	
	@NotNull
	@Column(name = "persion_name", columnDefinition = "varchar(50) COMMENT '姓名'")
	private String	persionName;
	
	@Column(name = "sex", columnDefinition = "varchar(2) COMMENT '性别'")
	private String	sex;
	
	@Column(name = "email", columnDefinition = "varchar(100) COMMENT '邮箱'")
	private String	email;
	
	// 电话
	@Column(name = "phone", columnDefinition = "varchar(18) COMMENT '电话'")
	private String	phone;
	
	@Column(name = "age", columnDefinition = "varchar(2) COMMENT '年龄'")
	private Integer	age;
	
	@Column(name = "head_pic", columnDefinition = "varchar(1024) COMMENT '头像'")
	private String	headPic;
	
	//
	@Column(name = "major")
	private String	major;
	
	//
	@Column(name = "education")
	private String	education;
	
	//
	@Column(name = "university")
	private String	university;
	
	// QQ
	@Column(name = "qq")
	private String	qq;
	
	//
	@Column(name = "ancestral_address")
	private String	ancestralAddress;
	
	//
	@Column(name = "addr")
	private String	addr;
	
	@Column(name = "discription", columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String	discription;		// discription 描述
	
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP  COMMENT '录入时间'")
	private Date	createTime;			// create_time 插入时间
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String	createUser;			// create_user 插入人
	
	@Column(name = "update_time", insertable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date	updateTime;			// updata_time更新时间
	
	@Column(name = "update_user", insertable = false, columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String	updateUser;
	
	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer	deleteFlag;			// delete_flag 标记
	

		//
		@Column(name = "position")
		private String				position;


		//
		@Column(name = "statue")
		private String				statue;


		//
		@Column(name = "expected_place")
		private String				expectedPlace;


		//
		@Column(name = "work_nature")
		private String				workNature;


		//
		@Column(name = "expected_salary")
		private String				expectedSalary;
		
		@Column(name = "resume_path")
		private String				resumePath;

		
		/**
		 * 方法名 ： getPosition
		 * 功 能 ： 返回变量 position 的值
		 *
		 * @return: String
		 */
		public String getPosition() {
			return position;
		}

		/**
		 * 方法名 ： setPosition
		 * 功 能 ： 设置变量 position 的值
		 */
		public void setPosition(String position) {
			this.position = position;
		}
		

		/**
		 * 方法名 ： getStatue
		 * 功 能 ： 返回变量 statue 的值
		 *
		 * @return: String
		 */
		public String getStatue() {
			return statue;
		}

		/**
		 * 方法名 ： setStatue
		 * 功 能 ： 设置变量 statue 的值
		 */
		public void setStatue(String statue) {
			this.statue = statue;
		}


		/**
		 * 方法名 ： getExpectedPlace
		 * 功 能 ： 返回变量 expectedPlace 的值
		 *
		 * @return: String
		 */
		public String getExpectedPlace() {
			return expectedPlace;
		}

		/**
		 * 方法名 ： setExpectedPlace
		 * 功 能 ： 设置变量 expectedPlace 的值
		 */
		public void setExpectedPlace(String expectedPlace) {
			this.expectedPlace = expectedPlace;
		}


		/**
		 * 方法名 ： getWorkNature
		 * 功 能 ： 返回变量 workNature 的值
		 *
		 * @return: String
		 */
		public String getWorkNature() {
			return workNature;
		}

		/**
		 * 方法名 ： setWorkNature
		 * 功 能 ： 设置变量 workNature 的值
		 */
		public void setWorkNature(String workNature) {
			this.workNature = workNature;
		}


		/**
		 * 方法名 ： getExpectedSalary
		 * 功 能 ： 返回变量 expectedSalary 的值
		 *
		 * @return: String
		 */
		public String getExpectedSalary() {
			return expectedSalary;
		}

		/**
		 * 方法名 ： setExpectedSalary
		 * 功 能 ： 设置变量 expectedSalary 的值
		 */
		public void setExpectedSalary(String expectedSalary) {
			this.expectedSalary = expectedSalary;
		}

		/**
		 * @方法名 getResumePath
		 * @功能 返回变量 resumePath 的值
		 * @return String
		 */
		public String getResumePath() {
			return resumePath;
		}

		/**
		 * @方法名 setResumePath
		 * @功能 设置变量 resumePath 的值
		 */
		public void setResumePath(String resumePath) {
			this.resumePath = resumePath;
		}

	
	/**
	 * 方法名 ： getUuid
	 * 功 能 ： 返回变量 uuid 的值
	 *
	 * @return: String
	 */
	public String getUuid() {
		return uuid;
	}
	
	/**
	 * 方法名 ： setUuid
	 * 功 能 ： 设置变量 uuid 的值
	 */
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	/**
	 * 方法名 ： getUserName
	 * 功 能 ： 返回变量 userName 的值
	 *
	 * @return: String
	 */
	public String getUserName() {
		return userName;
	}
	
	/**
	 * 方法名 ： setUserName
	 * 功 能 ： 设置变量 userName 的值
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	/**
	 * 方法名 ： getPassword
	 * 功 能 ： 返回变量 password 的值
	 *
	 * @return: String
	 */
	public String getPassword() {
		return password;
	}
	
	/**
	 * 方法名 ： setPassword
	 * 功 能 ： 设置变量 password 的值
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	
	/**
	 * 方法名 ： getPersionName
	 * 功 能 ： 返回变量 persionName 的值
	 *
	 * @return: String
	 */
	public String getPersionName() {
		return persionName;
	}
	
	/**
	 * 方法名 ： setPersionName
	 * 功 能 ： 设置变量 persionName 的值
	 */
	public void setPersionName(String persionName) {
		this.persionName = persionName;
	}
	
	/**
	 * 方法名 ： getSex
	 * 功 能 ： 返回变量 sex 的值
	 *
	 * @return: String
	 */
	public String getSex() {
		return sex;
	}
	
	/**
	 * 方法名 ： setSex
	 * 功 能 ： 设置变量 sex 的值
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	/**
	 * 方法名 ： getAge
	 * 功 能 ： 返回变量 age 的值
	 *
	 * @return: Integer
	 */
	public Integer getAge() {
		return age;
	}
	
	/**
	 * 方法名 ： setAge
	 * 功 能 ： 设置变量 age 的值
	 */
	public void setAge(Integer age) {
		this.age = age;
	}
	
	/**
	 * 方法名 ： getDiscription
	 * 功 能 ： 返回变量 discription 的值
	 *
	 * @return: String
	 */
	public String getDiscription() {
		return discription;
	}
	
	/**
	 * 方法名 ： setDiscription
	 * 功 能 ： 设置变量 discription 的值
	 */
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	
	/**
	 * 方法名 ： getCreateTime
	 * 功 能 ： 返回变量 createTime 的值
	 *
	 * @return: Date
	 */
	public Date getCreateTime() {
		return createTime;
	}
	
	/**
	 * 方法名 ： setCreateTime
	 * 功 能 ： 设置变量 createTime 的值
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	/**
	 * 方法名 ： getCreateUser
	 * 功 能 ： 返回变量 createUser 的值
	 *
	 * @return: String
	 */
	public String getCreateUser() {
		return createUser;
	}
	
	/**
	 * 方法名 ： setCreateUser
	 * 功 能 ： 设置变量 createUser 的值
	 */
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	
	/**
	 * 方法名 ： getDeleteFlag
	 * 功 能 ： 返回变量 deleteFlag 的值
	 *
	 * @return: Integer
	 */
	public Integer getDeleteFlag() {
		return deleteFlag;
	}
	
	/**
	 * 方法名 ： setDeleteFlag
	 * 功 能 ： 设置变量 deleteFlag 的值
	 */
	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	
	/**
	 * 方法名 ： getEmail
	 * 功 能 ： 返回变量 email 的值
	 *
	 * @return: String
	 */
	public String getEmail() {
		return email;
	}
	
	/**
	 * 方法名 ： setEmail
	 * 功 能 ： 设置变量 email 的值
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	
	/**
	 * 方法名 ： getPhone
	 * 功 能 ： 返回变量 phone 的值
	 *
	 * @return: String
	 */
	public String getPhone() {
		return phone;
	}
	
	/**
	 * 方法名 ： getUpdateTime
	 * 功 能 ： 返回变量 updateTime 的值
	 *
	 * @return: Date
	 */
	public Date getUpdateTime() {
		return updateTime;
	}
	
	/**
	 * 方法名 ： setUpdateTime
	 * 功 能 ： 设置变量 updateTime 的值
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	/**
	 * 方法名 ： getUpdateUser
	 * 功 能 ： 返回变量 updateUser 的值
	 *
	 * @return: String
	 */
	public String getUpdateUser() {
		return updateUser;
	}
	
	/**
	 * 方法名 ： setUpdateUser
	 * 功 能 ： 设置变量 updateUser 的值
	 */
	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}
	
	/**
	 * 方法名 ： setPhone
	 * 功 能 ： 设置变量 phone 的值
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	/**
	 * 方法名 ： getHeadPic
	 * 功 能 ： 返回变量 headPic 的值
	 *
	 * @return: String
	 */
	public String getHeadPic() {
		return headPic;
	}
	
	/**
	 * 方法名 ： setHeadPic
	 * 功 能 ： 设置变量 headPic 的值
	 */
	public void setHeadPic(String headPic) {
		this.headPic = headPic;
	}
	
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数：
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysUserBaseInfo() {
		super();
	}
	
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param uuid
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysUserBaseInfo(String uuid) {
		super();
		this.uuid = uuid;
	}

	/**
	 * @方法名 getMajor
	 * @功能 返回变量 major 的值
	 * @return String
	 */
	public String getMajor() {
		return major;
	}

	/**
	 * @方法名 setMajor
	 * @功能 设置变量 major 的值
	 */
	public void setMajor(String major) {
		this.major = major;
	}

	/**
	 * @方法名 getEducation
	 * @功能 返回变量 education 的值
	 * @return String
	 */
	public String getEducation() {
		return education;
	}

	/**
	 * @方法名 setEducation
	 * @功能 设置变量 education 的值
	 */
	public void setEducation(String education) {
		this.education = education;
	}

	/**
	 * @方法名 getUniversity
	 * @功能 返回变量 university 的值
	 * @return String
	 */
	public String getUniversity() {
		return university;
	}

	/**
	 * @方法名 setUniversity
	 * @功能 设置变量 university 的值
	 */
	public void setUniversity(String university) {
		this.university = university;
	}

	/**
	 * @方法名 getQq
	 * @功能 返回变量 qq 的值
	 * @return String
	 */
	public String getQq() {
		return qq;
	}

	/**
	 * @方法名 setQq
	 * @功能 设置变量 qq 的值
	 */
	public void setQq(String qq) {
		this.qq = qq;
	}

	/**
	 * @方法名 getAncestralAddress
	 * @功能 返回变量 ancestralAddress 的值
	 * @return String
	 */
	public String getAncestralAddress() {
		return ancestralAddress;
	}

	/**
	 * @方法名 setAncestralAddress
	 * @功能 设置变量 ancestralAddress 的值
	 */
	public void setAncestralAddress(String ancestralAddress) {
		this.ancestralAddress = ancestralAddress;
	}

	/**
	 * @方法名 getAddr
	 * @功能 返回变量 addr 的值
	 * @return String
	 */
	public String getAddr() {
		return addr;
	}

	/**
	 * @方法名 setAddr
	 * @功能 设置变量 addr 的值
	 */
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	/**
	 * TODO(这里用一句话描述这个方法的作用)
	 * 
	 * @方法名 toString
	 * @参数 @return
	 * @参考 @see java.lang.Object#toString()
	 * @author Administrator
	 */

	@Override
	public String toString() {
		return "SysUserBaseInfo [uuid=" + uuid + ", userName=" + userName + ", password=" + password + ", persionName=" + persionName + ", sex=" + sex + ", email=" + email + ", phone=" + phone + ", age=" + age + ", headPic=" + headPic + ", major=" + major + ", education=" + education + ", university=" + university + ", qq=" + qq + ", ancestralAddress=" + ancestralAddress + ", addr=" + addr + ", discription=" + discription + ", createTime=" + createTime + ", createUser=" + createUser + ", updateTime=" + updateTime + ", updateUser=" + updateUser + ", deleteFlag=" + deleteFlag + "]";
	}
	
}
