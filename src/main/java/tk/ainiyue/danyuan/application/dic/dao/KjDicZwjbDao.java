package tk.ainiyue.danyuan.application.dic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.dic.po.KjDicZwjb;

@Repository("kjDicZwjbDao")
public interface KjDicZwjbDao extends JpaRepository<KjDicZwjb, String>{

}
