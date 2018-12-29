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

import org.hibernate.annotations.GenericGenerator;

/**
 * The persistent class for the sys_plant_bind_conf database table.
 */
@Entity
@Table(name = "sys_plant_bind_conf")
@NamedQuery(name = "SysPlantBindConf.findAll", query = "SELECT s FROM SysPlantBindConf s")
public class SysPlantBindConf implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@Column(name = "UUID", columnDefinition = " varchar(36) COMMENT '主键'")
	private String				uuid;
	
	@Column(name = "RELATION")
	private String				relation;
	
	@Column(name = "cols_name")
	private String				colsName;
	
	@Column(name = "cols_desc")
	private String				colsDesc;
	
	@Column(name = "cols_order")
	private Integer				colsOrder;
	
	@Column(name = "statue", columnDefinition = " int default 1 COMMENT '1客户手动添加字段没有字段名称，0系统默认字段不允许修该字段名称'")
	private Integer				statue;
	
	// 允许图表统计的纬度字段
	@Column(name = "dime_flag", columnDefinition = " int default 1 COMMENT '1允许用户统计分析的字段，0不允许的字段'")
	private Integer				dimeFlag;
	// 允许图表查询的条件字段
	@Column(name = "param_flag", columnDefinition = " int default 1 COMMENT '1允许用户进行条件筛选的字段，0不允许的字段'")
	private Integer				paramFlag;
	
	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.CreationTimestamp
	private Date				createTime;					// create_time
	
	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String				createUser;					// create_user
	
	@Column(name = "update_time", columnDefinition = " timestamp  default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.UpdateTimestamp
	private Date				updateTime;					// updata_time
	
	@Column(name = "update_user", columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String				updateUser;					// updata_user
	
	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer				deleteFlag;
	
	// 是否可以支持
	@Column(name = "according", columnDefinition = " int default 0 COMMENT '是否显示'")
	private Integer				according;
	
	// 自定义宽度
	@Column(name = "width", columnDefinition = " int default 0 COMMENT '宽度设置'")
	private Integer				width;
	
	@Column(name = "discription", columnDefinition = " varchar(200) COMMENT '资源功能描述'")
	private String				discription;
	
	// 数据库未使用
	@Column(name = "chaxun", columnDefinition = " varchar(200) COMMENT '资源功能描述'")
	private String				chaxun;
	
	// 是否支持排序
	@Column(name = "sortable", columnDefinition = " int COMMENT '支持排序'")
	private String				sortable;
	
	public SysPlantBindConf() {
	}
	
	public String getRelation() {
		return relation;
	}
	
	public void setRelation(String relation) {
		this.relation = relation;
	}
	
	public String getUuid() {
		return this.uuid;
	}
	
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	public String getColsName() {
		return this.colsName;
	}
	
	public void setColsName(String colsName) {
		this.colsName = colsName;
	}
	
	public Integer getColsOrder() {
		return this.colsOrder;
	}
	
	public void setColsOrder(Integer colsOrder) {
		this.colsOrder = colsOrder;
	}
	
	/**
	 * 方法名 ： getCreateTime <br />
	 * 功 能 ： 返回变量 createTime 的值 <br />
	 *
	 * @return: Date
	 */
	public Date getCreateTime() {
		return createTime;
	}
	
	/**
	 * 方法名 ： setCreateTime <br />
	 * 功 能 ： 设置变量 createTime 的值
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	/**
	 * 方法名 ： getCreateUser <br />
	 * 功 能 ： 返回变量 createUser 的值 <br />
	 *
	 * @return: String
	 */
	public String getCreateUser() {
		return createUser;
	}
	
	/**
	 * 方法名 ： setCreateUser <br />
	 * 功 能 ： 设置变量 createUser 的值
	 */
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	
	/**
	 * 方法名 ： getUpdateTime <br />
	 * 功 能 ： 返回变量 updateTime 的值 <br />
	 *
	 * @return: Date
	 */
	public Date getUpdateTime() {
		return updateTime;
	}
	
	/**
	 * 方法名 ： setUpdateTime <br />
	 * 功 能 ： 设置变量 updateTime 的值
	 */
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	/**
	 * 方法名 ： getUpdateUser <br />
	 * 功 能 ： 返回变量 updateUser 的值 <br />
	 *
	 * @return: String
	 */
	public String getUpdateUser() {
		return updateUser;
	}
	
	/**
	 * 方法名 ： setUpdateUser <br />
	 * 功 能 ： 设置变量 updateUser 的值
	 */
	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}
	
	/**
	 * 方法名 ： getDeleteFlag <br />
	 * 功 能 ： 返回变量 deleteFlag 的值 <br />
	 *
	 * @return: String
	 */
	public Integer getDeleteFlag() {
		return deleteFlag;
	}
	
	/**
	 * 方法名 ： setDeleteFlag <br />
	 * 功 能 ： 设置变量 deleteFlag 的值
	 */
	public void setDeleteFlag(Integer deleteFlag) {
		this.deleteFlag = deleteFlag;
	}
	
	/**
	 * 方法名 ： getDiscription <br />
	 * 功 能 ： 返回变量 discription 的值 <br />
	 *
	 * @return: String
	 */
	public String getDiscription() {
		return discription;
	}
	
	/**
	 * 方法名 ： setDiscription <br />
	 * 功 能 ： 设置变量 discription 的值
	 */
	public void setDiscription(String discription) {
		this.discription = discription;
	}
	
	/**
	 * 方法名 ： getColsDesc
	 * 功 能 ： 返回变量 colsDesc 的值
	 *
	 * @return: String
	 */
	public String getColsDesc() {
		return colsDesc;
	}
	
	/**
	 * 方法名 ： setColsDesc
	 * 功 能 ： 设置变量 colsDesc 的值
	 */
	public void setColsDesc(String colsDesc) {
		this.colsDesc = colsDesc;
	}
	
	/**
	 * 方法名 ： getStatue
	 * 功 能 ： 返回变量 statue 的值
	 *
	 * @return: Integer
	 */
	public Integer getStatue() {
		return statue;
	}
	
	/**
	 * 方法名 ： setStatue
	 * 功 能 ： 设置变量 statue 的值
	 */
	public void setStatue(Integer statue) {
		this.statue = statue;
	}
	
	public Integer getAccording() {
		return according;
	}
	
	public void setAccording(Integer according) {
		this.according = according;
	}
	
	public Integer getWidth() {
		return width;
	}
	
	public void setWidth(Integer width) {
		this.width = width;
	}
	
	/**
	 * 方法名 ： getChaxun
	 * 功 能 ： 返回变量 chaxun 的值
	 *
	 * @return: String
	 */
	public String getChaxun() {
		return chaxun;
	}
	
	/**
	 * 方法名 ： setChaxun
	 * 功 能 ： 设置变量 chaxun 的值
	 */
	public void setChaxun(String chaxun) {
		this.chaxun = chaxun;
	}
	
	/**
	 * 方法名 ： getSortable
	 * 功 能 ： 返回变量 sortable 的值
	 *
	 * @return: String
	 */
	public String getSortable() {
		return sortable;
	}
	
	/**
	 * 方法名 ： setSortable
	 * 功 能 ： 设置变量 sortable 的值
	 */
	public void setSortable(String sortable) {
		this.sortable = sortable;
	}
	
	/**
	 * 方法名 ： getDimeFlag
	 * 功 能 ： 返回变量 dimeFlag 的值
	 *
	 * @return: Integer
	 */
	public Integer getDimeFlag() {
		return dimeFlag;
	}
	
	/**
	 * 方法名 ： setDimeFlag
	 * 功 能 ： 设置变量 dimeFlag 的值
	 */
	public void setDimeFlag(Integer dimeFlag) {
		this.dimeFlag = dimeFlag;
	}
	
	/**
	 * 方法名 ： getParamFlag
	 * 功 能 ： 返回变量 paramFlag 的值
	 * 
	 * @return: Integer
	 */
	public Integer getParamFlag() {
		return paramFlag;
	}
	
	/**
	 * 方法名 ： setParamFlag
	 * 功 能 ： 设置变量 paramFlag 的值
	 */
	public void setParamFlag(Integer paramFlag) {
		this.paramFlag = paramFlag;
	}
	
}