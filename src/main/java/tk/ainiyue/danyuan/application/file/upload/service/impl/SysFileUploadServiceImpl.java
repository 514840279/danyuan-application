package tk.ainiyue.danyuan.application.file.upload.service.impl;

import java.io.File;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.file.upload.dao.SysFileUploadDao;
import tk.ainiyue.danyuan.application.file.upload.po.SysFileUploadInfo;
import tk.ainiyue.danyuan.application.file.upload.service.SysFileUploadService;

@Service("sysFileUploadService")
public class SysFileUploadServiceImpl implements SysFileUploadService {

	@Autowired
	private SysFileUploadDao sysFileUploadDao;

	@Override
	public void save(SysFileUploadInfo info) {
		sysFileUploadDao.save(info)		;
	}

	@Override
	public Page<SysFileUploadInfo> findAllBySearchText(int pageNumber, int pageSize, String searchText) {
		SysFileUploadInfo info = new SysFileUploadInfo();
		info.setCreateUser(searchText);
		Example<SysFileUploadInfo> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.ASC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		Page<SysFileUploadInfo> sourceCodes = sysFileUploadDao.findAll(example, request);
		return sourceCodes;
	}

	@Override
	public void delete(List<SysFileUploadInfo> list) {
		if(list.isEmpty()){
			return;
		}else{
			Iterator<SysFileUploadInfo> aa = list.iterator();
			while (aa.hasNext()) {
				SysFileUploadInfo info = aa.next();
				String path = info.getPath();
				File file = new File(path);
				if (!file.exists()) {
				        System.out.println("删除文件失败:" + path + "不存在！");
				} else {
				    if (file.exists() && file.isFile())
				    	if (file.delete()) {
				            System.out.println("删除单个文件" + path + "成功！");
				    	}
				    else
				    	System.out.println("删除文件失败:" + path + "不存在！");
				}
				sysFileUploadDao.delete(info);
			}
		}
		
	}
}
