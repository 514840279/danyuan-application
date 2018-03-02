package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the kj_dic_cglx database table.
 * 
 */
@Entity
@Table(name = "kj_dic_cglx")
@NamedQuery(name = "KjDicCglx.findAll", query = "SELECT k FROM KjDicCglx k")
public class KjDicCglx implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer				id;
	
	private String				cglx;
	
	public KjDicCglx() {
	}
	
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getCglx() {
		return this.cglx;
	}
	
	public void setCglx(String cglx) {
		this.cglx = cglx;
	}
	
}