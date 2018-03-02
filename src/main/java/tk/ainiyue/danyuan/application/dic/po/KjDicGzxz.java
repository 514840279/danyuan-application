package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the kj_dic_gzxz database table.
 * 
 */
@Entity
@Table(name = "kj_dic_gzxz")
@NamedQuery(name = "KjDicGzxz.findAll", query = "SELECT k FROM KjDicGzxz k")
public class KjDicGzxz implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer				id;
	
	private String				gzxz;
	
	public KjDicGzxz() {
	}
	
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getGzxz() {
		return this.gzxz;
	}
	
	public void setGzxz(String gzxz) {
		this.gzxz = gzxz;
	}
	
}