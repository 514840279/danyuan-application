package tk.ainiyue.danyuan.application.file.upload.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.file.upload.po.SysFileUploadInfo;

@Repository("sysFileUploadDao")
public interface SysFileUploadDao extends JpaRepository<SysFileUploadInfo, String>{

}
