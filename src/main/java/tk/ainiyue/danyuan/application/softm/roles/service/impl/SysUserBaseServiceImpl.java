package tk.ainiyue.danyuan.application.softm.roles.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.softm.roles.dao.SysUserBaseDao;
import tk.ainiyue.danyuan.application.softm.roles.po.SysUserBaseInfo;
import tk.ainiyue.danyuan.application.softm.roles.service.SysUserBaseService;
import tk.ainiyue.danyuan.application.softm.roles.vo.SysUserBaseVo;
import tk.ainiyue.danyuan.application.softm.sysmenu.po.SysMenuInfo;

/**
 * 文件名 ： SysUserBaseServiceImpl.java
 * 包 名 ： tk.ainiyue.admin.userbase.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年7月17日 下午3:58:07
 * 版 本 ： V1.0
 */
@Service("sysUserBaseService")
public class SysUserBaseServiceImpl implements SysUserBaseService {

	//
	@Autowired
	private SysUserBaseDao sysUserBaseDao;

	/**
	 * 方法名 ： findAll
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @return
	 * 参 考 ： @see tk.ainiyue.admin.userbase.service.SysUserBaseService#findAll()
	 * 作 者 ： Tenghui.Wang
	 */

	@Override
	public List<SysUserBaseInfo> findAll() {
		return sysUserBaseDao.findAll();
	}

	/**
	 * 方法名 ： findByName
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param userName
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.user.userbase.service.SysUserBaseService#findByName(java.lang.String)
	 * 作 者 ： Administrator
	 */

	@Override
	public SysUserBaseInfo findByName(String userName) {
		SysUserBaseInfo info = new SysUserBaseInfo();
		info.setUserName(userName);
		Example<SysUserBaseInfo> example = Example.of(info);
		SysUserBaseInfo sourceCodes = sysUserBaseDao.findOne(example);
		return sourceCodes;
	}

	/**
	 * 方法名 ： getRoleByUser
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param user
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.user.userbase.service.SysUserBaseService#getRoleByUser(tk.ainiyue.danyuan.application.user.userbase.po.SysUserBaseInfo)
	 * 作 者 ： Administrator
	 */

	@Override
	public List<SysMenuInfo> getRoleByUser(String uuid) {
		// 用户 > 角色 > 菜单

		return sysUserBaseDao.getRoleByUser(uuid);
	}

	/**
	 * 方法名 ： findByUuid
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param uuid
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.user.userbase.service.SysUserBaseService#findByUuid(java.lang.String)
	 * 作 者 ： Administrator
	 */

	@Override
	public SysUserBaseInfo findByUuid(String uuid) {

		return sysUserBaseDao.findOne(uuid);
	}

	/**
	 * 方法名 ： findAllBySearchText
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param pageNumber
	 * 参 数 ： @param pageSize
	 * 参 数 ： @param info
	 * 参 数 ： @return
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.user.userbase.service.SysUserBaseService#findAllBySearchText(int,
	 * int, tk.ainiyue.danyuan.application.user.userbase.po.SysUserBaseInfo)
	 * 作 者 ： Administrator
	 */

	@Override
	public Page<SysUserBaseInfo> findAllBySearchText(int pageNumber, int pageSize, SysUserBaseInfo info) {
		// logger.info(tableUuid, SysColumnServiceImpl.class);
		// Page<SysColumnInfo> list = sysColumnDao.findAllByTableUuid(tableUuid);
		Example<SysUserBaseInfo> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.ASC, "createTime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		Page<SysUserBaseInfo> sourceCodes = sysUserBaseDao.findAll(example, request);
		return sourceCodes;
	}

	/**
	 * 方法名 ： save
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.user.userbase.service.SysUserBaseService#save(tk.ainiyue.danyuan.application.user.userbase.po.SysUserBaseInfo)
	 * 作 者 ： Administrator
	 */

	@Override
	public void save(SysUserBaseInfo info) {
		sysUserBaseDao.save(info);

	}

	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.user.userbase.service.SysUserBaseService#delete(tk.ainiyue.danyuan.application.user.userbase.po.SysUserBaseInfo)
	 * 作 者 ： Administrator
	 */

	@Override
	public void delete(SysUserBaseVo vo) {
		sysUserBaseDao.delete(vo.getList());

	}

	/**
	 * 方法名 ： delete
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param list
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.user.userbase.service.SysUserBaseService#delete(java.util.List)
	 * 作 者 ： Administrator
	 */

	@Override
	public void delete(List<SysUserBaseInfo> list) {
		sysUserBaseDao.delete(list);

	}

	/**
	 * 方法名 ： trunc
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ：
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.user.userbase.service.SysUserBaseService#trunc()
	 * 作 者 ： Administrator
	 */

	@Override
	public void trunc() {
		sysUserBaseDao.deleteAll();

	}

	/**
	 * 方法名 ： saveu
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param uuid
	 * 参 数 ： @param persionName
	 * 参 数 ： @param age
	 * 参 数 ： @param userName
	 * 参 数 ： @param email
	 * 参 数 ： @param phone
	 * 参 数 ： @param sex
	 * 参 考 ： @see
	 * tk.ainiyue.danyuan.application.user.userbase.service.SysUserBaseService#saveu(java.lang.String,
	 * java.lang.String, java.lang.Integer, java.lang.String, java.lang.String,
	 * java.lang.String, java.lang.String)
	 * 作 者 ： Administrator
	 */

	@Override
	public void saveu(String uuid, String persionName, Integer age, String userName, String email, String phone, String sex, String discription) {
		sysUserBaseDao.saveu(uuid, persionName, age, userName, email, phone, sex, discription);
	}

	/**
	 * 方法名 ： checkurl
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param userName
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.softm.roles.service.SysUserBaseService#checkurl(java.lang.String)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public boolean checkUserName(String userName) {
		SysUserBaseInfo info = new SysUserBaseInfo();
		info.setUserName(userName);
		Example<SysUserBaseInfo> example = Example.of(info);
		List<SysUserBaseInfo> list = sysUserBaseDao.findAll(example);
		if (list.size() == 0) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 方法名 ： changePassword
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param info
	 * 参 考 ： @see com.shumeng.application.softm.roles.service.SysUserBaseService#changePassword(com.shumeng.application.softm.roles.po.SysUserBaseInfo)
	 * 作 者 ： Administrator
	 */

	@Override
	public void changePassword(SysUserBaseInfo info) {
		sysUserBaseDao.changePassword(info.getPassword(), info.getUuid());
	}

}
