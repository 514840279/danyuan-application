package tk.ainiyue.danyuan.application.dic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.dic.po.KjDicZxjd;

@Repository("kjDicZxjdDao")
public interface KjDicZxjdDao extends JpaRepository<KjDicZxjd, String>{

}
