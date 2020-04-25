package org.danyuan.application.file.upload.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysFileUploadInfo.java
 * @包名 org.danyuan.application.file.upload.po
 * @描述 sys_file_upload_info的实体类
 * @时间 2020年04月25日 16:38:22
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_file_upload_info")
@NamedQuery(name = "SysFileUploadInfo.findAll", query = "SELECT s FROM SysFileUploadInfo s")
public class SysFileUploadInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 文件名
	@Column(name = "name")
	private  String 	name;

	// 文件大小
	@Column(name = "size",precision=10)
	private  Integer 	size;

	// 文件类型
	@Column(name = "type")
	private  String 	type;

	// 路径
	@Column(name = "path")
	private  String 	path;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysFileUploadInfo() {
		super();
	}


	/**
	 * 方法名 ： getName
	 * 功 能 ： 返回变量 name 文件名 的值
	 *
	 * @return: String 
	 */
	public  String  getName() {
		return name;
	}

	/**
	 * 方法名 ： setName
	 * 功 能 ： 设置变量 name 文件名 的值
	 */
	public void setName( String  name) {
		this.name = name;
	}

	/**
	 * 方法名 ： getSize
	 * 功 能 ： 返回变量 size 文件大小 的值
	 *
	 * @return: String 
	 */
	public  Integer  getSize() {
		return size;
	}

	/**
	 * 方法名 ： setSize
	 * 功 能 ： 设置变量 size 文件大小 的值
	 */
	public void setSize( Integer  size) {
		this.size = size;
	}

	/**
	 * 方法名 ： getType
	 * 功 能 ： 返回变量 type 文件类型 的值
	 *
	 * @return: String 
	 */
	public  String  getType() {
		return type;
	}

	/**
	 * 方法名 ： setType
	 * 功 能 ： 设置变量 type 文件类型 的值
	 */
	public void setType( String  type) {
		this.type = type;
	}

	/**
	 * 方法名 ： getPath
	 * 功 能 ： 返回变量 path 路径 的值
	 *
	 * @return: String 
	 */
	public  String  getPath() {
		return path;
	}

	/**
	 * 方法名 ： setPath
	 * 功 能 ： 设置变量 path 路径 的值
	 */
	public void setPath( String  path) {
		this.path = path;
	}


}
