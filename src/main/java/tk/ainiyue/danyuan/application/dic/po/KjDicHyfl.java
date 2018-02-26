package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the kj_dic_hyfl database table.
 * 
 */
@Entity
@Table(name="kj_dic_hyfl")
@NamedQuery(name="KjDicHyfl.findAll", query="SELECT k FROM KjDicHyfl k")
public class KjDicHyfl implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String dm;

	private String mc;

	private String sm;

	public KjDicHyfl() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDm() {
		return this.dm;
	}

	public void setDm(String dm) {
		this.dm = dm;
	}

	public String getMc() {
		return this.mc;
	}

	public void setMc(String mc) {
		this.mc = mc;
	}

	public String getSm() {
		return this.sm;
	}

	public void setSm(String sm) {
		this.sm = sm;
	}

}