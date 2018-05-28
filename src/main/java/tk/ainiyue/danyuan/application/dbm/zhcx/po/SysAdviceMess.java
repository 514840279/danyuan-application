package tk.ainiyue.danyuan.application.dbm.zhcx.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;

/**
 * 文件名 ： SysAdviceMess.java
 * 包 名 ： com.shumeng.application.application.zhcx.po
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月26日 下午3:30:40
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_advice_mess")
@NamedQuery(name = "SysAdviceMess.findAll", query = "SELECT s FROM SysAdviceMess s")
public class SysAdviceMess {
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "UUID", columnDefinition = " varchar(36) COMMENT '主键'")
	private String	uuid;
	
	@Column(name = "CREATE_TIME", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.CreationTimestamp
	private Date	createTime;		// create_time
	
	@Column(name = "DELETE_FLAG", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Boolean	deleteFlag;		// delete_flag
	
	@Column(name = "TYPE")
	private String	type;
	@Column(name = "MESSAGE")
	private String	message;
	@Column(name = "EXECUTE_SQL")
	private String	executeSql;
	
	@Column(name = "TABLE_DESC")
	private String	tableDesc;
	
	@Column(name = "TABLE_NAME")
	private String	tableName;
	
	@Column(name = "ADDR_UUID")
	private String	addrUuid;
	
	/**
	 * 方法名 ： getUuid
	 * 功 能 ： 返回变量 uuid 的值
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
	 * 方法名 ： getCreateTime
	 * 功 能 ： 返回变量 createTime 的值
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
	 * 方法名 ： getDeleteFlag
	 * 功 能 ： 返回变量 deleteFlag 的值
	 * @return: Boolean
	 */
	public Boolean getDeleteFlag() {
		return deleteFlag;
	}
	
	/**
	 * 方法名 ： setDeleteFlag
	 * 功 能 ： 设置变量 deleteFlag 的值
	 */
	public void setDeleteFlag(Boolean deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	
	/**
	 * 方法名 ： getExecuteSql
	 * 功 能 ： 返回变量 executeSql 的值
	 * @return: String
	 */
	public String getExecuteSql() {
		return executeSql;
	}
	
	/**
	 * 方法名 ： setExecuteSql
	 * 功 能 ： 设置变量 executeSql 的值
	 */
	public void setExecuteSql(String executeSql) {
		this.executeSql = executeSql;
	}
	
	/**
	 * 方法名 ： getType
	 * 功 能 ： 返回变量 type 的值
	 * @return: String
	 */
	public String getType() {
		return type;
	}
	
	/**
	 * 方法名 ： setType
	 * 功 能 ： 设置变量 type 的值
	 */
	public void setType(String type) {
		this.type = type;
	}
	
	/**
	 * 方法名 ： getMessage
	 * 功 能 ： 返回变量 message 的值
	 * @return: String
	 */
	public String getMessage() {
		return message;
	}
	
	/**
	 * 方法名 ： setMessage
	 * 功 能 ： 设置变量 message 的值
	 */
	public void setMessage(String message) {
		this.message = message;
	}
	
	public SysAdviceMess() {
		super();
	}
	
	/**
	 * 构造方法：
	 * 描 述： TODO(这里用一句话描述这个方法的作用)
	 * 参 数： @param uuid
	 * 参 数： @param type
	 * 参 数： @param tableDesc
	 * 参 数： @param tableName
	 * 参 数： @param addrUuid
	 * 作 者 ： Administrator
	 * @throws
	 */
	public SysAdviceMess(String uuid, String type, String tableDesc, String tableName, String addrUuid) {
		super();
		this.uuid = uuid;
		this.type = type;
		this.tableDesc = tableDesc;
		this.tableName = tableName;
		this.addrUuid = addrUuid;
	}
	
	/**
	 * 方法名 ： getTableDesc
	 * 功 能 ： 返回变量 tableDesc 的值
	 * @return: String
	 */
	public String getTableDesc() {
		return tableDesc;
	}
	
	/**
	 * 方法名 ： setTableDesc
	 * 功 能 ： 设置变量 tableDesc 的值
	 */
	public void setTableDesc(String tableDesc) {
		this.tableDesc = tableDesc;
	}
	
	/**
	 * 方法名 ： getTableName
	 * 功 能 ： 返回变量 tableName 的值
	 * @return: String
	 */
	public String getTableName() {
		return tableName;
	}
	
	/**
	 * 方法名 ： setTableName
	 * 功 能 ： 设置变量 tableName 的值
	 */
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	
	/**
	 * 方法名 ： getAddrUuid
	 * 功 能 ： 返回变量 addrUuid 的值
	 * @return: String
	 */
	public String getAddrUuid() {
		return addrUuid;
	}
	
	/**
	 * 方法名 ： setAddrUuid
	 * 功 能 ： 设置变量 addrUuid 的值
	 */
	public void setAddrUuid(String addrUuid) {
		this.addrUuid = addrUuid;
	}
	
	/**
	 * 方法名 ： toString
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see java.lang.Object#toString()
	 * 作 者 ： Administrator
	 */
	
	@Override
	public String toString() {
		return "SysAdviceMess [uuid=" + uuid + ", createTime=" + createTime + ", deleteFlag=" + deleteFlag + ", type=" + type + ", message=" + message + ", executeSql=" + executeSql + "]";
	}
	
}
