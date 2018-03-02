package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the kj_dic_zjlx database table.
 * 
 */
@Entity
@Table(name = "kj_dic_zjlx")
@NamedQuery(name = "KjDicZjlx.findAll", query = "SELECT k FROM KjDicZjlx k")
public class KjDicZjlx implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer				id;
	
	private String				zjlx;
	
	public KjDicZjlx() {
	}
	
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getZjlx() {
		return this.zjlx;
	}
	
	public void setZjlx(String zjlx) {
		this.zjlx = zjlx;
	}
	
}