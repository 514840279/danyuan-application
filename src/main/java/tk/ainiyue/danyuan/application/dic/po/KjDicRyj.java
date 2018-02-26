package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the kj_dic_ryjs database table.
 * 
 */
@Entity
@Table(name="kj_dic_ryjs")
@NamedQuery(name="KjDicRyj.findAll", query="SELECT k FROM KjDicRyj k")
public class KjDicRyj implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String ryjs;

	public KjDicRyj() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRyjs() {
		return this.ryjs;
	}

	public void setRyjs(String ryjs) {
		this.ryjs = ryjs;
	}

}