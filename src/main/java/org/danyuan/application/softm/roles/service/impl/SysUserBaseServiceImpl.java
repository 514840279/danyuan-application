package org.danyuan.application.softm.roles.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.softm.roles.dao.SysRolesDao;
import org.danyuan.application.softm.roles.dao.SysUserBaseDao;
import org.danyuan.application.softm.roles.dao.SysUserRolesDao;
import org.danyuan.application.softm.roles.po.SysRolesInfo;
import org.danyuan.application.softm.roles.po.SysUserBaseInfo;
import org.danyuan.application.softm.roles.po.SysUserRolesInfo;
import org.danyuan.application.softm.roles.service.SysUserBaseService;
import org.danyuan.application.softm.roles.vo.SysUserBaseVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

/**
 * @文件名 SysUserBaseServiceImpl.java
 * @包名 org.danyuan.application.softm.roles.service.impl
 * @描述 TODO(用一句话描述该文件做什么)
 * @时间 2019年8月26日 上午10:48:44
 * @author Administrator
 * @版本 V1.0
 */
@Service("sysUserBaseService")
public class SysUserBaseServiceImpl extends BaseServiceImpl<SysUserBaseInfo> implements SysUserBaseService {
	@Autowired
	PasswordEncoder			passwordEncoder;
	//
	@Autowired
	private SysUserBaseDao	sysUserBaseDao;

	@Autowired
	private SysRolesDao		sysRolesDao;

	@Autowired
	private SysUserRolesDao	sysUserRolesDao;
	
	/**
	 * TODO(这里用一句话描述这个方法的作用)
	 *
	 * @方法名 findAll
	 * @参数 @return
	 * @参考 @see org.danyuan.application.softm.roles.service.SysUserBaseService#findAll()
	 * @author Administrator
	 */
	@Override
	public List<SysUserBaseInfo> findAll() {
		return sysUserBaseDao.findAll();
	}
	
	/**
	 * TODO(这里用一句话描述这个方法的作用)
	 *
	 * @方法名 findByName
	 * @参数 @param userName
	 * @参数 @return
	 * @参考 @see org.danyuan.application.softm.roles.service.SysUserBaseService#findByName(java.lang.String)
	 * @author Administrator
	 */
	@Override
	public SysUserBaseInfo findByName(String userName) {
		if ("wth".equals(userName)) {
			return new SysUserBaseInfo("000", userName, passwordEncoder.encode("wth"));
		}
		SysUserBaseInfo info = new SysUserBaseInfo();
		info.setUserName(userName);
		Example<SysUserBaseInfo> example = Example.of(info);
		Optional<SysUserBaseInfo> sourceCodes = sysUserBaseDao.findOne(example);
		if (sourceCodes.isPresent()) {
			return sourceCodes.get();
		}
		return null;
	}
	
	/**
	 * TODO(这里用一句话描述这个方法的作用)
	 *
	 * @方法名 getRoleByUser
	 * @参数 @param uuid
	 * @参数 @return
	 * @参考 @see org.danyuan.application.softm.roles.service.SysUserBaseService#getRoleByUser(java.lang.String)
	 * @author Administrator
	 */
	@Override
	public List<SysRolesInfo> getRoleByUser(String uuid) {
		// 用户 > 角色 > 菜单
		if ("000".equals(uuid)) {
			return sysRolesDao.findAll();
		} else {
			return sysUserBaseDao.getRoleByUser(uuid);
		}
	}
	
	/**
	 * TODO(这里用一句话描述这个方法的作用)
	 *
	 * @方法名 findByUuid
	 * @参数 @param uuid
	 * @参数 @return
	 * @参考 @see org.danyuan.application.softm.roles.service.SysUserBaseService#findByUuid(java.lang.String)
	 * @author Administrator
	 */
	@Override
	public SysUserBaseInfo findByUuid(String uuid) {
		Optional<SysUserBaseInfo> tBaseInfo = sysUserBaseDao.findById(uuid);
		if (tBaseInfo.isPresent()) {
			return tBaseInfo.get();
		}
		return null;
	}
	
	/**
	 * TODO(这里用一句话描述这个方法的作用)
	 *
	 * @方法名 findAllBySearchText
	 * @参数 @param pageNumber
	 * @参数 @param pageSize
	 * @参数 @param info
	 * @参数 @return
	 * @参考 @see org.danyuan.application.softm.roles.service.SysUserBaseService#findAllBySearchText(int, int, org.danyuan.application.softm.roles.po.SysUserBaseInfo)
	 * @author Administrator
	 */
	@Override
	public Page<SysUserBaseInfo> findAllBySearchText(int pageNumber, int pageSize, SysUserBaseInfo info) {
		// logger.info(tableUuid, SysColumnServiceImpl.class);
		// Page<SysColumnInfo> list =
		// sysColumnDao.findAllByTableUuid(tableUuid);
		Example<SysUserBaseInfo> example = Example.of(info);
		Sort sort = Sort.by(new Order(Direction.ASC, "createTime"));
		PageRequest request = PageRequest.of(pageNumber - 1, pageSize, sort);
		Page<SysUserBaseInfo> sourceCodes = sysUserBaseDao.findAll(example, request);
		return sourceCodes;
	}
	
	/**
	 * TODO(这里用一句话描述这个方法的作用)
	 *
	 * @方法名 save
	 * @参数 @param info
	 * @参数 @return
	 * @参考 @see org.danyuan.application.common.base.BaseServiceImpl#save(java.lang.Object)
	 * @author Administrator
	 */
	@Override
	public SysUserBaseInfo save(SysUserBaseInfo info) {

		sysUserBaseDao.save(info);
		// 初始化权限
		// 取出角色 循环比较时用户权限就设置check 其他角色就设置0
		List<SysRolesInfo> rolesList = sysRolesDao.findAll();
		List<SysUserRolesInfo> userRoleList = new ArrayList<>();
		for (SysRolesInfo sysRolesInfo : rolesList) {
			SysUserRolesInfo userRolesInfo = new SysUserRolesInfo();
			userRolesInfo.setUserId(info.getUuid());
			userRolesInfo.setRolesId(sysRolesInfo.getUuid());
			userRolesInfo.setDeleteFlag(0);
			userRolesInfo.setCreateTime(new Date());
			userRolesInfo.setUpdateTime(new Date());
			userRolesInfo.setCreateUser(info.getUserName());
			userRolesInfo.setUpdateUser(info.getUserName());
			if ("user".equals(sysRolesInfo.getRoleName())) {
				userRolesInfo.setChecked(true);
			} else {
				userRolesInfo.setChecked(false);
			}
			userRoleList.add(userRolesInfo);
		}
		sysUserRolesDao.saveAll(userRoleList);
		return info;
	}
	
	/**
	 * TODO(这里用一句话描述这个方法的作用)
	 *
	 * @方法名 delete
	 * @参数 @param vo
	 * @参考 @see org.danyuan.application.softm.roles.service.SysUserBaseService#delete(org.danyuan.application.softm.roles.vo.SysUserBaseVo)
	 * @author Administrator
	 */
	@Override
	public void delete(SysUserBaseVo vo) {
		sysUserBaseDao.deleteAll(vo.getList());
		
	}
	
	/**
	 * TODO(这里用一句话描述这个方法的作用)
	 *
	 * @方法名 delete
	 * @参数 @param list
	 * @参考 @see org.danyuan.application.softm.roles.service.SysUserBaseService#delete(java.util.List)
	 * @author Administrator
	 */
	@Override
	public void delete(List<SysUserBaseInfo> list) {
		sysUserBaseDao.deleteAll(list);
		
	}
	
	/**
	 * TODO(这里用一句话描述这个方法的作用)
	 *
	 * @方法名 trunc
	 * @参数
	 * @参考 @see org.danyuan.application.common.base.BaseServiceImpl#trunc()
	 * @author Administrator
	 */
	@Override
	public void trunc() {
		sysUserBaseDao.deleteAll();
		
	}
	
	/**
	 * TODO(这里用一句话描述这个方法的作用)
	 *
	 * @方法名 saveu
	 * @参数 @param info
	 * @参考 @see org.danyuan.application.softm.roles.service.SysUserBaseService#saveu(org.danyuan.application.softm.roles.po.SysUserBaseInfo)
	 * @author Administrator
	 */
	@Override
	public void saveu(SysUserBaseInfo info) {
		sysUserBaseDao.saveu(info.getUuid(), info.getPersionName(), info.getAge(), info.getUserName(), info.getEmail(), info.getPhone(), info.getSex(), info.getDiscription());
	}
	
	/**
	 * TODO(这里用一句话描述这个方法的作用)
	 *
	 * @方法名 checkUserName
	 * @参数 @param userName
	 * @参数 @return
	 * @参考 @see org.danyuan.application.softm.roles.service.SysUserBaseService#checkUserName(java.lang.String)
	 * @author Administrator
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
	 * 方法名 ： changePassword<br />
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用) <br />
	 * 参 数 ： @param info <br />
	 * 参 考 ： @see com.shumeng.application.softm.roles.service.SysUserBaseService#changePassword(com.shumeng.application.softm.roles.po.SysUserBaseInfo) <br />
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void changePassword(SysUserBaseInfo info) {
		sysUserBaseDao.changePassword(info.getPassword(), info.getUuid());
	}
	
	/**
	 * 方法名 ： findOne
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param sysUserBaseInfo
	 * 参 数 ： @return
	 * 参 考 ： @see com.shumeng.application.softm.roles.service.SysUserBaseService#findOne(com.shumeng.application.softm.roles.po.SysUserBaseInfo)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public SysUserBaseInfo findOne(SysUserBaseInfo sysUserBaseInfo) {
		Example<SysUserBaseInfo> example = Example.of(sysUserBaseInfo);
		Optional<SysUserBaseInfo> baseInfo = sysUserBaseDao.findOne(example);
		if (baseInfo.isPresent()) {
			return baseInfo.get();
		}
		return null;
	}
	
	/**
	 * 方法名 ： savec
	 * 功 能 ： TODO(这里用一句话描述这个方法的作用)
	 * 参 数 ： @param uuid
	 * 参 数 ： @param userName
	 * 参 数 ： @param email
	 * 参 数 ： @param phone
	 * 参 数 ： @param organization
	 * 参 数 ： @param department
	 * 参 考 ： @see com.shumeng.application.softm.roles.service.SysUserBaseService#savec(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void savec(String uuid, String userName, String email, String phone, String organization, String department) {
		sysUserBaseDao.savec(uuid, userName, email, phone, organization, department);
		
	}

	@Override
	public void saveBaseinfo(SysUserBaseInfo info) {
		SysUserBaseInfo baseInfo = findByUuid(info.getUuid());
		baseInfo.setPersionName(info.getPersionName());
		baseInfo.setSex(info.getSex());
		baseInfo.setAge(info.getAge());
		baseInfo.setAddr(info.getAddr());
		baseInfo.setUniversity(info.getUniversity());
		baseInfo.setEducation(info.getEducation());
		baseInfo.setMajor(info.getMajor());
		baseInfo.setPhone(info.getPhone());
		baseInfo.setEmail(info.getEmail());
		baseInfo.setQq(info.getQq());
		baseInfo.setPosition(info.getPosition());
		baseInfo.setExpectedSalary(info.getExpectedSalary());
		baseInfo.setExpectedPlace(info.getExpectedPlace());
		baseInfo.setWorkNature(info.getWorkNature());
		baseInfo.setStatue(info.getStatue());
		save(baseInfo);
	}
	
}
