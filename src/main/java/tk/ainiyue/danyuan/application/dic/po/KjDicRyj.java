package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the kj_dic_ryjs database table.
 * 
 */
@Entity
@Table(name = "kj_dic_ryjs")
@NamedQuery(name = "KjDicRyj.findAll", query = "SELECT k FROM KjDicRyj k")
public class KjDicRyj implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer				id;
	
	private String				ryjs;
	
	public KjDicRyj() {
	}
	
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getRyjs() {
		return this.ryjs;
	}
	
	public void setRyjs(String ryjs) {
		this.ryjs = ryjs;
	}
	
}