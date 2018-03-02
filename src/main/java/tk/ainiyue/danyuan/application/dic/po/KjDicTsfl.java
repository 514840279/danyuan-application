package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the kj_dic_tsfl database table.
 * 
 */
@Entity
@Table(name = "kj_dic_tsfl")
@NamedQuery(name = "KjDicTsfl.findAll", query = "SELECT k FROM KjDicTsfl k")
public class KjDicTsfl implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer				id;
	
	private String				ztdl;
	
	private String				ztlh;
	
	private String				ztlm;
	
	public KjDicTsfl() {
	}
	
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getZtdl() {
		return this.ztdl;
	}
	
	public void setZtdl(String ztdl) {
		this.ztdl = ztdl;
	}
	
	public String getZtlh() {
		return this.ztlh;
	}
	
	public void setZtlh(String ztlh) {
		this.ztlh = ztlh;
	}
	
	public String getZtlm() {
		return this.ztlm;
	}
	
	public void setZtlm(String ztlm) {
		this.ztlm = ztlm;
	}
	
}