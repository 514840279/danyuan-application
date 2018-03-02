package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the kj_dic_zwjb database table.
 * 
 */
@Entity
@Table(name = "kj_dic_zwjb")
@NamedQuery(name = "KjDicZwjb.findAll", query = "SELECT k FROM KjDicZwjb k")
public class KjDicZwjb implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer				id;
	
	private String				lb;
	
	private String				zwjb;
	
	public KjDicZwjb() {
	}
	
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getLb() {
		return this.lb;
	}
	
	public void setLb(String lb) {
		this.lb = lb;
	}
	
	public String getZwjb() {
		return this.zwjb;
	}
	
	public void setZwjb(String zwjb) {
		this.zwjb = zwjb;
	}
	
}