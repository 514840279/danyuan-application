package tk.ainiyue.danyuan.application.softm.system.po;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.Length;

/**
 * 文件名 ： SysWebSystem.java
 * 包 名 ： tk.ainiyue.admin.system.po
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2016年6月24日 下午9:35:05
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_system_info")
public class SysSystemInfo {

	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "UUID", updatable = false)
	@NotNull
	@Length(max = 32)
	private String uuid	= "99c74ada3a1411e6bdcb10bf48e1d36a";

	@Column(name = "system_name")
	@NotNull
	@Length(max = 100)
	private String systemName;

	@Column(name = "discription")
	@NotNull
	@Length(max = 1024)
	private String discription;

	@Column(name = "developer")
	@NotNull
	@Length(max = 50)
	private String developer;

	@Column(name = "insert_datetime", updatable = false)
	@NotNull
	private Date   insertDatetime;

	@Column(name = "updata_datetime", insertable = false)
	private Date   updataDatetime;

	@Column(name = "flag")
	@Length(max = 30)
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
	 * 方法名 ： getSystemName
	 * 功 能 ： 返回变量 systemName 的值
	 *
	 * @return: String
	 */
	public String getSystemName() {
		return systemName;
	}

	/**
	 * 方法名 ： setSystemName
	 * 功 能 ： 设置变量 systemName 的值
	 */
	public void setSystemName(String systemName) {
		this.systemName = systemName;
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
	 * 方法名 ： getDeveloper
	 * 功 能 ： 返回变量 developer 的值
	 *
	 * @return: String
	 */
	public String getDeveloper() {
		return developer;
	}

	/**
	 * 方法名 ： setDeveloper
	 * 功 能 ： 设置变量 developer 的值
	 */
	public void setDeveloper(String developer) {
		this.developer = developer;
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

}
