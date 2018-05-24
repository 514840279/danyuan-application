package tk.ainiyue.danyuan.application.softm.syslog.po;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 文件名 ： VSysComnLogs.java
 * 包 名 ： com.shumeng.application.softm.syslog
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月23日 下午3:36:41
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "v_sys_comn_logs")
public class VSysComnLogs {
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "id", columnDefinition = " varchar(36) COMMENT '主键'")
	private String	id;

	@Column(name = "ip", columnDefinition = " varchar(200) COMMENT 'ip'")
	private String	ip;
	@Column(name = "create_user", columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String	createUser;

	@Column(name = "param_list", columnDefinition = " varchar(2000)  COMMENT '请求参数'")
	private String	paramList;

	@Column(name = "DATE1", columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String	date1;

	@Column(name = "TIME1", columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String	time1;

	@Column(name = "num", columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private Long	num;

	/**
	 * 方法名 ： getId <br />
	 * 功 能 ： 返回变量 id 的值 <br />
	 * @return: String
	 */
	public String getId() {
		return id;
	}

	/**
	 * 方法名 ： setId <br />
	 * 功 能 ： 设置变量 id 的值
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * 方法名 ： getIp
	 * 功 能 ： 返回变量 ip 的值
	 * @return: String
	 */
	public String getIp() {
		return ip;
	}

	/**
	 * 方法名 ： setIp
	 * 功 能 ： 设置变量 ip 的值
	 */
	public void setIp(String ip) {
		this.ip = ip;
	}

	/**
	 * 方法名 ： getCreateUser
	 * 功 能 ： 返回变量 createUser 的值
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
	 * 方法名 ： getParamList
	 * 功 能 ： 返回变量 paramList 的值
	 * @return: String
	 */
	public String getParamList() {
		return paramList;
	}

	/**
	 * 方法名 ： setParamList
	 * 功 能 ： 设置变量 paramList 的值
	 */
	public void setParamList(String paramList) {
		this.paramList = paramList;
	}

	/**
	 * 方法名 ： getDate1
	 * 功 能 ： 返回变量 date1 的值
	 * @return: String
	 */
	public String getDate1() {
		return date1;
	}

	/**
	 * 方法名 ： setDate1
	 * 功 能 ： 设置变量 date1 的值
	 */
	public void setDate1(String date1) {
		this.date1 = date1;
	}

	/**
	 * 方法名 ： getTime1
	 * 功 能 ： 返回变量 time1 的值
	 * @return: String
	 */
	public String getTime1() {
		return time1;
	}

	/**
	 * 方法名 ： setTime1
	 * 功 能 ： 设置变量 time1 的值
	 */
	public void setTime1(String time1) {
		this.time1 = time1;
	}

	/**
	 * 方法名 ： getNum
	 * 功 能 ： 返回变量 num 的值
	 * @return: Long
	 */
	public Long getNum() {
		return num;
	}

	/**
	 * 方法名 ： setNum
	 * 功 能 ： 设置变量 num 的值
	 */
	public void setNum(Long num) {
		this.num = num;
	}

}
