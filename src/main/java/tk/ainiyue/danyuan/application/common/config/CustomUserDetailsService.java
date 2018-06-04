package tk.ainiyue.danyuan.application.common.config;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import tk.ainiyue.danyuan.application.softm.roles.po.SysUserBaseInfo;
import tk.ainiyue.danyuan.application.softm.roles.service.SysUserBaseService;
import tk.ainiyue.danyuan.application.softm.sysmenu.po.SysMenuInfo;

/**
 * 文件名 ： CustomUserDetailsService.java
 * 包 名 ： tk.ainiyue.danyuan.application.common.config
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年10月8日 上午9:10:01
 * 版 本 ： V1.0
 */
@Repository
public class CustomUserDetailsService implements UserDetailsService {
	@Autowired // 数据库服务类
	private SysUserBaseService sysUserBaseService;
	
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		SysUserBaseInfo user;
		try {
			user = sysUserBaseService.findByName(userName);
		} catch (Exception e) {
			throw new UsernameNotFoundException("user select fail");
			
		}
		if (user == null) {
			throw new UsernameNotFoundException("no user found");
		} else {
			try {
				List<SysMenuInfo> menu = sysUserBaseService.getRoleByUser(user.getUuid());
				List<GrantedAuthority> gas = new ArrayList<>();
				if (menu != null) {
					for (SysMenuInfo sysMenuInfo : menu) {
						gas.add(new SimpleGrantedAuthority(sysMenuInfo.getName()));
					}
				}
				//				gas.add(new SwitchUserGrantedAuthority("ROLE_USER", new Authentication()));
				UserDetails users = new User(user.getUserName(), user.getPassword(), true, true, true, true, gas);
				return users;
			} catch (Exception e) {
				throw new UsernameNotFoundException("user role select fail");
			}
		}
	}
	
}
