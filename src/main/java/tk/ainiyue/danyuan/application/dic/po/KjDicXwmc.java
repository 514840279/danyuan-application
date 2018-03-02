package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the kj_dic_xwmc database table.
 * 
 */
@Entity
@Table(name = "kj_dic_xwmc")
@NamedQuery(name = "KjDicXwmc.findAll", query = "SELECT k FROM KjDicXwmc k")
public class KjDicXwmc implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer				id;
	
	private String				xlmc;
	
	public KjDicXwmc() {
	}
	
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getXlmc() {
		return this.xlmc;
	}
	
	public void setXlmc(String xlmc) {
		this.xlmc = xlmc;
	}
	
}