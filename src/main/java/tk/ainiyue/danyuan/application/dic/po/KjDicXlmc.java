package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the kj_dic_xlmc database table.
 * 
 */
@Entity
@Table(name = "kj_dic_xlmc")
@NamedQuery(name = "KjDicXlmc.findAll", query = "SELECT k FROM KjDicXlmc k")
public class KjDicXlmc implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer				id;
	
	private String				xl;
	
	public KjDicXlmc() {
	}
	
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getXl() {
		return this.xl;
	}
	
	public void setXl(String xl) {
		this.xl = xl;
	}
	
}