package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the kj_dic_hyfl database table.
 * 
 */
@Entity
@Table(name = "kj_dic_hyfl")
@NamedQuery(name = "KjDicHyfl.findAll", query = "SELECT k FROM KjDicHyfl k")
public class KjDicHyfl implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer				id;
	
	private String				dm;
	
	private String				mc;
	
	private String				sm;
	
	public KjDicHyfl() {
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
	
	public String getMc() {
		return this.mc;
	}
	
	public void setMc(String mc) {
		this.mc = mc;
	}
	
	public String getSm() {
		return this.sm;
	}
	
	public void setSm(String sm) {
		this.sm = sm;
	}
	
}