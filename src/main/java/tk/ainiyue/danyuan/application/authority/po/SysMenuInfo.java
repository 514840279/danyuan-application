package tk.ainiyue.danyuan.application.authority.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.Table;
import org.springframework.format.annotation.DateTimeFormat;

@Entity 
@Table(appliesTo = "sys_menu_info",comment="系统资源管理表")
public class SysMenuInfo {
	@Id
//	@GenericGenerator(name = "idGenerator", strategy = "uuid")
//	@GeneratedValue(generator = "idGenerator")
	@Column(name = "uuid", updatable = false,columnDefinition=" varchar(36) COMMENT '主键 '")
	@NotNull
	private String	uuid;
	
	@Column(name = "system_id" ,columnDefinition=" varchar(36) default '99c74ada3a1411e6bdcb10bf48e1d36a' COMMENT '系统id'")
	private String	systemId;
	
	@Column(name = "parents_id" ,columnDefinition=" varchar(36) COMMENT '父id'")
	private String	parentsId;
	
	@Column(name = "name" ,columnDefinition=" varchar(50) COMMENT '地址名称'")
	private String	name;
	
	@Column(name = "uri" ,columnDefinition="varchar(2000) COMMENT '地址资源'")
	private String	uri;
	
	@Column(name = "icon",columnDefinition=" varchar(50) COMMENT '显示图标样式'")
	private String	icon;
	
	@Column(name = "sort",columnDefinition=" int COMMENT '排序'")
	private Integer	sort;
	
	@Column(name = "discription",columnDefinition="varchar(2000) COMMENT '资源功能描述'")
	private String	discription;

	@Column(name = "create_time", updatable = false ,columnDefinition=" timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private Date	insertDatetime;
	
	
	@Column(name = "create_user",updatable = false,columnDefinition=" varchar(50) default 'system' COMMENT '录入人员'")
	private String	insertUser;

	
	@Column(name = "updata_time",insertable=false,columnDefinition=" timestamp default CURRENT_TIMESTAMP COMMENT '更新人员'")
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	private String	updataDatatime;
	
	@Column(name = "updata_user",insertable=false,columnDefinition=" varchar(50) default 'system'  COMMENT '更新时间'")
	private String	updataUser;
	
	@Column(name = "delete_flag",columnDefinition=" int default 0 COMMENT '停用标记'")
	private Integer	deleteFlag;
	
	@Transient
	private String moveType;

	/**  
	 *  方法名 ： getUuid 
	 *  功    能 ： 返回变量 uuid 的值  
	 *  @return: String 
	 */
	public String getUuid() {
		return uuid;
	}

	/**  
	 *  方法名 ： setUuid 
	 *  功    能 ： 设置变量 uuid 的值
	 */
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	/**  
	 *  方法名 ： getSystemId 
	 *  功    能 ： 返回变量 systemId 的值  
	 *  @return: String 
	 */
	public String getSystemId() {
		return systemId;
	}

	/**  
	 *  方法名 ： setSystemId 
	 *  功    能 ： 设置变量 systemId 的值
	 */
	public void setSystemId(String systemId) {
		this.systemId = systemId;
	}

	/**  
	 *  方法名 ： getParentsId 
	 *  功    能 ： 返回变量 parentsId 的值  
	 *  @return: String 
	 */
	public String getParentsId() {
		return parentsId;
	}

	/**  
	 *  方法名 ： setParentsId 
	 *  功    能 ： 设置变量 parentsId 的值
	 */
	public void setParentsId(String parentsId) {
		this.parentsId = parentsId;
	}

	/**  
	 *  方法名 ： getName 
	 *  功    能 ： 返回变量 name 的值  
	 *  @return: String 
	 */
	public String getName() {
		return name;
	}

	/**  
	 *  方法名 ： setName 
	 *  功    能 ： 设置变量 name 的值
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**  
	 *  方法名 ： getUri 
	 *  功    能 ： 返回变量 uri 的值  
	 *  @return: String 
	 */
	public String getUri() {
		return uri;
	}

	/**  
	 *  方法名 ： setUri 
	 *  功    能 ： 设置变量 uri 的值
	 */
	public void setUri(String uri) {
		this.uri = uri;
	}

	/**  
	 *  方法名 ： getIcon 
	 *  功    能 ： 返回变量 icon 的值  
	 *  @return: String 
	 */
	public String getIcon() {
		return icon;
	}

	/**  
	 *  方法名 ： setIcon 
	 *  功    能 ： 设置变量 icon 的值
	 */
	public void setIcon(String icon) {
		this.icon = icon;
	}

	/**  
	 *  方法名 ： getSort 
	 *  功    能 ： 返回变量 sort 的值  
	 *  @return: Integer 
	 */
	public Integer getSort() {
		return sort;
	}

	/**  
	 *  方法名 ： setSort 
	 *  功    能 ： 设置变量 sort 的值
	 */
	public void setSort(Integer sort) {
		this.sort = sort;
	}

	/**  
	 *  方法名 ： getDiscription 
	 *  功    能 ： 返回变量 discription 的值  
	 *  @return: String 
	 */
	public String getDiscription() {
		return discription;
	}

	/**  
	 *  方法名 ： setDiscription 
	 *  功    能 ： 设置变量 discription 的值
	 */
	public void setDiscription(String discription) {
		this.discription = discription;
	}

	/**  
	 *  方法名 ： getInsertDatetime 
	 *  功    能 ： 返回变量 insertDatetime 的值  
	 *  @return: Date 
	 */
	public Date getInsertDatetime() {
		return insertDatetime;
	}

	/**  
	 *  方法名 ： setInsertDatetime 
	 *  功    能 ： 设置变量 insertDatetime 的值
	 */
	public void setInsertDatetime(Date insertDatetime) {
		this.insertDatetime = insertDatetime;
	}

	/**  
	 *  方法名 ： getInsertUser 
	 *  功    能 ： 返回变量 insertUser 的值  
	 *  @return: String 
	 */
	public String getInsertUser() {
		return insertUser;
	}

	/**  
	 *  方法名 ： setInsertUser 
	 *  功    能 ： 设置变量 insertUser 的值
	 */
	public void setInsertUser(String insertUser) {
		this.insertUser = insertUser;
	}

	/**  
	 *  方法名 ： getUpdataDatatime 
	 *  功    能 ： 返回变量 updataDatatime 的值  
	 *  @return: String 
	 */
	public String getUpdataDatatime() {
		return updataDatatime;
	}

	/**  
	 *  方法名 ： setUpdataDatatime 
	 *  功    能 ： 设置变量 updataDatatime 的值
	 */
	public void setUpdataDatatime(String updataDatatime) {
		this.updataDatatime = updataDatatime;
	}

	/**  
	 *  方法名 ： getUpdataUser 
	 *  功    能 ： 返回变量 updataUser 的值  
	 *  @return: String 
	 */
	public String getUpdataUser() {
		return updataUser;
	}

	/**  
	 *  方法名 ： setUpdataUser 
	 *  功    能 ： 设置变量 updataUser 的值
	 */
	public void setUpdataUser(String updataUser) {
		this.updataUser = updataUser;
	}

	/**  
	 *  方法名 ： getDeleteFlag 
	 *  功    能 ： 返回变量 deleteFlag 的值  
	 *  @return: Integer 
	 */
	public Integer getDeleteFlag() {
		return deleteFlag;
	}

	/**  
	 *  方法名 ： setDeleteFlag 
	 *  功    能 ： 设置变量 deleteFlag 的值
	 */
	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}

	/**  
	 *  方法名 ： getMoveType 
	 *  功    能 ： 返回变量 moveType 的值  
	 *  @return: String 
	 */
	public String getMoveType() {
		return moveType;
	}

	/**  
	 *  方法名 ： setMoveType 
	 *  功    能 ： 设置变量 moveType 的值
	 */
	public void setMoveType(String moveType) {
		this.moveType = moveType;
	}

	/** 
	*  方法名 ： toString
	*  功    能 ： TODO(这里用一句话描述这个方法的作用)  
	*  参    数 ： @return  
	*  参    考 ： @see java.lang.Object#toString()  
	*  作    者 ： wang  
	*/
	
	@Override
	public String toString() {
		return "SysMenuInfo [uuid=" + uuid + ", systemId=" + systemId + ", parentsId=" + parentsId + ", name=" + name + ", uri=" + uri + ", icon=" + icon + ", sort=" + sort + ", discription=" + discription + ", insertDatetime=" + insertDatetime + ", insertUser=" + insertUser + ", updataDatatime=" + updataDatatime + ", updataUser=" + updataUser + ", deleteFlag=" + deleteFlag + ", moveType=" + moveType + "]";
	}
	
	
	
	
}
