package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the kj_dic_mzdm database table.
 * 
 */
@Entity
@Table(name = "kj_dic_mzdm")
@NamedQuery(name = "KjDicMzdm.findAll", query = "SELECT k FROM KjDicMzdm k")
public class KjDicMzdm implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer				id;
	
	private String				dm;
	
	private String				mzmc;
	
	public KjDicMzdm() {
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
	
	public String getMzmc() {
		return this.mzmc;
	}
	
	public void setMzmc(String mzmc) {
		this.mzmc = mzmc;
	}
	
}