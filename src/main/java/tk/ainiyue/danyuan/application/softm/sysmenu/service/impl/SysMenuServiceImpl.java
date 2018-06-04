package tk.ainiyue.danyuan.application.softm.sysmenu.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.domain.Sort.Order;
import org.springframework.stereotype.Service;

import tk.ainiyue.danyuan.application.softm.organization.dao.SysRolesJurisdictionDao;
import tk.ainiyue.danyuan.application.softm.organization.po.SysRolesJurisdictionInfo;
import tk.ainiyue.danyuan.application.softm.organization.po.SysRolesJurisdictionInfoPK;
import tk.ainiyue.danyuan.application.softm.sysmenu.dao.SysMenuDao;
import tk.ainiyue.danyuan.application.softm.sysmenu.po.SysMenuInfo;
import tk.ainiyue.danyuan.application.softm.sysmenu.service.SysMenuService;
import tk.ainiyue.danyuan.application.softm.sysmenu.vo.AuthorityzTreeVO;

/**
 * 文件名 ： AuthorityServiceImpl.java 包 名 ：
 * tk.ainiyue.danyuan.application.datacentor.authority.service.impl 描 述 ：
 * TODO(用一句话描述该文件做什么) 作 者 ： Tenghui.Wang 时 间 ： 2016年10月15日 上午11:04:55 版 本 ： V1.0
 */
@Service("sysMenuService")
public class SysMenuServiceImpl implements SysMenuService {
	
	//
	@Autowired
	private SysMenuDao				sysMenuDao;
	
	@Autowired
	private SysRolesJurisdictionDao	sysRolesJurisdictionDao;
	
	/**
	 * 方法名 ： findAll 功 能 ： TODO(这里用一句话描述这个方法的作用) 参 数 ： @return 参 考 ： @see
	 * tk.ainiyue.danyuan.application.datacentor.authority.service.
	 * AuthorityService#findAll() 作 者 ： Tenghui.Wang
	 */
	@Override
	public List<SysMenuInfo> findAll() {
		// TODO Auto-generated method stub
		return sysMenuDao.findAll();
	}
	
	/**
	 * 方法名 ： save 功 能 ： TODO(这里用一句话描述这个方法的作用) 参 数 ： @param authority 参 考 ： @see
	 * tk.ainiyue.danyuan.application.datacentor.authority.service.
	 * AuthorityService#save(tk.ainiyue.danyuan.application.datacentor.authority
	 * .po.Authority) 作 者 ： Tenghui.Wang
	 */
	@Override
	public AuthorityzTreeVO save(SysMenuInfo authority) {
		if (authority.getHomePage()) {
			sysMenuDao.updateSysMenuInfoHomePage();
		}
		sysMenuDao.save(authority);
		AuthorityzTreeVO vo = new AuthorityzTreeVO();
		vo.setId(authority.getUuid());
		vo.setName(authority.getName());
		vo.setIconSkin(authority.getIcon());
		return vo;
		
	}
	
	/**
	 * 方法名 ： findzTreeByF_ParentId 功 能 ： TODO(这里用一句话描述这个方法的作用) 参 数 ： @param
	 * string 参 数 ： @return 参 考 ： @see
	 * tk.ainiyue.danyuan.application.authority.service.AuthorityService#findzTreeByF_ParentId(java.lang.String)
	 * 作 者 ： wang
	 */
	
	@Override
	public List<AuthorityzTreeVO> findzTreeByF_ParentId(String id) {
		List<AuthorityzTreeVO> list = null;
		List<SysMenuInfo> listt = sysMenuDao.findAllByParentsIdOrderByF_SortCode(id);
		if (listt != null && listt.size() > 0) {
			list = new ArrayList<>();
			for (SysMenuInfo sysMenuInfo : listt) {
				AuthorityzTreeVO vo = new AuthorityzTreeVO();
				vo.setId(sysMenuInfo.getUuid());
				vo.setName(sysMenuInfo.getName());
				vo.setIcon(sysMenuInfo.getIcon());
				vo.setUrl(sysMenuInfo.getUri());
				List<AuthorityzTreeVO> listt1 = findzTreeByF_ParentId(sysMenuInfo.getUuid());
				if (listt1 != null) {
					vo.getChildren().addAll(listt1);
				}
				list.add(vo);
			}
		}
		return list;
	}
	
	@Override
	public List<AuthorityzTreeVO> findzTreeRole(String id, String roleUuid) {
		List<AuthorityzTreeVO> list = null;
		List<SysMenuInfo> listt = sysMenuDao.findAllByParentsIdOrderByF_SortCode(id);
		if (listt != null && listt.size() > 0) {
			list = new ArrayList<>();
			for (SysMenuInfo sysMenuInfo : listt) {
				AuthorityzTreeVO vo = new AuthorityzTreeVO();
				vo.setId(sysMenuInfo.getUuid());
				vo.setName(sysMenuInfo.getName());
				vo.setIcon(sysMenuInfo.getIcon());
				vo.setUrl(sysMenuInfo.getUri());
				SysRolesJurisdictionInfo jurisdiction = new SysRolesJurisdictionInfo();
				SysRolesJurisdictionInfoPK pk = new SysRolesJurisdictionInfoPK(sysMenuInfo.getUuid(), roleUuid);
				jurisdiction = sysRolesJurisdictionDao.findById(SysRolesJurisdictionInfo.class, pk);
				if (jurisdiction != null) {
					vo.setChecked(jurisdiction.getChecked());
				}
				List<AuthorityzTreeVO> listt1 = findzTreeRole(sysMenuInfo.getUuid(), roleUuid);
				if (listt1 != null) {
					vo.getChildren().addAll(listt1);
				}
				list.add(vo);
			}
		}
		return list;
	}
	
	@Override
	public List<AuthorityzTreeVO> findzTreeByUser(String id, String userName) {
		List<AuthorityzTreeVO> list = null;
		List<SysMenuInfo> listt = null;
		if ("wth".equals(userName)) {
			listt = sysMenuDao.findzTreeByUser(id);
		} else {
			listt = sysMenuDao.findzTreeByUser(id, userName);
		}
		if (listt != null && listt.size() > 0) {
			list = new ArrayList<>();
			for (SysMenuInfo sysMenuInfo : listt) {
				AuthorityzTreeVO vo = new AuthorityzTreeVO();
				vo.setId(sysMenuInfo.getUuid());
				vo.setName(sysMenuInfo.getName());
				vo.setIcon(sysMenuInfo.getIcon());
				vo.setUrl(sysMenuInfo.getUri());
				vo.setHomePage(sysMenuInfo.getHomePage());
				List<AuthorityzTreeVO> listt1 = findzTreeByUser(sysMenuInfo.getUuid(), userName);
				if (listt1 != null) {
					vo.getChildren().addAll(listt1);
				}
				list.add(vo);
			}
		}
		return list;
	}
	
	/**
	 * 方法名 ： findAuthorityByUuid 功 能 ： 查询 参 数 ： @param authority 参 数 ： @return 参
	 * 考 ： @see
	 * tk.ainiyue.danyuan.application.authority.service.AuthorityService#findAuthorityByUuid(tk.ainiyue.danyuan.application.authority.po.Authority)
	 * 作 者 ： wang
	 */
	
	@Override
	public SysMenuInfo findAuthorityByUuid(SysMenuInfo sysMenuInfo) {
		return sysMenuDao.findAllByUuid(sysMenuInfo.getUuid());
	}
	
	/**
	 * 方法名 ： deleteAuthority 功 能 ： TODO(这里用一句话描述这个方法的作用) 参 数 ： @param authority
	 * 参 数 ： @return 参 考 ： @see
	 * tk.ainiyue.danyuan.application.authority.service.AuthorityService#deleteAuthority(tk.ainiyue.danyuan.application.authority.po.Authority)
	 * 作 者 ： wang
	 */
	
	@Override
	public void deleteAuthority(SysMenuInfo sysMenuInfo) {
		List<AuthorityzTreeVO> list = findzTreeByF_ParentId(sysMenuInfo.getUuid());
		if (list != null) {
			for (AuthorityzTreeVO authorityzTreeVO : list) {
				sysMenuDao.delete(authorityzTreeVO.getId());
			}
		}
		sysMenuDao.delete(sysMenuInfo.getUuid());
	}
	
	/**
	 * 方法名 ： updateAuthorityName 功 能 ： TODO(这里用一句话描述这个方法的作用) 参 数 ： @param
	 * authority 参 数 ： @return 参 考 ： @see
	 * tk.ainiyue.danyuan.application.authority.service.AuthorityService#updateAuthorityName(tk.ainiyue.danyuan.application.authority.po.Authority)
	 * 作 者 ： wang
	 */
	
	@Override
	public AuthorityzTreeVO updateAuthorityName(SysMenuInfo sysMenuInfo) {
		sysMenuDao.updateSysMenuInfoName(sysMenuInfo.getName(), sysMenuInfo.getUuid());
		AuthorityzTreeVO vo = new AuthorityzTreeVO();
		vo.setId(sysMenuInfo.getUuid());
		vo.setName(sysMenuInfo.getName());
		vo.setIconSkin(sysMenuInfo.getIcon());
		return vo;
		
	}
	
	/**
	 * 方法名 ： onDropAuthority 功 能 ： TODO(这里用一句话描述这个方法的作用) 参 数 ： @param
	 * authorityzTreeVO 参 数 ： @return 参 考 ： @see
	 * tk.ainiyue.danyuan.application.authority.service.AuthorityService#onDropAuthority(tk.ainiyue.danyuan.application.authority.vo.AuthorityzTreeVO)
	 * 作 者 ： wang
	 */
	
	@Override
	public AuthorityzTreeVO onDropAuthority(SysMenuInfo sysMenuInfo) {
		String[] str = sysMenuInfo.getUuid().split(",");
		if ("inner".equals(sysMenuInfo.getMoveType())) {
			List<SysMenuInfo> list = sysMenuDao.getSize(sysMenuInfo.getParentsId());
			int num = list.size();
			for (String string : str) {
				sysMenuDao.updateSysMenuInfoName(sysMenuInfo.getParentsId(), num++, string);
			}
		} else {
			SysMenuInfo temp = sysMenuDao.getParentId(sysMenuInfo.getParentsId() == null ? "0" : sysMenuInfo.getParentsId());
			List<SysMenuInfo> list = sysMenuDao.findAllByParentsIdOrderByF_SortCode(temp.getParentsId());
			int num = 0;
			for (int i = 0; i < list.size(); i++) {
				for (String string : str) {
					if (string.equals(list.get(i).getUuid())) {
						list.remove(i);
						i--;
					}
				}
				
			}
			
			if ("prev".equals(sysMenuInfo.getMoveType())) {
				for (SysMenuInfo sysMenuInfo2 : list) {
					if (temp.getUuid().equals(sysMenuInfo2.getUuid())) {
						for (String string : str) {
							sysMenuDao.updateSysMenuInfoName(temp.getParentsId(), num++, string);
						}
					}
					sysMenuDao.updateSysMenuInfoName(temp.getParentsId(), num++, sysMenuInfo2.getUuid());
				}
			} else if ("next".equals(sysMenuInfo.getMoveType())) {
				for (SysMenuInfo authority2 : list) {
					sysMenuDao.updateSysMenuInfoName(temp.getParentsId(), num++, authority2.getUuid());
					if (temp.getUuid().equals(authority2.getUuid())) {
						for (String string : str) {
							sysMenuDao.updateSysMenuInfoName(temp.getParentsId(), num++, string);
						}
					}
				}
			}
		}
		return new AuthorityzTreeVO();
	}
	
	/**
	 * 方法名 ： findByUuid 功 能 ： TODO(这里用一句话描述这个方法的作用) 参 数 ： @param uuid 参 数
	 * ： @return 参 考 ： @see
	 * tk.ainiyue.danyuan.application.softm.sysmenu.service.SysMenuService#findByUuid(java.lang.String)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public SysMenuInfo findByUuid(String uuid) {
		return sysMenuDao.findAllByUuid(uuid);
	}
	
	/**
	 * 方法名 ： findAllBySearchText 功 能 ： TODO(这里用一句话描述这个方法的作用) 参 数 ： @param
	 * pageNumber 参 数 ： @param pageSize 参 数 ： @param info 参 数 ： @return 参 考
	 * ： @see
	 * tk.ainiyue.danyuan.application.softm.sysmenu.service.SysMenuService#findAllBySearchText(int,
	 * int, tk.ainiyue.danyuan.application.softm.sysmenu.po.SysMenuInfo) 作 者 ：
	 * Administrator
	 */
	
	@Override
	public Page<SysMenuInfo> findAllBySearchText(int pageNumber, int pageSize, SysMenuInfo info) {
		Example<SysMenuInfo> example = Example.of(info);
		Sort sort = new Sort(new Order(Direction.DESC, "insertDatetime"));
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, sort);
		Page<SysMenuInfo> sourceCodes = sysMenuDao.findAll(example, request);
		return sourceCodes;
	}
	
	/**
	 * 方法名 ： delete 功 能 ： TODO(这里用一句话描述这个方法的作用) 参 数 ： @param info 参 考 ： @see
	 * tk.ainiyue.danyuan.application.softm.sysmenu.service.SysMenuService#delete(tk.ainiyue.danyuan.application.softm.sysmenu.po.SysMenuInfo)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(SysMenuInfo info) {
		sysMenuDao.delete(info);
	}
	
	/**
	 * 方法名 ： delete 功 能 ： TODO(这里用一句话描述这个方法的作用) 参 数 ： @param list 参 考 ： @see
	 * tk.ainiyue.danyuan.application.softm.sysmenu.service.SysMenuService#delete(java.util.List)
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void delete(List<SysMenuInfo> list) {
		sysMenuDao.delete(list);
	}
	
	/**
	 * 方法名 ： trunc 功 能 ： TODO(这里用一句话描述这个方法的作用) 参 数 ： 参 考 ： @see
	 * tk.ainiyue.danyuan.application.softm.sysmenu.service.SysMenuService#trunc()
	 * 作 者 ： Administrator
	 */
	
	@Override
	public void trunc() {
		sysMenuDao.deleteAll();
	}
	
}
