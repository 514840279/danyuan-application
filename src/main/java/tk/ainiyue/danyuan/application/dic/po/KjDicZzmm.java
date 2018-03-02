package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the kj_dic_zzmm database table.
 * 
 */
@Entity
@Table(name = "kj_dic_zzmm")
@NamedQuery(name = "KjDicZzmm.findAll", query = "SELECT k FROM KjDicZzmm k")
public class KjDicZzmm implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer				id;
	
	private String				zzmm;
	
	public KjDicZzmm() {
	}
	
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getZzmm() {
		return this.zzmm;
	}
	
	public void setZzmm(String zzmm) {
		this.zzmm = zzmm;
	}
	
}