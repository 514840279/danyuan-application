package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the kj_dic_xlmc database table.
 * 
 */
@Entity
@Table(name="kj_dic_xlmc")
@NamedQuery(name="KjDicXlmc.findAll", query="SELECT k FROM KjDicXlmc k")
public class KjDicXlmc implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String xl;

	public KjDicXlmc() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getXl() {
		return this.xl;
	}

	public void setXl(String xl) {
		this.xl = xl;
	}

}