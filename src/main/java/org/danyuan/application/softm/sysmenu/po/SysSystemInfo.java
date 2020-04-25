package org.danyuan.application.softm.sysmenu.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysSystemInfo.java
 * @包名 org.danyuan.application.softm.sysmenu.po
 * @描述 sys_system_info的实体类
 * @时间 2020年04月25日 16:38:24
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_system_info")
@NamedQuery(name = "SysSystemInfo.findAll", query = "SELECT s FROM SysSystemInfo s")
public class SysSystemInfo extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 系统名
	@Column(name = "system_name")
	private  String 	systemName;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysSystemInfo() {
		super();
	}


	/**
	 * 方法名 ： getSystemName
	 * 功 能 ： 返回变量 systemName 系统名 的值
	 *
	 * @return: String 
	 */
	public  String  getSystemName() {
		return systemName;
	}

	/**
	 * 方法名 ： setSystemName
	 * 功 能 ： 设置变量 systemName 系统名 的值
	 */
	public void setSystemName( String  systemName) {
		this.systemName = systemName;
	}


}
