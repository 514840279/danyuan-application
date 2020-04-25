package org.danyuan.application.dbms.code.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysDbmsGenerateCodeInfo.java
 * @包名 org.danyuan.application.dbms.code.po
 * @描述 sys_dbms_generate_code_info的实体类
 * @时间 2020年04月25日 11:26:55
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_dbms_generate_code_info")
@NamedQuery(name = "SysDbmsGenerateCodeInfo.findAll", query = "SELECT s FROM SysDbmsGenerateCodeInfo s")
public class SysDbmsGenerateCodeInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	// 生成js标识
	@Column(name = "generate_js", precision = 3)
	private Integer				generateJs;
	
	// 生成sql文档
	@Column(name = "generate_doc", precision = 10)
	private Integer				generateDoc;
	
	// 类名称
	@Column(name = "class_name")
	private String				className;
	
	// 生成html标识
	@Column(name = "generate_html", precision = 3)
	private Integer				generateHtml;
	
	// 生成dao层标识
	@Column(name = "generate_dao", precision = 3)
	private Integer				generateDao;
	
	// 生成类的包路径
	@Column(name = "class_path")
	private String				classPath;
	
	// 数据种类id
	@Column(name = "type_uuid")
	private String				typeUuid;
	
	// 生成业务处理层标识
	@Column(name = "generate_service", precision = 3)
	private Integer				generateService;
	
	// 生成sql标识
	@Column(name = "generate_sql", precision = 3)
	private Integer				generateSql;
	
	// 生成js标识
	@Column(name = "generate_detail", precision = 10)
	private Integer				generateDetail;
	
	// 生成控制层标识
	@Column(name = "generate_controller", precision = 3)
	private Integer				generateController;
	
	// 生成实体类标识
	@Column(name = "generate_entity", precision = 3)
	private Integer				generateEntity;
	
	// 表数据库id
	@Column(name = "jdbc_uuid")
	private String				jdbcUuid;
	
	/**
	 * 构造方法：
	 * 描 述： 默认构造函数
	 * 参 数：
	 * 作 者 ： test
	 * @throws
	 */
	public SysDbmsGenerateCodeInfo() {
		super();
	}
	
	/**
	 * 方法名 ： getGenerateJs
	 * 功 能 ： 返回变量 generateJs 生成js标识 的值
	 * @return: String
	 */
	public Integer getGenerateJs() {
		return generateJs;
	}
	
	/**
	 * 方法名 ： setGenerateJs
	 * 功 能 ： 设置变量 generateJs 生成js标识 的值
	 */
	public void setGenerateJs(Integer generateJs) {
		this.generateJs = generateJs;
	}
	
	/**
	 * 方法名 ： getGenerateDoc
	 * 功 能 ： 返回变量 generateDoc 生成sql文档 的值
	 * @return: String
	 */
	public Integer getGenerateDoc() {
		return generateDoc;
	}
	
	/**
	 * 方法名 ： setGenerateDoc
	 * 功 能 ： 设置变量 generateDoc 生成sql文档 的值
	 */
	public void setGenerateDoc(Integer generateDoc) {
		this.generateDoc = generateDoc;
	}
	
	/**
	 * 方法名 ： getClassName
	 * 功 能 ： 返回变量 className 类名称 的值
	 * @return: String
	 */
	public String getClassName() {
		return className;
	}
	
	/**
	 * 方法名 ： setClassName
	 * 功 能 ： 设置变量 className 类名称 的值
	 */
	public void setClassName(String className) {
		this.className = className;
	}
	
	/**
	 * 方法名 ： getGenerateHtml
	 * 功 能 ： 返回变量 generateHtml 生成html标识 的值
	 * @return: String
	 */
	public Integer getGenerateHtml() {
		return generateHtml;
	}
	
	/**
	 * 方法名 ： setGenerateHtml
	 * 功 能 ： 设置变量 generateHtml 生成html标识 的值
	 */
	public void setGenerateHtml(Integer generateHtml) {
		this.generateHtml = generateHtml;
	}
	
	/**
	 * 方法名 ： getGenerateDao
	 * 功 能 ： 返回变量 generateDao 生成dao层标识 的值
	 * @return: String
	 */
	public Integer getGenerateDao() {
		return generateDao;
	}
	
	/**
	 * 方法名 ： setGenerateDao
	 * 功 能 ： 设置变量 generateDao 生成dao层标识 的值
	 */
	public void setGenerateDao(Integer generateDao) {
		this.generateDao = generateDao;
	}
	
	/**
	 * 方法名 ： getClassPath
	 * 功 能 ： 返回变量 classPath 生成类的包路径 的值
	 * @return: String
	 */
	public String getClassPath() {
		return classPath;
	}
	
	/**
	 * 方法名 ： setClassPath
	 * 功 能 ： 设置变量 classPath 生成类的包路径 的值
	 */
	public void setClassPath(String classPath) {
		this.classPath = classPath;
	}
	
	/**
	 * 方法名 ： getTypeUuid
	 * 功 能 ： 返回变量 typeUuid 数据种类id 的值
	 * @return: String
	 */
	public String getTypeUuid() {
		return typeUuid;
	}
	
	/**
	 * 方法名 ： setTypeUuid
	 * 功 能 ： 设置变量 typeUuid 数据种类id 的值
	 */
	public void setTypeUuid(String typeUuid) {
		this.typeUuid = typeUuid;
	}
	
	/**
	 * 方法名 ： getGenerateService
	 * 功 能 ： 返回变量 generateService 生成业务处理层标识 的值
	 * @return: String
	 */
	public Integer getGenerateService() {
		return generateService;
	}
	
	/**
	 * 方法名 ： setGenerateService
	 * 功 能 ： 设置变量 generateService 生成业务处理层标识 的值
	 */
	public void setGenerateService(Integer generateService) {
		this.generateService = generateService;
	}
	
	/**
	 * 方法名 ： getGenerateSql
	 * 功 能 ： 返回变量 generateSql 生成sql标识 的值
	 * @return: String
	 */
	public Integer getGenerateSql() {
		return generateSql;
	}
	
	/**
	 * 方法名 ： setGenerateSql
	 * 功 能 ： 设置变量 generateSql 生成sql标识 的值
	 */
	public void setGenerateSql(Integer generateSql) {
		this.generateSql = generateSql;
	}
	
	/**
	 * 方法名 ： getGenerateDetail
	 * 功 能 ： 返回变量 generateDetail 生成js标识 的值
	 * @return: String
	 */
	public Integer getGenerateDetail() {
		return generateDetail;
	}
	
	/**
	 * 方法名 ： setGenerateDetail
	 * 功 能 ： 设置变量 generateDetail 生成js标识 的值
	 */
	public void setGenerateDetail(Integer generateDetail) {
		this.generateDetail = generateDetail;
	}
	
	/**
	 * 方法名 ： getGenerateController
	 * 功 能 ： 返回变量 generateController 生成控制层标识 的值
	 * @return: String
	 */
	public Integer getGenerateController() {
		return generateController;
	}
	
	/**
	 * 方法名 ： setGenerateController
	 * 功 能 ： 设置变量 generateController 生成控制层标识 的值
	 */
	public void setGenerateController(Integer generateController) {
		this.generateController = generateController;
	}
	
	/**
	 * 方法名 ： getGenerateEntity
	 * 功 能 ： 返回变量 generateEntity 生成实体类标识 的值
	 * @return: String
	 */
	public Integer getGenerateEntity() {
		return generateEntity;
	}
	
	/**
	 * 方法名 ： setGenerateEntity
	 * 功 能 ： 设置变量 generateEntity 生成实体类标识 的值
	 */
	public void setGenerateEntity(Integer generateEntity) {
		this.generateEntity = generateEntity;
	}
	
	/**
	 * 方法名 ： getJdbcUuid
	 * 功 能 ： 返回变量 jdbcUuid 表数据库id 的值
	 * @return: String
	 */
	public String getJdbcUuid() {
		return jdbcUuid;
	}
	
	/**
	 * 方法名 ： setJdbcUuid
	 * 功 能 ： 设置变量 jdbcUuid 表数据库id 的值
	 */
	public void setJdbcUuid(String jdbcUuid) {
		this.jdbcUuid = jdbcUuid;
	}
	
}
