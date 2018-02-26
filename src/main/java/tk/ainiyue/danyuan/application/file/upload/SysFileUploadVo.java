package tk.ainiyue.danyuan.application.file.upload;

import java.util.ArrayList;
import java.util.List;

import tk.ainiyue.danyuan.application.file.upload.po.SysFileUploadInfo;

public class SysFileUploadVo {
	public List<SysFileUploadInfo> list = new ArrayList<>();

	public List<SysFileUploadInfo> getList() {
		return list;
	}

	public void setList(List<SysFileUploadInfo> list) {
		this.list = list;
	}
	
}
