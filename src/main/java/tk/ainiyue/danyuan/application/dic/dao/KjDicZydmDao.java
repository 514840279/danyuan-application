package tk.ainiyue.danyuan.application.dic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.dic.po.KjDicZydm;

@Repository("kjDicZydmDao")
public interface KjDicZydmDao extends JpaRepository<KjDicZydm, String>{

}
