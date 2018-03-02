package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the kj_dic_xkfl database table.
 * 
 */
@Entity
@Table(name = "kj_dic_xkfl")
@NamedQuery(name = "KjDicXkfl.findAll", query = "SELECT k FROM KjDicXkfl k")
public class KjDicXkfl implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer				id;
	
	private String				gfdm;
	
	private String				gfmc;
	
	private String				sm;
	
	public KjDicXkfl() {
	}
	
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getGfdm() {
		return this.gfdm;
	}
	
	public void setGfdm(String gfdm) {
		this.gfdm = gfdm;
	}
	
	public String getGfmc() {
		return this.gfmc;
	}
	
	public void setGfmc(String gfmc) {
		this.gfmc = gfmc;
	}
	
	public String getSm() {
		return this.sm;
	}
	
	public void setSm(String sm) {
		this.sm = sm;
	}
	
}