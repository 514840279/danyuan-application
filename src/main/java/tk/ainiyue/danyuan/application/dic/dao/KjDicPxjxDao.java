package tk.ainiyue.danyuan.application.dic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.dic.po.KjDicPxjx;

@Repository("kjDicPxjxDao")
public interface KjDicPxjxDao extends JpaRepository<KjDicPxjx, String>{

}
