package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the kj_dic_pxjx database table.
 * 
 */
@Entity
@Table(name="kj_dic_pxjx")
@NamedQuery(name="KjDicPxjx.findAll", query="SELECT k FROM KjDicPxjx k")
public class KjDicPxjx implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String pxjx;

	public KjDicPxjx() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPxjx() {
		return this.pxjx;
	}

	public void setPxjx(String pxjx) {
		this.pxjx = pxjx;
	}

}