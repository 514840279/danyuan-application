package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the kj_dic_zydm database table.
 * 
 */
@Entity
@Table(name="kj_dic_zydm")
@NamedQuery(name="KjDicZydm.findAll", query="SELECT k FROM KjDicZydm k")
public class KjDicZydm implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String dm;

	private String zymc;

	public KjDicZydm() {
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

	public String getZymc() {
		return this.zymc;
	}

	public void setZymc(String zymc) {
		this.zymc = zymc;
	}

}