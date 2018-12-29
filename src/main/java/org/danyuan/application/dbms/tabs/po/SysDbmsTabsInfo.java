package org.danyuan.application.dbms.tabs.po;

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
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * The persistent class for the sys_table_info database table.
 */
@Entity
@Table(name = "sys_dbms_tabs_info")
@NamedQuery(name = "SysDbmsTabsInfo.findAll", query = "SELECT s FROM SysDbmsTabsInfo s")
public class SysDbmsTabsInfo implements Serializable {
	private static final long	serialVersionUID	= 1L;

	@Id
	@GenericGenerator(name = "idGenerator", strategy = " uuid")
	@Column(unique = true, nullable = false, columnDefinition = " varchar(36) COMMENT '主键'")
	private String				uuid;

	@Column(name = "jdbc_uuid", columnDefinition = "varchar(36) COMMENT '数据库表id'")
	private String				jdbcUuid;

	@Column(name = "type_uuid", columnDefinition = "varchar(36) COMMENT '数据库表类型id'")
	private String				typeUuid;

	@Column(name = "tabs_name", columnDefinition = "varchar(100) COMMENT '数据库表名'")
	private String				tabsName;

	@Column(name = "tabs_desc", columnDefinition = "varchar(50) COMMENT '表的含义'")
	private String				tabsDesc;

	@Column(name = "tabs_order", columnDefinition = "int COMMENT '数据库表顺序'")
	private Integer				tabsOrder;

	@Column(name = "tabs_rows", columnDefinition = "int COMMENT '数据库表数据量'")
	private Integer				tabsRows;

	@Column(name = "tabs_space", columnDefinition = "int COMMENT '数据库表空间大小'")
	private String				tabsSpace;
	
	@Column(name = "db_type", columnDefinition = " varchar(50)  COMMENT '数据库表空间大小'")
	private String				dbType;

	@Column(columnDefinition = "varchar(200) COMMENT '资源功能描述'")
	private String				discription;

	@Column(name = "create_time", updatable = false, columnDefinition = " timestamp default CURRENT_TIMESTAMP COMMENT '录入时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.CreationTimestamp
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
	private Date				createTime;					// create_time
	// 插入时间

	@Column(name = "create_user", updatable = false, columnDefinition = " varchar(50) default 'system' COMMENT '录入人员'")
	private String				createUser;					// create_user
	// 插入人

	@Column(name = "update_time", columnDefinition = " timestamp  default CURRENT_TIMESTAMP  COMMENT '更新时间'")
	@Temporal(TemporalType.TIMESTAMP)
	@org.hibernate.annotations.UpdateTimestamp
	@DateTimeFormat(style = "yyyy-MM-dd HH:mm:ss")
	@JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
	private Date				updateTime;					// updata_time
	// 更新时间

	@Column(name = "update_user", columnDefinition = " varchar(50) default 'system'  COMMENT '更新人员'")
	private String				updateUser;					// updata_user
	// 更新人

	@Column(name = "delete_flag", columnDefinition = " int default 0 COMMENT '停用标记'")
	private Integer				deleteFlag;

	public SysDbmsTabsInfo() {
	}

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
	 * 方法名 ： getJdbcUuid
	 * 功 能 ： 返回变量 jdbcUuid 的值
	 * @return: String
	 */
	public String getJdbcUuid() {
		return jdbcUuid;
	}

	/**
	 * 方法名 ： setJdbcUuid
	 * 功 能 ： 设置变量 jdbcUuid 的值
	 */
	public void setJdbcUuid(String jdbcUuid) {
		this.jdbcUuid = jdbcUuid;
	}

	/**
	 * 方法名 ： getTabsDesc
	 * 功 能 ： 返回变量 tabsDesc 的值
	 * @return: String
	 */
	public String getTabsDesc() {
		return tabsDesc;
	}

	/**
	 * 方法名 ： setTabsDesc
	 * 功 能 ： 设置变量 tabsDesc 的值
	 */
	public void setTabsDesc(String tabsDesc) {
		this.tabsDesc = tabsDesc;
	}

	/**
	 * 方法名 ： getTypeUuid
	 * 功 能 ： 返回变量 typeUuid 的值
	 * @return: String
	 */
	public String getTypeUuid() {
		return typeUuid;
	}

	/**
	 * 方法名 ： setTypeUuid
	 * 功 能 ： 设置变量 typeUuid 的值
	 */
	public void setTypeUuid(String typeUuid) {
		this.typeUuid = typeUuid;
	}

	/**
	 * 方法名 ： getTabsName
	 * 功 能 ： 返回变量 tabsName 的值
	 * @return: String
	 */
	public String getTabsName() {
		return tabsName;
	}

	/**
	 * 方法名 ： setTabsName
	 * 功 能 ： 设置变量 tabsName 的值
	 */
	public void setTabsName(String tabsName) {
		this.tabsName = tabsName;
	}

	/**
	 * 方法名 ： getTabsOrder
	 * 功 能 ： 返回变量 tabsOrder 的值
	 * @return: Integer
	 */
	public Integer getTabsOrder() {
		return tabsOrder;
	}

	/**
	 * 方法名 ： setTabsOrder
	 * 功 能 ： 设置变量 tabsOrder 的值
	 */
	public void setTabsOrder(Integer tabsOrder) {
		this.tabsOrder = tabsOrder;
	}

	/**
	 * 方法名 ： getTabsRows
	 * 功 能 ： 返回变量 tabsRows 的值
	 * @return: Integer
	 */
	public Integer getTabsRows() {
		return tabsRows;
	}

	/**
	 * 方法名 ： setTabsRows
	 * 功 能 ： 设置变量 tabsRows 的值
	 */
	public void setTabsRows(Integer tabsRows) {
		this.tabsRows = tabsRows;
	}

	/**
	 * 方法名 ： getTabsSpace
	 * 功 能 ： 返回变量 tabsSpace 的值
	 * @return: String
	 */
	public String getTabsSpace() {
		return tabsSpace;
	}

	/**
	 * 方法名 ： setTabsSpace
	 * 功 能 ： 设置变量 tabsSpace 的值
	 */
	public void setTabsSpace(String tabsSpace) {
		this.tabsSpace = tabsSpace;
	}

	/**
	 * 方法名 ： getDiscription
	 * 功 能 ： 返回变量 discription 的值
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
	 * 方法名 ： toString
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see java.lang.Object#toString()
	 * 作 者 ： wang
	 */

	@Override
	public String toString() {
		return "SysDbmsTabsInfo [uuid=" + uuid + ", jdbcUuid=" + jdbcUuid + ", tabsDesc=" + tabsDesc + ", typeUuid=" + typeUuid + ", tabsName=" + tabsName + ", tabsOrder=" + tabsOrder + ", tabsRows=" + tabsRows + ", tabsSpace=" + tabsSpace + ", discription=" + discription + ", createTime=" + createTime + ", createUser=" + createUser + ", updateTime=" + updateTime + ", updateUser=" + updateUser + ", deleteFlag=" + deleteFlag + "]";
	}

	/**
	 * 方法名 ： hashCode
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see java.lang.Object#hashCode()
	 * 作 者 ： wang
	 */

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((createTime == null) ? 0 : createTime.hashCode());
		result = prime * result + ((createUser == null) ? 0 : createUser.hashCode());
		result = prime * result + ((deleteFlag == null) ? 0 : deleteFlag.hashCode());
		result = prime * result + ((discription == null) ? 0 : discription.hashCode());
		result = prime * result + ((jdbcUuid == null) ? 0 : jdbcUuid.hashCode());
		result = prime * result + ((tabsDesc == null) ? 0 : tabsDesc.hashCode());
		result = prime * result + ((tabsName == null) ? 0 : tabsName.hashCode());
		result = prime * result + ((tabsOrder == null) ? 0 : tabsOrder.hashCode());
		result = prime * result + ((tabsRows == null) ? 0 : tabsRows.hashCode());
		result = prime * result + ((tabsSpace == null) ? 0 : tabsSpace.hashCode());
		result = prime * result + ((typeUuid == null) ? 0 : typeUuid.hashCode());
		result = prime * result + ((updateTime == null) ? 0 : updateTime.hashCode());
		result = prime * result + ((updateUser == null) ? 0 : updateUser.hashCode());
		result = prime * result + ((uuid == null) ? 0 : uuid.hashCode());
		return result;
	}

	/**
	 * 方法名 ： equals
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param obj
	 * 参 数 ： @return
	 * 参 考 ： @see java.lang.Object#equals(java.lang.Object)
	 * 作 者 ： wang
	 */

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		SysDbmsTabsInfo other = (SysDbmsTabsInfo) obj;
		if (createTime == null) {
			if (other.createTime != null) {
				return false;
			}
		} else if (!createTime.equals(other.createTime)) {
			return false;
		}
		if (createUser == null) {
			if (other.createUser != null) {
				return false;
			}
		} else if (!createUser.equals(other.createUser)) {
			return false;
		}
		if (deleteFlag == null) {
			if (other.deleteFlag != null) {
				return false;
			}
		} else if (!deleteFlag.equals(other.deleteFlag)) {
			return false;
		}
		if (discription == null) {
			if (other.discription != null) {
				return false;
			}
		} else if (!discription.equals(other.discription)) {
			return false;
		}
		if (jdbcUuid == null) {
			if (other.jdbcUuid != null) {
				return false;
			}
		} else if (!jdbcUuid.equals(other.jdbcUuid)) {
			return false;
		}
		if (tabsDesc == null) {
			if (other.tabsDesc != null) {
				return false;
			}
		} else if (!tabsDesc.equals(other.tabsDesc)) {
			return false;
		}
		if (tabsName == null) {
			if (other.tabsName != null) {
				return false;
			}
		} else if (!tabsName.equals(other.tabsName)) {
			return false;
		}
		if (tabsOrder == null) {
			if (other.tabsOrder != null) {
				return false;
			}
		} else if (!tabsOrder.equals(other.tabsOrder)) {
			return false;
		}
		if (tabsRows == null) {
			if (other.tabsRows != null) {
				return false;
			}
		} else if (!tabsRows.equals(other.tabsRows)) {
			return false;
		}
		if (tabsSpace == null) {
			if (other.tabsSpace != null) {
				return false;
			}
		} else if (!tabsSpace.equals(other.tabsSpace)) {
			return false;
		}
		if (typeUuid == null) {
			if (other.typeUuid != null) {
				return false;
			}
		} else if (!typeUuid.equals(other.typeUuid)) {
			return false;
		}
		if (updateTime == null) {
			if (other.updateTime != null) {
				return false;
			}
		} else if (!updateTime.equals(other.updateTime)) {
			return false;
		}
		if (updateUser == null) {
			if (other.updateUser != null) {
				return false;
			}
		} else if (!updateUser.equals(other.updateUser)) {
			return false;
		}
		if (uuid == null) {
			if (other.uuid != null) {
				return false;
			}
		} else if (!uuid.equals(other.uuid)) {
			return false;
		}
		return true;
	}

	/**
	 * 方法名 ： getDbType
	 * 功 能 ： 返回变量 dbType 的值
	 * @return: String
	 */
	public String getDbType() {
		return dbType;
	}

	/**
	 * 方法名 ： setDbType
	 * 功 能 ： 设置变量 dbType 的值
	 */
	public void setDbType(String dbType) {
		this.dbType = dbType;
	}

}