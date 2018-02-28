package tk.ainiyue.danyuan.application.kejiju.renyuan.po;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the kjry_xsps_info database table.
 * 
 */
@Entity
@Table(name="kjry_xsps_info")
@NamedQuery(name="KjryXspsInfo.findAll", query="SELECT k FROM KjryXspsInfo k")
public class KjryXspsInfo implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String uuid;

	private String consignor;

	@Column(name="create_time")
	private Timestamp createTime;

	@Column(name="create_user")
	private String createUser;

	@Column(name="end_time")
	private String endTime;

	@Column(name="review_content")
	private String reviewContent;

	@Column(name="start_time")
	private String startTime;

	//bi-directional many-to-one association to KjryJbxxInfo
	@ManyToOne
	@JoinColumn(name="ryxx_uuid",  insertable=false, updatable=false)
	private KjryJbxxInfo kjryJbxxInfo;

	public KjryXspsInfo() {
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