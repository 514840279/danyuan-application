package tk.ainiyue.danyuan.application.dic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.dic.po.KjDicMzdm;

@Repository("kjDicMzdmDao")
public interface KjDicMzdmDao extends JpaRepository<KjDicMzdm, String>{

}
