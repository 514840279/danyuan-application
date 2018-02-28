package tk.ainiyue.danyuan.application.file.upload.service;

import java.util.List;

import org.springframework.data.domain.Page;

import tk.ainiyue.danyuan.application.file.upload.po.SysFileUploadInfo;

public interface SysFileUploadService {

	void save(SysFileUploadInfo info);

	Page<SysFileUploadInfo> findAllBySearchText(int pageNumber, int pageSize, String searchText);

	void delete(List<SysFileUploadInfo> list);

}
