package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the kj_dic_mzdm database table.
 * 
 */
@Entity
@Table(name="kj_dic_mzdm")
@NamedQuery(name="KjDicMzdm.findAll", query="SELECT k FROM KjDicMzdm k")
public class KjDicMzdm implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String dm;

	private String mzmc;

	public KjDicMzdm() {
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

	public String getMzmc() {
		return this.mzmc;
	}

	public void setMzmc(String mzmc) {
		this.mzmc = mzmc;
	}

}