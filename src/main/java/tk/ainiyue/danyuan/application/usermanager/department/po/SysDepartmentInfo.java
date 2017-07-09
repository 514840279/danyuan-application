package tk.ainiyue.danyuan.application.usermanager.department.po;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.Length;

/**
 * 文件名 ： SysDepartmentInfo.java 
 * 包 名 ： tk.ainiyue.admin.department.po 
 * 描 述 ： TODO(用一句话描述该文件做什么) 
 * 机能名称： 
 * 技能ID ： 
 * 作 者 ： Administrator 
 * 时 间 ： 2016年6月3日 下午5:40:45
 * 版 本 ： V1.0
 */
@Entity
@Table(name = "sys_department_info")
public class SysDepartmentInfo {
	
	@Id
	@GenericGenerator(name = "idGenerator", strategy = "uuid")
	@GeneratedValue(generator = "idGenerator")
	@Column(name = "UUID", updatable = false)
	@NotNull
	@Length(max = 32)
	private String	uuid;
	
	@Column(name = "organization_id")
	@NotNull
	@Length(max = 32)
	private String	organizationId;
	
	@Column(name = "department_name")
	@NotNull
	@Length(max = 50)
	private String	departmentName;
	
	@Column(name = "department_discription")
	@NotNull
	@Length(max = 1024)
	private String	departmentDiscription;
	
	@Column(name = "insert_datetime", updatable = false)
	@NotNull
	private Date	insertDatetime;
	
	@Column(name = "updata_datetime")
	private Date	updataDatetime;
	
	@Column(name = "flag")
	@Length(max = 2)
	private String	flag;
	
	/**  
	*  构造方法： 
	*  描    述： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： 
	*  作    者 ： Administrator  
	*  @throws  
	*/
	public SysDepartmentInfo() {
		super();
	}
	
	/**  
	*  构造方法： 
	*  描    述： TODO(这里用一句话描述这个方法的作用)  
	*  参    数： @param uuid
	*  作    者 ： Administrator  
	*  @throws  
	*/
	public SysDepartmentInfo(String uuid) {
		super();
		this.uuid = uuid;
	}
	
	/**  
	 *  方法名 ： getUuid 
	 *  功    能 ： 返回变量 uuid 的值  
	 *  @return: String 
	 */
	public String getUuid() {
		return uuid;
	}
	
	/**  
	 *  方法名 ： setUuid 
	 *  功    能 ： 设置变量 uuid 的值
	 */
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	/**  
	 *  方法名 ： getOrganizationId 
	 *  功    能 ： 返回变量 organizationId 的值  
	 *  @return: String 
	 */
	public String getOrganizationId() {
		return organizationId;
	}
	
	/**  
	 *  方法名 ： setOrganizationId 
	 *  功    能 ： 设置变量 organizationId 的值
	 */
	public void setOrganizationId(String organizationId) {
		this.organizationId = organizationId;
	}
	
	/**  
	 *  方法名 ： getDepartmentName 
	 *  功    能 ： 返回变量 departmentName 的值  
	 *  @return: String 
	 */
	public String getDepartmentName() {
		return departmentName;
	}
	
	/**  
	 *  方法名 ： setDepartmentName 
	 *  功    能 ： 设置变量 departmentName 的值
	 */
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	
	/**  
	 *  方法名 ： getDepartmentDiscription 
	 *  功    能 ： 返回变量 departmentDiscription 的值  
	 *  @return: String 
	 */
	public String getDepartmentDiscription() {
		return departmentDiscription;
	}
	
	/**  
	 *  方法名 ： setDepartmentDiscription 
	 *  功    能 ： 设置变量 departmentDiscription 的值
	 */
	public void setDepartmentDiscription(String departmentDiscription) {
		this.departmentDiscription = departmentDiscription;
	}
	
	/**  
	 *  方法名 ： getInsertDatetime 
	 *  功    能 ： 返回变量 insertDatetime 的值  
	 *  @return: Date 
	 */
	public Date getInsertDatetime() {
		return insertDatetime;
	}
	
	/**  
	 *  方法名 ： setInsertDatetime 
	 *  功    能 ： 设置变量 insertDatetime 的值
	 */
	public void setInsertDatetime(Date insertDatetime) {
		this.insertDatetime = insertDatetime;
	}
	
	/**  
	 *  方法名 ： getUpdataDatetime 
	 *  功    能 ： 返回变量 updataDatetime 的值  
	 *  @return: Date 
	 */
	public Date getUpdataDatetime() {
		return updataDatetime;
	}
	
	/**  
	 *  方法名 ： setUpdataDatetime 
	 *  功    能 ： 设置变量 updataDatetime 的值
	 */
	public void setUpdataDatetime(Date updataDatetime) {
		this.updataDatetime = updataDatetime;
	}
	
	/**  
	 *  方法名 ： getFlag 
	 *  功    能 ： 返回变量 flag 的值  
	 *  @return: String 
	 */
	public String getFlag() {
		return flag;
	}
	
	/**  
	 *  方法名 ： setFlag 
	 *  功    能 ： 设置变量 flag 的值
	 */
	public void setFlag(String flag) {
		this.flag = flag;
	}
	
}
