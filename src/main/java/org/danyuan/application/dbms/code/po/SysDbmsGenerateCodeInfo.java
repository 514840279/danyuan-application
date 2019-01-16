package org.danyuan.application.dbms.code.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * The persistent class for the sys_table_info database table.
 */
@Entity
@Table(name = "sys_dbms_generate_code_info")
@NamedQuery(name = "SysDbmsGenerateCodeInfo.findAll", query = "SELECT s FROM SysDbmsGenerateCodeInfo s")
public class SysDbmsGenerateCodeInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Column(name = "jdbc_uuid", columnDefinition = " varchar(36) COMMENT '数据库表id'")
	private String				jdbcUuid;

	@Column(name = "tabs_name", columnDefinition = " varchar(100) COMMENT '数据库表名'")
	private String				tabsName;

	@Column(name = "class_path", columnDefinition = " varchar(100) COMMENT '生成类的包路径'")
	private String				classPath;
	@Column(name = "class_name", columnDefinition = " varchar(100) COMMENT '类名称'")
	private String				className;

	@Column(name = "generate_entity", columnDefinition = " varchar(100) COMMENT '生成实体类标识'")
	private Integer				generateEntity;

	@Column(name = "generate_dao", columnDefinition = " varchar(100) COMMENT '生成dao层标识'")
	private Integer				generateDao;

	@Column(name = "generate_service", columnDefinition = " varchar(100) COMMENT '生成业务处理层标识'")
	private Integer				generateService;

	@Column(name = "generate_controller", columnDefinition = " varchar(100) COMMENT '生成控制层标识'")
	private Integer				generateController;

	@Column(name = "generate_html", columnDefinition = " varchar(100) COMMENT '生成html标识'")
	private Integer				generateHtml;

	@Column(name = "generate_js", columnDefinition = " varchar(100) COMMENT '生成js标识'")
	private Integer				generateJs;

	@Column(name = "generate_sql", columnDefinition = " varchar(100) COMMENT '生成sql标识'")
	private Integer				generateSql;
	
	public SysDbmsGenerateCodeInfo() {
	}
	
	/**
	 * 方法名 ： getJdbcUuid
	 * 功 能 ： 返回变量 jdbcUuid 的值
	 *
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
	 * @方法名 getTabsName
	 * @功能 返回变量 tabsName 的值
	 * @return String
	 */
	public String getTabsName() {
		return tabsName;
	}

	/**
	 * @方法名 setTabsName
	 * @功能 设置变量 tabsName 的值
	 */
	public void setTabsName(String tabsName) {
		this.tabsName = tabsName;
	}

}