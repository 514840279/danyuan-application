package tk.ainiyue.danyuan.application.dbm.zhcx.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.common.base.BaseService;
import tk.ainiyue.danyuan.application.dbm.zhcx.dao.SysAdviceMessDao;
import tk.ainiyue.danyuan.application.dbm.zhcx.po.SysAdviceMess;

/**
 * 文件名 ： SysAdviceMessService.java
 * 包 名 ： com.shumeng.application.application.zhcx.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月27日 下午5:27:33
 * 版 本 ： V1.0
 */
@Service
public class SysAdviceMessService implements BaseService<SysAdviceMess> {
	@Autowired
	SysAdviceMessDao sysAdviceMessDao;
	
	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#findOne(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public SysAdviceMess findOne(SysAdviceMess info) {
		// TODO Auto-generated method stub
		return null;
	}
	
	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#findAll(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public List<SysAdviceMess> findAll(SysAdviceMess info) {
		
		return sysAdviceMessDao.findByDeleteFlag(false);
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#save(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void save(SysAdviceMess info) {
		// TODO Auto-generated method stub
		
	}
	
	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#save(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void save(List<SysAdviceMess> list) {
		// TODO Auto-generated method stub
		
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#delete(java.lang.Object)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(SysAdviceMess info) {
		// TODO Auto-generated method stub
		
	}
	
	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#delete(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(List<SysAdviceMess> list) {
		// TODO Auto-generated method stub
		
	}
	
	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ：
	 * 参 考 ： @see com.shumeng.application.common.base.BaseService#trunc()
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void trunc() {
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public Page<SysAdviceMess> page(int pageNumber, int pageSize, SysAdviceMess info, Map<String, String> map, Order... order) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
