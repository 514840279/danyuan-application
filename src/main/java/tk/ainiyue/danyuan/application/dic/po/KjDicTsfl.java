package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the kj_dic_tsfl database table.
 * 
 */
@Entity
@Table(name="kj_dic_tsfl")
@NamedQuery(name="KjDicTsfl.findAll", query="SELECT k FROM KjDicTsfl k")
public class KjDicTsfl implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String ztdl;

	private String ztlh;

	private String ztlm;

	public KjDicTsfl() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getZtdl() {
		return this.ztdl;
	}

	public void setZtdl(String ztdl) {
		this.ztdl = ztdl;
	}

	public String getZtlh() {
		return this.ztlh;
	}

	public void setZtlh(String ztlh) {
		this.ztlh = ztlh;
	}

	public String getZtlm() {
		return this.ztlm;
	}

	public void setZtlm(String ztlm) {
		this.ztlm = ztlm;
	}

}