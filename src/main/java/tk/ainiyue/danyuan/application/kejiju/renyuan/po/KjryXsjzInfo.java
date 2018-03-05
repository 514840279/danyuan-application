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

import com.fasterxml.jackson.annotation.JsonIgnore;

/**
 * The persistent class for the kjry_xsjz_info database table.
 * 
 */
@Entity
@Table(name = "kjry_xsjz_info")
@NamedQuery(name = "KjryXsjzInfo.findAll", query = "SELECT k FROM KjryXsjzInfo k")
public class KjryXsjzInfo implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	private String				uuid;
	
	@Column(name = "create_time")
	private Timestamp			createTime;
	
	@Column(name = "create_user")
	private String				createUser;
	
	@Column(name = "end_time")
	private String				endTime;
	
	@Column(name = "part_time_organization")
	private String				partTimeOrganization;
	
	@Column(name = "position_title")
	private String				positionTitle;
	
	private String				session;
	
	@Column(name = "start_time")
	private String				startTime;
	
	//bi-directional many-to-one association to KjryJbxxInfo
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "ryxx_uuid", insertable = false, updatable = false)
	@JsonIgnore
	private KjryJbxxInfo		kjryJbxxInfo;
	
	public KjryXsjzInfo() {
	}
	
	public String getUuid() {
		return this.uuid;
	}
	
	public void setUuid(String uuid) {
		this.uuid = uuid;
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
	
	public String getPartTimeOrganization() {
		return this.partTimeOrganization;
	}
	
	public void setPartTimeOrganization(String partTimeOrganization) {
		this.partTimeOrganization = partTimeOrganization;
	}
	
	public String getPositionTitle() {
		return this.positionTitle;
	}
	
	public void setPositionTitle(String positionTitle) {
		this.positionTitle = positionTitle;
	}
	
	public String getSession() {
		return this.session;
	}
	
	public void setSession(String session) {
		this.session = session;
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