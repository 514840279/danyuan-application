package tk.ainiyue.danyuan.application.user.userrole.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 文件名 ： SysUserRolesInfo.java
 * 包 名 ： tk.ainiyue.admin.userrole.po
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2016年6月3日 下午5:54:52
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_user_roles_info")
public class SysUserRolesInfo {
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@NotNull
	@Column(name = "UUID", updatable = false, columnDefinition = "varchar(36) COMMENT '主键'")
	private String	uuid;
	
	@Column(name = "user_id", columnDefinition = "varchar(36) COMMENT '用户id'")
	private String	userId;
	
	@Column(name = "roles_id", columnDefinition = "varchar(36) COMMENT '角色id'")
	private String	rolesId;
	
	@Column(name = "discription", columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String	discription; // discription 描述
	
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date	createTime;	 // create_time 插入时间
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String	createUser;	 // create_user 插入人
	
	@Column(name = "updata_time", insertable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '更新人员'")
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date	updataTime;	 // updata_time 更新时间
	
	@Column(name = "updata_user", insertable = false, columnDefinition = " varchar(50) default 'system'  COMMENT '更新时间'")
	private String	updataUser;	 // updata_user 更新人
	
	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer	deleteFlag;	 // delete_flag 标记

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
	 * 方法名 ： getUserId
	 * 功 能 ： 返回变量 userId 的值
	 *
	 * @return: String
	 */
	public String getUserId() {
		return userId;
	}
	
	/**
	 * 方法名 ： setUserId
	 * 功 能 ： 设置变量 userId 的值
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	/**
	 * 方法名 ： getRolesId
	 * 功 能 ： 返回变量 rolesId 的值
	 *
	 * @return: String
	 */
	public String getRolesId() {
		return rolesId;
	}
	
	/**
	 * 方法名 ： setRolesId
	 * 功 能 ： 设置变量 rolesId 的值
	 */
	public void setRolesId(String rolesId) {
		this.rolesId = rolesId;
	}
	
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数：
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysUserRolesInfo() {
		super();
	}
	
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param uuid
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysUserRolesInfo(String uuid) {
		super();
		this.uuid = uuid;
	}
	
}
