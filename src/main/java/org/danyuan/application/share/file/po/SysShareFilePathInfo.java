package org.danyuan.application.share.file.po;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysShareFilePathInfo.java
 * @包名 org.danyuan.application.share.file.po
 * @描述 sys_share_file_path_info的实体类
 * @时间 2019年03月27日 17:28:55
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_share_file_path_info")
@NamedQuery(name = "SysShareFilePathInfo.findAll", query = "SELECT s FROM SysShareFilePathInfo s")
public class SysShareFilePathInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	// sha512
	@Column(name = "sha512")
	private String				sha512;
	
	// 大小
	@Column(name = "file_size")
	private String				fileSize;
	
	// md5
	@Column(name = "md5")
	private String				md5;
	
	// 网盘密码
	@Column(name = "password")
	private String				password;
	
	// 文件名
	@Column(name = "file_name")
	private String				fileName;
	
	// sha256
	@Column(name = "sha256")
	private String				sha256;
	
	// 类别
	@Column(name = "path_type")
	private String				pathType;
	
	// 路径
	@Column(name = "path")
	private String				path;
	
	// sha1
	@Column(name = "sha1")
	private String				sha1;
	
	// 关联主键
	@Column(name = "share_uuid")
	private String				shareUuid;
	
	/**
	 * 构造方法：
	 * 描 述： 默认构造函数
	 * 参 数：
	 * 作 者 ： test
	 * @throws
	 */
	public SysShareFilePathInfo() {
		super();
	}
	
	/**
	 * 方法名 ： getSha512
	 * 功 能 ： 返回变量 sha512 sha512 的值
	 *
	 * @return: String
	 */
	public String getSha512() {
		return sha512;
	}
	
	/**
	 * 方法名 ： setSha512
	 * 功 能 ： 设置变量 sha512 sha512 的值
	 */
	public void setSha512(String sha512) {
		this.sha512 = sha512;
	}
	
	/**
	 * 方法名 ： getFileSize
	 * 功 能 ： 返回变量 fileSize 大小 的值
	 *
	 * @return: String
	 */
	public String getFileSize() {
		return fileSize;
	}
	
	/**
	 * 方法名 ： setFileSize
	 * 功 能 ： 设置变量 fileSize 大小 的值
	 */
	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}
	
	/**
	 * 方法名 ： getMd5
	 * 功 能 ： 返回变量 md5 md5 的值
	 *
	 * @return: String
	 */
	public String getMd5() {
		return md5;
	}
	
	/**
	 * 方法名 ： setMd5
	 * 功 能 ： 设置变量 md5 md5 的值
	 */
	public void setMd5(String md5) {
		this.md5 = md5;
	}
	
	/**
	 * 方法名 ： getPassword
	 * 功 能 ： 返回变量 password 网盘密码 的值
	 *
	 * @return: String
	 */
	public String getPassword() {
		return password;
	}
	
	/**
	 * 方法名 ： setPassword
	 * 功 能 ： 设置变量 password 网盘密码 的值
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	
	/**
	 * 方法名 ： getFileName
	 * 功 能 ： 返回变量 fileName 文件名 的值
	 *
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
	 * 方法名 ： getSha256
	 * 功 能 ： 返回变量 sha256 sha256 的值
	 *
	 * @return: String
	 */
	public String getSha256() {
		return sha256;
	}
	
	/**
	 * 方法名 ： setSha256
	 * 功 能 ： 设置变量 sha256 sha256 的值
	 */
	public void setSha256(String sha256) {
		this.sha256 = sha256;
	}
	
	/**
	 * 方法名 ： getPathType
	 * 功 能 ： 返回变量 pathType 类别 的值
	 *
	 * @return: String
	 */
	public String getPathType() {
		return pathType;
	}
	
	/**
	 * 方法名 ： setPathType
	 * 功 能 ： 设置变量 pathType 类别 的值
	 */
	public void setPathType(String pathType) {
		this.pathType = pathType;
	}
	
	/**
	 * 方法名 ： getPath
	 * 功 能 ： 返回变量 path 路径 的值
	 *
	 * @return: String
	 */
	public String getPath() {
		return path;
	}
	
	/**
	 * 方法名 ： setPath
	 * 功 能 ： 设置变量 path 路径 的值
	 */
	public void setPath(String path) {
		this.path = path;
	}
	
	/**
	 * 方法名 ： getSha1
	 * 功 能 ： 返回变量 sha1 sha1 的值
	 *
	 * @return: String
	 */
	public String getSha1() {
		return sha1;
	}
	
	/**
	 * 方法名 ： setSha1
	 * 功 能 ： 设置变量 sha1 sha1 的值
	 */
	public void setSha1(String sha1) {
		this.sha1 = sha1;
	}
	
	/**
	 * 方法名 ： getShareUuid
	 * 功 能 ： 返回变量 shareUuid 关联主键 的值
	 *
	 * @return: String
	 */
	public String getShareUuid() {
		return shareUuid;
	}
	
	/**
	 * 方法名 ： setShareUuid
	 * 功 能 ： 设置变量 shareUuid 关联主键 的值
	 */
	public void setShareUuid(String shareUuid) {
		this.shareUuid = shareUuid;
	}
	
}
