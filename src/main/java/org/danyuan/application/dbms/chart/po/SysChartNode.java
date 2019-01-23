package org.danyuan.application.dbms.chart.po;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * 文件名 ： SsyChartNode.java
 * 包 名 ： com.shumeng.application.chart.po
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月3日 下午1:48:04
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_chart_node")
@NamedQuery(name = "SysChartNode.findAll", query = "SELECT s FROM SysChartNode s")
public class SysChartNode implements Serializable {
	
	/**
	 * @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么)
	 */
	private static final long	serialVersionUID	= -2196340256090799180L;
	
	@Id
	@Column(name = "UUID", columnDefinition = "varchar(36) COMMENT '主键'")
	private String				uuid;
	
	@Column(name = "node_name", columnDefinition = " varchar(50)  COMMENT '节点名称'")
	private String				nodeName;
	
	@Column(name = "node_desc", columnDefinition = " varchar(50)  COMMENT '节点中文名称'")
	private String				nodeDesc;
	
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default sysdate COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.CreationTimestamp
	private Date				createTime;									// create_time
	// 插入时间
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String				createUser;									// create_user
	// 插入人
	
	@Column(name = "update_time", columnDefinition = " timestamp  default sysdate  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.UpdateTimestamp
	private Date				updateTime;									// updata_time
	// 更新时间
	
	@Column(name = "update_user", columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String				updateUser;									// updata_user
	// 更新人
	
	@Column(name = "delete_flag", columnDefinition = " Integer default 0 COMMENT '停用标记'")
	private Integer				deleteFlag;									// delete_flag
	// 标记
	
	@Column(name = "fill_color", columnDefinition = " varchar(25)  COMMENT '节点颜色填充'")
	private String				fillColor;
	@Column(name = "stroke_color", columnDefinition = " varchar(25)  COMMENT '节点边框颜色填充'")
	private String				strokeColor;
	
	/**
	 * 方法名 ： getNodeName
	 * 功 能 ： 返回变量 nodeName 的值
	 *
	 * @return: String
	 */
	public String getNodeName() {
		return nodeName;
	}
	
	/**
	 * 方法名 ： setNodeName
	 * 功 能 ： 设置变量 nodeName 的值
	 */
	public void setNodeName(String nodeName) {
		this.nodeName = nodeName;
	}
	
	/**
	 * 方法名 ： getNodeDesc
	 * 功 能 ： 返回变量 nodeDesc 的值
	 *
	 * @return: String
	 */
	public String getNodeDesc() {
		return nodeDesc;
	}
	
	/**
	 * 方法名 ： setNodeDesc
	 * 功 能 ： 设置变量 nodeDesc 的值
	 */
	public void setNodeDesc(String nodeDesc) {
		this.nodeDesc = nodeDesc;
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
	 * @方法名 getFillColor
	 * @功能 返回变量 fillColor 的值
	 * @return String
	 */
	public String getFillColor() {
		return fillColor;
	}
	
	/**
	 * @方法名 setFillColor
	 * @功能 设置变量 fillColor 的值
	 */
	public void setFillColor(String fillColor) {
		this.fillColor = fillColor;
	}
	
	/**
	 * @方法名 getStrokeColor
	 * @功能 返回变量 strokeColor 的值
	 * @return String
	 */
	public String getStrokeColor() {
		return strokeColor;
	}
	
	/**
	 * @方法名 setStrokeColor
	 * @功能 设置变量 strokeColor 的值
	 */
	public void setStrokeColor(String strokeColor) {
		this.strokeColor = strokeColor;
	}
	
	public SysChartNode() {
		super();
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
		return "SysChartNode [nodeName=" + nodeName + ", nodeDesc=" + nodeDesc + ", uuid=" + uuid + ", createTime=" + createTime + ", createUser=" + createUser + ", updateTime=" + updateTime + ", updateUser=" + updateUser + ", deleteFlag=" + deleteFlag + "]";
	}
	
}
