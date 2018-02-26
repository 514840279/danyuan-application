package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the kj_dic_cglx database table.
 * 
 */
@Entity
@Table(name="kj_dic_cglx")
@NamedQuery(name="KjDicCglx.findAll", query="SELECT k FROM KjDicCglx k")
public class KjDicCglx implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String cglx;

	public KjDicCglx() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCglx() {
		return this.cglx;
	}

	public void setCglx(String cglx) {
		this.cglx = cglx;
	}

}