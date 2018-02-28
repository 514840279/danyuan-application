package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the kj_dic_zjlx database table.
 * 
 */
@Entity
@Table(name="kj_dic_zjlx")
@NamedQuery(name="KjDicZjlx.findAll", query="SELECT k FROM KjDicZjlx k")
public class KjDicZjlx implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String zjlx;

	public KjDicZjlx() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getZjlx() {
		return this.zjlx;
	}

	public void setZjlx(String zjlx) {
		this.zjlx = zjlx;
	}

}