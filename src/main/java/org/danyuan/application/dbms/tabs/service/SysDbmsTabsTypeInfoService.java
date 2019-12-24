package org.danyuan.application.dbms.tabs.service;

import java.util.List;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.dbms.tabs.dao.SysDbmsTabsTypeInfoDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsTypeInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysTableTypeServiceImpl.java
 * 包 名 ： tk.ainiyue.danyuan.application.dbm.type.service.impl
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： wang
 * 时 间 ： 2017年8月3日 下午3:58:50
 * 版 本 ： V1.0
 */
@Service("sysDbmsTabsTypeInfoService")
public class SysDbmsTabsTypeInfoService extends BaseServiceImpl<SysDbmsTabsTypeInfo> implements BaseService<SysDbmsTabsTypeInfo> {
	//
	@Autowired
	private SysDbmsTabsTypeInfoDao	sysDbmsTabsTypeInfoDao;

	@Autowired
	JdbcTemplate					jdbcTemplate;
	
	public List<SysDbmsTabsTypeInfo> findAll() {
		return sysDbmsTabsTypeInfoDao.findAll();
	}
	
	/**
	 * @方法名 findAllTypeByUser
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param username
	 * @参数 @return
	 * @返回 List<SysDbmsTabsTypeInfo>
	 * @author Administrator
	 * @throws
	 */
	public List<SysDbmsTabsTypeInfo> findAllTypeByUser(String username) {
		
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.append("select * from sys_dbms_tabs_type_info t ");
		stringBuilder.append(" where t.uuid in (");
		stringBuilder.append(" select a.type_uuid from sys_dbms_tabs_info a ");
		stringBuilder.append("  where a.uuid in ( ");
		stringBuilder.append("   select b.tabs_id from sys_roles_tabs_info b ");
		stringBuilder.append("    where b.role_id in (");
		stringBuilder.append("     select c.roles_id from sys_user_roles_info c");
		stringBuilder.append("      where c.user_id in ( ");
		stringBuilder.append("       select d.uuid from sys_user_base_info d");
		stringBuilder.append("        where d.user_name = '" + username + "'");
		stringBuilder.append("      ) and c.checked = 1");
		stringBuilder.append("    ) ");
		stringBuilder.append("  ) and a.delete_flag = 0");
		stringBuilder.append(" ) and t.delete_flag = 0");
		stringBuilder.append(" order by t.type_order");
		NamedParameterJdbcTemplate template = new NamedParameterJdbcTemplate(jdbcTemplate);
		List<SysDbmsTabsTypeInfo> list = template.query(stringBuilder.toString(), new BeanPropertyRowMapper<>(SysDbmsTabsTypeInfo.class));
		return list;

	}
	
}
