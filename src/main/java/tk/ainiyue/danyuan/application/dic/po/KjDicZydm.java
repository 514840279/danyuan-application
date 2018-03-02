package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the kj_dic_zydm database table.
 * 
 */
@Entity
@Table(name = "kj_dic_zydm")
@NamedQuery(name = "KjDicZydm.findAll", query = "SELECT k FROM KjDicZydm k")
public class KjDicZydm implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer				id;
	
	private String				dm;
	
	private String				zymc;
	
	public KjDicZydm() {
	}
	
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getDm() {
		return this.dm;
	}
	
	public void setDm(String dm) {
		this.dm = dm;
	}
	
	public String getZymc() {
		return this.zymc;
	}
	
	public void setZymc(String zymc) {
		this.zymc = zymc;
	}
	
}