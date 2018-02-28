package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the kj_dic_zxjd database table.
 * 
 */
@Entity
@Table(name="kj_dic_zxjd")
@NamedQuery(name="KjDicZxjd.findAll", query="SELECT k FROM KjDicZxjd k")
public class KjDicZxjd implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String zxjd;

	public KjDicZxjd() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getZxjd() {
		return this.zxjd;
	}

	public void setZxjd(String zxjd) {
		this.zxjd = zxjd;
	}

}