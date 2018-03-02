package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the kj_dic_zxjd database table.
 * 
 */
@Entity
@Table(name = "kj_dic_zxjd")
@NamedQuery(name = "KjDicZxjd.findAll", query = "SELECT k FROM KjDicZxjd k")
public class KjDicZxjd implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer				id;
	
	private String				zxjd;
	
	public KjDicZxjd() {
	}
	
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getZxjd() {
		return this.zxjd;
	}
	
	public void setZxjd(String zxjd) {
		this.zxjd = zxjd;
	}
	
}