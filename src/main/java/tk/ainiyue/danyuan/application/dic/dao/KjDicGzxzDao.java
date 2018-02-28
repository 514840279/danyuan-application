package tk.ainiyue.danyuan.application.dic.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.dic.po.KjDicGzxz;

@Repository("kjDicGzxzDao")
public interface KjDicGzxzDao extends JpaRepository<KjDicGzxz, String>{

}
