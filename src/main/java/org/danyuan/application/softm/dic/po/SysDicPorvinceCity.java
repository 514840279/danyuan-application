package org.danyuan.application.softm.dic.po;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.danyuan.application.common.base.BaseEntity;

/**
 * @文件名 SysDicPorvinceCity.java
 * @包名 org.danyuan.application.softm.dic.po
 * @描述 sys_dic_porvince_city的实体类
 * @时间 2020年04月25日 16:38:21
 * @author test
 * @版本 V1.0
 */
@Entity
@Table(name = "sys_dic_porvince_city")
@NamedQuery(name = "SysDicPorvinceCity.findAll", query = "SELECT s FROM SysDicPorvinceCity s")
public class SysDicPorvinceCity extends BaseEntity implements Serializable {
	private static final long	serialVersionUID	= 1L;


	// 省份
	@Column(name = "province")
	private  String 	province;

	// 城市
	@Column(name = "city")
	private  String 	city;

	/**  
	*  构造方法： 
	*  描    述： 默认构造函数  
	*  参    数： 
	*  作    者 ： test  
	*  @throws  
	*/
	public SysDicPorvinceCity() {
		super();
	}


	/**
	 * 方法名 ： getProvince
	 * 功 能 ： 返回变量 province 省份 的值
	 *
	 * @return: String 
	 */
	public  String  getProvince() {
		return province;
	}

	/**
	 * 方法名 ： setProvince
	 * 功 能 ： 设置变量 province 省份 的值
	 */
	public void setProvince( String  province) {
		this.province = province;
	}

	/**
	 * 方法名 ： getCity
	 * 功 能 ： 返回变量 city 城市 的值
	 *
	 * @return: String 
	 */
	public  String  getCity() {
		return city;
	}

	/**
	 * 方法名 ： setCity
	 * 功 能 ： 设置变量 city 城市 的值
	 */
	public void setCity( String  city) {
		this.city = city;
	}


}
