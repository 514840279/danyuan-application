package tk.ainiyue.danyuan.application.dic.po;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 * The persistent class for the kj_dic_pxjx database table.
 * 
 */
@Entity
@Table(name = "kj_dic_pxjx")
@NamedQuery(name = "KjDicPxjx.findAll", query = "SELECT k FROM KjDicPxjx k")
public class KjDicPxjx implements Serializable {
	private static final long	serialVersionUID	= 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer				id;
	
	private String				pxjx;
	
	public KjDicPxjx() {
	}
	
	public Integer getId() {
		return this.id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getPxjx() {
		return this.pxjx;
	}
	
	public void setPxjx(String pxjx) {
		this.pxjx = pxjx;
	}
	
}