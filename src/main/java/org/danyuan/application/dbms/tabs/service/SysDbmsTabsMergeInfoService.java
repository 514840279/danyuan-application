package org.danyuan.application.dbms.tabs.service;

import java.util.List;
import java.util.UUID;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.dbms.tabs.dao.SysDbmsTabsMergeInfoDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsColsInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsMergeInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;

/**
 * @文件名 SysDbmsTabsMergeInfoService.java
 * @包名 org.danyuan.application.dbms.tabs.service
 * @描述 service层
 * @时间 2020年01月03日 15:42:38
 * @author test
 * @版本 V1.0
 */
@Service
public class SysDbmsTabsMergeInfoService extends BaseServiceImpl<SysDbmsTabsMergeInfo> implements BaseService<SysDbmsTabsMergeInfo> {
	@Autowired
	JdbcTemplate			jdbcTemplate;

	@Autowired
	SysDbmsTabsMergeInfoDao	sysDbmsTabsMergeInfoDao;
	
	@Autowired
	SysDbmsTabsInfoService	sysDbmsTabsInfoService;
	
	/**
	 * @方法名 page1
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param vo
	 * @参数 @return
	 * @返回 Page<SysDbmsTabsColsInfo>
	 * @author Administrator
	 * @throws
	 */
	public List<SysDbmsTabsColsInfo> page1(Pagination<SysDbmsTabsMergeInfo> vo) {
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.append(" SELECT * FROM sys_dbms_tabs_cols_info c");
		stringBuilder.append(" WHERE c.uuid not IN (");
		stringBuilder.append(" 	SELECT m.cols_uuid_1 FROM sys_dbms_tabs_merge_info m ");
		if (vo.getInfo().getTableUuid1() != null && vo.getInfo().getTableUuid2() != null) {
			stringBuilder.append(" 	WHERE m.table_uuid_1 = '" + vo.getInfo().getTableUuid1() + "'");
			stringBuilder.append(" 	AND m.table_uuid_2 = '" + vo.getInfo().getTableUuid2() + "'");
		} else {
			stringBuilder.append(" 	WHERE 1=0");
		}
		stringBuilder.append(" )");
		stringBuilder.append(" AND c.tabs_uuid = '" + vo.getInfo().getTableUuid1() + "'");
		stringBuilder.append(" ORDER BY c.cols_order");
		NamedParameterJdbcTemplate template = new NamedParameterJdbcTemplate(jdbcTemplate);
		List<SysDbmsTabsColsInfo> list = template.query(stringBuilder.toString(), new BeanPropertyRowMapper<>(SysDbmsTabsColsInfo.class));
		return list;
	}

	/**
	 * @方法名 page2
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param vo
	 * @参数 @return
	 * @返回 List<SysDbmsTabsColsInfo>
	 * @author Administrator
	 * @throws
	 */
	public List<SysDbmsTabsColsInfo> page2(Pagination<SysDbmsTabsMergeInfo> vo) {
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.append(" SELECT * FROM sys_dbms_tabs_cols_info c");
		stringBuilder.append(" WHERE c.uuid not IN (");
		stringBuilder.append(" 	SELECT m.cols_uuid_2 FROM sys_dbms_tabs_merge_info m ");
		if (vo.getInfo().getTableUuid1() != null && vo.getInfo().getTableUuid2() != null) {
			stringBuilder.append(" 	WHERE m.table_uuid_1 = '" + vo.getInfo().getTableUuid1() + "'");
			stringBuilder.append(" 	AND m.table_uuid_2 = '" + vo.getInfo().getTableUuid2() + "'");
		} else {
			stringBuilder.append(" 	WHERE 1=0");
		}
		stringBuilder.append(" )");
		stringBuilder.append(" AND c.tabs_uuid = '" + vo.getInfo().getTableUuid2() + "'");
		stringBuilder.append(" ORDER BY c.cols_order");
		NamedParameterJdbcTemplate template = new NamedParameterJdbcTemplate(jdbcTemplate);
		List<SysDbmsTabsColsInfo> list = template.query(stringBuilder.toString(), new BeanPropertyRowMapper<>(SysDbmsTabsColsInfo.class));
		return list;
	}
	
	/**
	 * @方法名 merge
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param vo
	 * @参数 @return
	 * @返回 List<SysDbmsTabsColsInfo>
	 * @author Administrator
	 * @throws
	 */
	public String merge(Pagination<SysDbmsTabsMergeInfo> vo) {
		List<SysDbmsTabsColsInfo> list1 = page1(vo);
		List<SysDbmsTabsColsInfo> list2 = page2(vo);
		for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo1 : list1) {
			for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo2 : list2) {
				if (sysDbmsTabsColsInfo1.getColsName().equals(sysDbmsTabsColsInfo2.getColsName()) || (sysDbmsTabsColsInfo1.getColsDesc() != null && !"".equals(sysDbmsTabsColsInfo1.getColsDesc()) && sysDbmsTabsColsInfo2.getColsDesc() != null && sysDbmsTabsColsInfo1.getColsDesc().equals(sysDbmsTabsColsInfo2.getColsDesc()))) {
					SysDbmsTabsMergeInfo merge = new SysDbmsTabsMergeInfo();
					merge.setTableUuid1(vo.getInfo().getTableUuid1());
					merge.setColsName1(sysDbmsTabsColsInfo1.getColsName());
					merge.setColsDesc1(sysDbmsTabsColsInfo1.getColsDesc());
					merge.setColsUuid1(sysDbmsTabsColsInfo1.getUuid());

					merge.setTableUuid2(vo.getInfo().getTableUuid2());
					merge.setColsName2(sysDbmsTabsColsInfo2.getColsName());
					merge.setColsDesc2(sysDbmsTabsColsInfo2.getColsDesc());
					merge.setColsUuid2(sysDbmsTabsColsInfo2.getUuid());
					merge.setUuid(UUID.randomUUID().toString());
					sysDbmsTabsMergeInfoDao.save(merge);
					break;
				}
			}
		}
		return "1";
	}

	/**
	 * @方法名 loadSql
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param vo
	 * @参数 @return
	 * @返回 String
	 * @author Administrator
	 * @throws
	 */
	public String loadSql(SysDbmsTabsMergeInfo vo) {
		List<SysDbmsTabsMergeInfo> mergeInfos = findAll(vo);
		if (mergeInfos == null || mergeInfos.size() == 0) {
			return "";
		}
		SysDbmsTabsInfo tabsInfo1 = sysDbmsTabsInfoService.findById(vo.getTableUuid1());
		SysDbmsTabsInfo tabsInfo2 = sysDbmsTabsInfoService.findById(vo.getTableUuid2());
		StringBuilder sBuilder = new StringBuilder();
		sBuilder.append("-- 合并表语句 \r\n");
		sBuilder.append(" insert into " + tabsInfo2.getTabsName() + "(");
		for (int i = 0; i < mergeInfos.size(); i++) {
			if (i > 0) {
				sBuilder.append(",");
			}
			sBuilder.append(mergeInfos.get(i).getColsName2());
		}
		sBuilder.append(") select ");
		for (int i = 0; i < mergeInfos.size(); i++) {
			if (i > 0) {
				sBuilder.append(",");
			}
			sBuilder.append(mergeInfos.get(i).getColsName1() + " as " + mergeInfos.get(i).getColsName2());
		}
		sBuilder.append(" from " + tabsInfo1.getTabsName());
		sBuilder.append("; \r\n");
		sBuilder.append("commit; \r\n \r\n");
		sBuilder.append("drop table " + tabsInfo1.getTabsName() + " purge; \r\n\r\n");
		sBuilder.append("-- 删除配置表信息 \r\n");
		sBuilder.append("delete from sys_dbms_tabs_info where uuid='" + tabsInfo1.getUuid() + "'; \r\n");
		sBuilder.append("delete from sys_dbms_tabs_cols_info where tabs_uuid='" + tabsInfo1.getUuid() + "'; \r\n");
		sBuilder.append("delete from sys_roles_tabs_info where tabs_id='" + tabsInfo1.getUuid() + "'; \r\n");
		sBuilder.append("delete from sys_dbms_tabs_merge_info where table_uuid_1='" + tabsInfo1.getUuid() + "'; \r\n");
		sBuilder.append("delete from sys_dbms_tabs_merge_info where table_uuid_2='" + tabsInfo1.getUuid() + "'; \r\n");
		sBuilder.append("commit; \r\n");
		return sBuilder.toString();
	}

}
