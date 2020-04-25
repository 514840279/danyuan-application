package org.danyuan.application.share.file.po;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.danyuan.application.common.base.BaseEntity;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * @文件名 SysShareFileInfo.java
 * @包名 org.danyuan.application.share.file.po
 * @描述 sys_share_file_info的实体类
 * @时间 2020年04月25日 16:38:10
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_share_file_info")
@NamedQuery(name = "SysShareFileInfo.findAll", query = "SELECT s FROM SysShareFileInfo s")
public class SysShareFileInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	// 文件详细信息
	@Column(name = "file_detial")
	private String				fileDetial;
	
	// 内容详细介绍
	@Column(name = "file_instru")
	private String				fileInstru;
	
	// 资料大分类
	@Column(name = "generate_type")
	private String				generateType;
	
	// 发行单位
	@Column(name = "publish_org")
	private String				publishOrg;
	
	// 资料细分领域
	@Column(name = "generate_type2")
	private String				generateType2;
	
	// 文件名
	@Column(name = "file_name")
	private String				fileName;
	
	// 文件大小
	@Column(name = "file_size")
	private String				fileSize;
	
	// 截图地址、封面图地址
	@Column(name = "file_img")
	private String				fileImg;
	
	// 文件类型
	@Column(name = "file_type")
	private String				fileType;
	
	// 来源网址
	@Column(name = "from_path")
	private String				fromPath;
	
	// 浏览
	@Column(name = "view_times", precision = 10)
	private Integer				viewTimes;
	
	// 发行时间
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(style = "yyyy-MM-dd")
	@JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd")
	@Column(name = "publish_date", nullable = false)
	private Date				publishDate;
	
	// 来源网站
	@Column(name = "from_web")
	private String				fromWeb;
	
	// 版次
	@Column(name = "version")
	private String				version;
	
	// 作者
	@Column(name = "author")
	private String				author;
	
	// 资料语言
	@Column(name = "language")
	private String				language;
	
	/**
	 * 构造方法：
	 * 描 述： 默认构造函数
	 * 参 数：
	 * 作 者 ： test
	 * @throws
	 */
	public SysShareFileInfo() {
		super();
	}
	
	/**
	 * 方法名 ： getFileDetial
	 * 功 能 ： 返回变量 fileDetial 文件详细信息 的值
	 * @return: String
	 */
	public String getFileDetial() {
		return fileDetial;
	}
	
	/**
	 * 方法名 ： setFileDetial
	 * 功 能 ： 设置变量 fileDetial 文件详细信息 的值
	 */
	public void setFileDetial(String fileDetial) {
		this.fileDetial = fileDetial;
	}
	
	/**
	 * 方法名 ： getFileInstru
	 * 功 能 ： 返回变量 fileInstru 内容详细介绍 的值
	 * @return: String
	 */
	public String getFileInstru() {
		return fileInstru;
	}
	
	/**
	 * 方法名 ： setFileInstru
	 * 功 能 ： 设置变量 fileInstru 内容详细介绍 的值
	 */
	public void setFileInstru(String fileInstru) {
		this.fileInstru = fileInstru;
	}
	
	/**
	 * 方法名 ： getGenerateType
	 * 功 能 ： 返回变量 generateType 资料大分类 的值
	 * @return: String
	 */
	public String getGenerateType() {
		return generateType;
	}
	
	/**
	 * 方法名 ： setGenerateType
	 * 功 能 ： 设置变量 generateType 资料大分类 的值
	 */
	public void setGenerateType(String generateType) {
		this.generateType = generateType;
	}
	
	/**
	 * 方法名 ： getPublishOrg
	 * 功 能 ： 返回变量 publishOrg 发行单位 的值
	 * @return: String
	 */
	public String getPublishOrg() {
		return publishOrg;
	}
	
	/**
	 * 方法名 ： setPublishOrg
	 * 功 能 ： 设置变量 publishOrg 发行单位 的值
	 */
	public void setPublishOrg(String publishOrg) {
		this.publishOrg = publishOrg;
	}
	
	/**
	 * 方法名 ： getGenerateType2
	 * 功 能 ： 返回变量 generateType2 资料细分领域 的值
	 * @return: String
	 */
	public String getGenerateType2() {
		return generateType2;
	}
	
	/**
	 * 方法名 ： setGenerateType2
	 * 功 能 ： 设置变量 generateType2 资料细分领域 的值
	 */
	public void setGenerateType2(String generateType2) {
		this.generateType2 = generateType2;
	}
	
	/**
	 * 方法名 ： getFileName
	 * 功 能 ： 返回变量 fileName 文件名 的值
	 * @return: String
	 */
	public String getFileName() {
		return fileName;
	}
	
	/**
	 * 方法名 ： setFileName
	 * 功 能 ： 设置变量 fileName 文件名 的值
	 */
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	/**
	 * 方法名 ： getFileSize
	 * 功 能 ： 返回变量 fileSize 文件大小 的值
	 * @return: String
	 */
	public String getFileSize() {
		return fileSize;
	}
	
	/**
	 * 方法名 ： setFileSize
	 * 功 能 ： 设置变量 fileSize 文件大小 的值
	 */
	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}
	
	/**
	 * 方法名 ： getFileImg
	 * 功 能 ： 返回变量 fileImg 截图地址、封面图地址 的值
	 * @return: String
	 */
	public String getFileImg() {
		return fileImg;
	}
	
	/**
	 * 方法名 ： setFileImg
	 * 功 能 ： 设置变量 fileImg 截图地址、封面图地址 的值
	 */
	public void setFileImg(String fileImg) {
		this.fileImg = fileImg;
	}
	
	/**
	 * 方法名 ： getFileType
	 * 功 能 ： 返回变量 fileType 文件类型 的值
	 * @return: String
	 */
	public String getFileType() {
		return fileType;
	}
	
	/**
	 * 方法名 ： setFileType
	 * 功 能 ： 设置变量 fileType 文件类型 的值
	 */
	public void setFileType(String fileType) {
		this.fileType = fileType;
	}
	
	/**
	 * 方法名 ： getFromPath
	 * 功 能 ： 返回变量 fromPath 来源网址 的值
	 * @return: String
	 */
	public String getFromPath() {
		return fromPath;
	}
	
	/**
	 * 方法名 ： setFromPath
	 * 功 能 ： 设置变量 fromPath 来源网址 的值
	 */
	public void setFromPath(String fromPath) {
		this.fromPath = fromPath;
	}
	
	/**
	 * 方法名 ： getViewTimes
	 * 功 能 ： 返回变量 viewTimes 浏览 的值
	 * @return: String
	 */
	public Integer getViewTimes() {
		return viewTimes;
	}
	
	/**
	 * 方法名 ： setViewTimes
	 * 功 能 ： 设置变量 viewTimes 浏览 的值
	 */
	public void setViewTimes(Integer viewTimes) {
		this.viewTimes = viewTimes;
	}
	
	/**
	 * 方法名 ： getPublishDate
	 * 功 能 ： 返回变量 publishDate 发行时间 的值
	 * @return: String
	 */
	public Date getPublishDate() {
		return publishDate;
	}
	
	/**
	 * 方法名 ： setPublishDate
	 * 功 能 ： 设置变量 publishDate 发行时间 的值
	 */
	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}
	
	/**
	 * 方法名 ： getFromWeb
	 * 功 能 ： 返回变量 fromWeb 来源网站 的值
	 * @return: String
	 */
	public String getFromWeb() {
		return fromWeb;
	}
	
	/**
	 * 方法名 ： setFromWeb
	 * 功 能 ： 设置变量 fromWeb 来源网站 的值
	 */
	public void setFromWeb(String fromWeb) {
		this.fromWeb = fromWeb;
	}
	
	/**
	 * 方法名 ： getVersion
	 * 功 能 ： 返回变量 version 版次 的值
	 * @return: String
	 */
	public String getVersion() {
		return version;
	}
	
	/**
	 * 方法名 ： setVersion
	 * 功 能 ： 设置变量 version 版次 的值
	 */
	public void setVersion(String version) {
		this.version = version;
	}
	
	/**
	 * 方法名 ： getAuthor
	 * 功 能 ： 返回变量 author 作者 的值
	 * @return: String
	 */
	public String getAuthor() {
		return author;
	}
	
	/**
	 * 方法名 ： setAuthor
	 * 功 能 ： 设置变量 author 作者 的值
	 */
	public void setAuthor(String author) {
		this.author = author;
	}
	
	/**
	 * 方法名 ： getLanguage
	 * 功 能 ： 返回变量 language 资料语言 的值
	 * @return: String
	 */
	public String getLanguage() {
		return language;
	}
	
	/**
	 * 方法名 ： setLanguage
	 * 功 能 ： 设置变量 language 资料语言 的值
	 */
	public void setLanguage(String language) {
		this.language = language;
	}
	
}
