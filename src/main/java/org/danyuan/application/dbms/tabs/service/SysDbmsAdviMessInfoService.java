package org.danyuan.application.dbms.tabs.service;

import java.util.List;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.dbms.tabs.dao.SysDbmsAdviMessInfoDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsAdviMessInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysDbmsAdviMessInfoService.java
 * 包 名 ： com.shumeng.application.application.zhcx.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月27日 下午5:27:33
 * 版 本 ： V1.0
 */
@Service
public class SysDbmsAdviMessInfoService extends BaseServiceImpl<SysDbmsAdviMessInfo> implements BaseService<SysDbmsAdviMessInfo> {
	@Autowired
	SysDbmsAdviMessInfoDao sysDbmsAdviMessInfoDao;
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#findAll(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public List<SysDbmsAdviMessInfo> findAll(SysDbmsAdviMessInfo info) {
		return sysDbmsAdviMessInfoDao.findByDeleteFlag(0);
	}
	
}
