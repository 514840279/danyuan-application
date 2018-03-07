package tk.ainiyue.danyuan.application.kejiju.renyuan.po;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * The persistent class for the kjry_xsps_info database table.
 * 
 */
@Entity
@Table(name = "kjry_xsps_info")
@NamedQuery(name = "KjryXspsInfo.findAll", query = "SELECT k FROM KjryXspsInfo k")
public class KjryXspsInfo implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	private String				uuid;
	
	// 评审委托机构
	private String				consignor;
	
	@Column(name = "create_time")
	private Timestamp			createTime;
	
	@Column(name = "create_user")
	private String				createUser;
	
	// 结束时间
	@Column(name = "end_time")
	private String				endTime;
	
	// 评审内容
	@Column(name = "review_content")
	private String				reviewContent;
	
	// 起始时间
	@Column(name = "start_time")
	private String				startTime;
	
	@Transient
	private String				personId;
	
	//bi-directional many-to-one association to KjryJbxxInfo
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "ryxx_uuid")
	@JsonIgnore
	private KjryJbxxInfo		kjryJbxxInfo;
	
	public KjryXspsInfo() {
	}
	
	/**  
	 *  方法名 ： getPersonId 
	 *  功    能 ： 返回变量 personId 的值  
	 *  @return: String 
	 */
	public String getPersonId() {
		return personId;
	}
	
	/**  
	 *  方法名 ： setPersonId 
	 *  功    能 ： 设置变量 personId 的值
	 */
	public void setPersonId(String personId) {
		this.personId = personId;
	}
	
	public String getUuid() {
		return this.uuid;
	}
	
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	public String getConsignor() {
		return this.consignor;
	}
	
	public void setConsignor(String consignor) {
		this.consignor = consignor;
	}
	
	public Timestamp getCreateTime() {
		return this.createTime;
	}
	
	public void setCreateTime(Timestamp createTime) {
		this.createTime = createTime;
	}
	
	public String getCreateUser() {
		return this.createUser;
	}
	
	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}
	
	public String getEndTime() {
		return this.endTime;
	}
	
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	
	public String getReviewContent() {
		return this.reviewContent;
	}
	
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	
	public String getStartTime() {
		return this.startTime;
	}
	
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	
	public KjryJbxxInfo getKjryJbxxInfo() {
		return this.kjryJbxxInfo;
	}
	
	public void setKjryJbxxInfo(KjryJbxxInfo kjryJbxxInfo) {
		this.kjryJbxxInfo = kjryJbxxInfo;
	}
	
}