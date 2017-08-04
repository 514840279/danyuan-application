package tk.ainiyue.danyuan.application.user.userbase.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.Length;

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
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@NotNull
	@Length(max = 32)
	@Column(name = "UUID", updatable = false)
	private String uuid;

	@NotNull
	@Length(max = 50)
	@Column(name = "user_name", updatable = false, unique = true)
	private String userName;

	@Column(name = "password")
	@NotNull
	@Length(max = 50)
	private String password;

	@NotNull
	@Length(max = 50)
	@Column(name = "persion_name")
	private String persionName;

	@Length(max = 2)
	@Column(name = "sex")
	private String sex;

	@Column(name = "age")
	private int	   age;

	@Column(name = "seniority")
	private float  seniority;

	@NotNull
	@Column(name = "insert_datetime", updatable = false)
	private Date   insertDatetime;

	@Column(name = "updata_datetime")
	private Date   updataDatetime;

	@Length(max = 2)
	@Column(name = "flag")
	private String flag;

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
	 * 方法名 ： getSeniority
	 * 功 能 ： 返回变量 seniority 的值
	 *
	 * @return: Float
	 */
	public Float getSeniority() {
		return seniority;
	}

	/**
	 * 方法名 ： setSeniority
	 * 功 能 ： 设置变量 seniority 的值
	 */
	public void setSeniority(Float seniority) {
		this.seniority = seniority;
	}

	/**
	 * 方法名 ： getInsertDatetime
	 * 功 能 ： 返回变量 insertDatetime 的值
	 *
	 * @return: Date
	 */
	public Date getInsertDatetime() {
		return insertDatetime;
	}

	/**
	 * 方法名 ： setInsertDatetime
	 * 功 能 ： 设置变量 insertDatetime 的值
	 */
	public void setInsertDatetime(Date insertDatetime) {
		this.insertDatetime = insertDatetime;
	}

	/**
	 * 方法名 ： getUpdataDatetime
	 * 功 能 ： 返回变量 updataDatetime 的值
	 *
	 * @return: Date
	 */
	public Date getUpdataDatetime() {
		return updataDatetime;
	}

	/**
	 * 方法名 ： setUpdataDatetime
	 * 功 能 ： 设置变量 updataDatetime 的值
	 */
	public void setUpdataDatetime(Date updataDatetime) {
		this.updataDatetime = updataDatetime;
	}

	/**
	 * 方法名 ： setAge
	 * 功 能 ： 设置变量 age 的值
	 */
	public void setAge(int age) {
		this.age = age;
	}

	/**
	 * 方法名 ： setSeniority
	 * 功 能 ： 设置变量 seniority 的值
	 */
	public void setSeniority(float seniority) {
		this.seniority = seniority;
	}

	/**
	 * 方法名 ： getFlag
	 * 功 能 ： 返回变量 flag 的值
	 *
	 * @return: String
	 */
	public String getFlag() {
		return flag;
	}

	/**
	 * 方法名 ： setFlag
	 * 功 能 ： 设置变量 flag 的值
	 */
	public void setFlag(String flag) {
		this.flag = flag;
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

}
