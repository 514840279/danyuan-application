package tk.ainiyue.danyuan.application.crawler.config.service;

import java.util.List;

import tk.ainiyue.danyuan.application.crawler.config.po.SysSeedResultRulerInfo;
import tk.ainiyue.danyuan.application.crawler.config.vo.SysSeedResultRulerVo;

public interface SysSeedResultRulerService {

	List<SysSeedResultRulerInfo> findAllBySysSeedResultRulerInfo(SysSeedResultRulerInfo info);
	
	List<SysSeedResultRulerInfo> saveSysSeedResultRulerInfo(SysSeedResultRulerVo vo);
	
}
