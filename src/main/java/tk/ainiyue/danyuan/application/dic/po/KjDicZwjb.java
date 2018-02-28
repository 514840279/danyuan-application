package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the kj_dic_zwjb database table.
 * 
 */
@Entity
@Table(name="kj_dic_zwjb")
@NamedQuery(name="KjDicZwjb.findAll", query="SELECT k FROM KjDicZwjb k")
public class KjDicZwjb implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String lb;

	private String zwjb;

	public KjDicZwjb() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLb() {
		return this.lb;
	}

	public void setLb(String lb) {
		this.lb = lb;
	}

	public String getZwjb() {
		return this.zwjb;
	}

	public void setZwjb(String zwjb) {
		this.zwjb = zwjb;
	}

}