package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the kj_dic_zzmm database table.
 * 
 */
@Entity
@Table(name="kj_dic_zzmm")
@NamedQuery(name="KjDicZzmm.findAll", query="SELECT k FROM KjDicZzmm k")
public class KjDicZzmm implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String zzmm;

	public KjDicZzmm() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getZzmm() {
		return this.zzmm;
	}

	public void setZzmm(String zzmm) {
		this.zzmm = zzmm;
	}

}