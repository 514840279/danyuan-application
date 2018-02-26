package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the kj_dic_dwxz database table.
 * 
 */
@Entity
@Table(name="kj_dic_dwxz")
@NamedQuery(name="KjDicDwxz.findAll", query="SELECT k FROM KjDicDwxz k")
public class KjDicDwxz implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String id;

	private String dwxz;

	public KjDicDwxz() {
	}

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDwxz() {
		return this.dwxz;
	}

	public void setDwxz(String dwxz) {
		this.dwxz = dwxz;
	}

}