package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the kj_dic_dqdm database table.
 * 
 */
@Entity
@Table(name="kj_dic_dqdm")
@NamedQuery(name="KjDicDqdm.findAll", query="SELECT k FROM KjDicDqdm k")
public class KjDicDqdm implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String xh;

	private String dm;

	private String zwjc;

	public KjDicDqdm() {
	}

	public String getXh() {
		return this.xh;
	}

	public void setXh(String xh) {
		this.xh = xh;
	}

	public String getDm() {
		return this.dm;
	}

	public void setDm(String dm) {
		this.dm = dm;
	}

	public String getZwjc() {
		return this.zwjc;
	}

	public void setZwjc(String zwjc) {
		this.zwjc = zwjc;
	}

}