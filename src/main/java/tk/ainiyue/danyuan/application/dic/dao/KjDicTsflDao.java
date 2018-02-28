package tk.ainiyue.danyuan.application.dic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.dic.po.KjDicTsfl;

@Repository("kjDicTsflDao")
public interface KjDicTsflDao extends JpaRepository<KjDicTsfl, String>{

}
