package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the kj_dic_gzxz database table.
 * 
 */
@Entity
@Table(name="kj_dic_gzxz")
@NamedQuery(name="KjDicGzxz.findAll", query="SELECT k FROM KjDicGzxz k")
public class KjDicGzxz implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String gzxz;

	public KjDicGzxz() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getGzxz() {
		return this.gzxz;
	}

	public void setGzxz(String gzxz) {
		this.gzxz = gzxz;
	}

}