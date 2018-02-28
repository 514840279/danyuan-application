package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the kj_dic_xwmc database table.
 * 
 */
@Entity
@Table(name="kj_dic_xwmc")
@NamedQuery(name="KjDicXwmc.findAll", query="SELECT k FROM KjDicXwmc k")
public class KjDicXwmc implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String xlmc;

	public KjDicXwmc() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getXlmc() {
		return this.xlmc;
	}

	public void setXlmc(String xlmc) {
		this.xlmc = xlmc;
	}

}