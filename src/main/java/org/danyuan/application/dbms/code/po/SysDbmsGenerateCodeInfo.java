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
	@Column(name = "type_uuid", columnDefinition = " varchar(36) COMMENT '数据种类id'")
	private String				typeUuid;

	@Column(name = "class_path", columnDefinition = " varchar(100) COMMENT '生成类的包路径'")
	private String				classPath;
	@Column(name = "class_name", columnDefinition = " varchar(100) COMMENT '类名称'")
	private String				className;

	@Column(name = "generate_entity", columnDefinition = " int(6) COMMENT '生成实体类标识'")
	private Integer				generateEntity;

	@Column(name = "generate_dao", columnDefinition = " int(6) COMMENT '生成dao层标识'")
	private Integer				generateDao;

	@Column(name = "generate_service", columnDefinition = " int(6) COMMENT '生成业务处理层标识'")
	private Integer				generateService;

	@Column(name = "generate_controller", columnDefinition = " int(6) COMMENT '生成控制层标识'")
	private Integer				generateController;

	@Column(name = "generate_html", columnDefinition = " int(6) COMMENT '生成html标识'")
	private Integer				generateHtml;

	@Column(name = "generate_detail", columnDefinition = " int(6) COMMENT '生成js标识'")
	private Integer				generateDetail;

	@Column(name = "generate_sql", columnDefinition = " int(6) COMMENT '生成sql标识'")
	private Integer				generateSql;
	
	@Column(name = "generate_doc", columnDefinition = " int(6) COMMENT '生成sql文档'")
	private Integer				generateDoc;
	
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
	 * 方法名 ： getTypeUuid
	 * 功 能 ： 返回变量 typeUuid 的值
	 *
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
	 * 方法名 ： getClassPath
	 * 功 能 ： 返回变量 classPath 的值
	 *
	 * @return: String
	 */
	public String getClassPath() {
		return classPath;
	}

	/**
	 * 方法名 ： setClassPath
	 * 功 能 ： 设置变量 classPath 的值
	 */
	public void setClassPath(String classPath) {
		this.classPath = classPath;
	}

	/**
	 * 方法名 ： getClassName
	 * 功 能 ： 返回变量 className 的值
	 *
	 * @return: String
	 */
	public String getClassName() {
		return className;
	}

	/**
	 * 方法名 ： setClassName
	 * 功 能 ： 设置变量 className 的值
	 */
	public void setClassName(String className) {
		this.className = className;
	}

	/**
	 * 方法名 ： getGenerateEntity
	 * 功 能 ： 返回变量 generateEntity 的值
	 *
	 * @return: Integer
	 */
	public Integer getGenerateEntity() {
		return generateEntity;
	}

	/**
	 * 方法名 ： setGenerateEntity
	 * 功 能 ： 设置变量 generateEntity 的值
	 */
	public void setGenerateEntity(Integer generateEntity) {
		this.generateEntity = generateEntity;
	}

	/**
	 * 方法名 ： getGenerateDao
	 * 功 能 ： 返回变量 generateDao 的值
	 *
	 * @return: Integer
	 */
	public Integer getGenerateDao() {
		return generateDao;
	}

	/**
	 * 方法名 ： setGenerateDao
	 * 功 能 ： 设置变量 generateDao 的值
	 */
	public void setGenerateDao(Integer generateDao) {
		this.generateDao = generateDao;
	}

	/**
	 * 方法名 ： getGenerateService
	 * 功 能 ： 返回变量 generateService 的值
	 *
	 * @return: Integer
	 */
	public Integer getGenerateService() {
		return generateService;
	}

	/**
	 * 方法名 ： setGenerateService
	 * 功 能 ： 设置变量 generateService 的值
	 */
	public void setGenerateService(Integer generateService) {
		this.generateService = generateService;
	}

	/**
	 * 方法名 ： getGenerateController
	 * 功 能 ： 返回变量 generateController 的值
	 *
	 * @return: Integer
	 */
	public Integer getGenerateController() {
		return generateController;
	}

	/**
	 * 方法名 ： setGenerateController
	 * 功 能 ： 设置变量 generateController 的值
	 */
	public void setGenerateController(Integer generateController) {
		this.generateController = generateController;
	}
	
	/**
	 * 方法名 ： getGenerateHtml
	 * 功 能 ： 返回变量 generateHtml 的值
	 *
	 * @return: Integer
	 */
	public Integer getGenerateHtml() {
		return generateHtml;
	}

	/**
	 * 方法名 ： setGenerateHtml
	 * 功 能 ： 设置变量 generateHtml 的值
	 */
	public void setGenerateHtml(Integer generateHtml) {
		this.generateHtml = generateHtml;
	}

	/**
	 * 方法名 ： getGenerateDetail
	 * 功 能 ： 返回变量 generateDetail 的值
	 *
	 * @return: Integer
	 */
	public Integer getGenerateDetail() {
		return generateDetail;
	}

	/**
	 * 方法名 ： setGenerateDetail
	 * 功 能 ： 设置变量 generateDetail 的值
	 */
	public void setGenerateDetail(Integer generateDetail) {
		this.generateDetail = generateDetail;
	}

	/**
	 * 方法名 ： getGenerateSql
	 * 功 能 ： 返回变量 generateSql 的值
	 *
	 * @return: Integer
	 */
	public Integer getGenerateSql() {
		return generateSql;
	}

	/**
	 * 方法名 ： setGenerateSql
	 * 功 能 ： 设置变量 generateSql 的值
	 */
	public void setGenerateSql(Integer generateSql) {
		this.generateSql = generateSql;
	}
	
	/**
	 * @方法名 getGenerateDoc
	 * @功能 返回变量 generateDoc 的值
	 * @return Integer
	 */
	public Integer getGenerateDoc() {
		return generateDoc;
	}
	
	/**
	 * @方法名 setGenerateDoc
	 * @功能 设置变量 generateDoc 的值
	 */
	public void setGenerateDoc(Integer generateDoc) {
		this.generateDoc = generateDoc;
	}
	
}