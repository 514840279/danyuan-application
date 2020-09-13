package org.danyuan.application.dbms.tabs.service;

import java.util.List;
import java.util.UUID;

import org.apache.commons.lang3.StringUtils;
import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.common.base.Pagination;
import org.danyuan.application.dbms.tabs.dao.SysDbmsTabsColsInfoDao;
import org.danyuan.application.dbms.tabs.dao.SysDbmsTabsMergeInfoDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsColsInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsMergeInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
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
	JdbcTemplate					jdbcTemplate;
	
	@Autowired
	SysDbmsTabsMergeInfoDao			sysDbmsTabsMergeInfoDao;
	
	@Autowired
	SysDbmsTabsInfoService			sysDbmsTabsInfoService;
	
	@Autowired
	private SysDbmsTabsColsInfoDao	sysDbmsTabsColsInfoDao;
	
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
					merge.setTabsName1(vo.getInfo().getTabsName1());
					merge.setColsName1(sysDbmsTabsColsInfo1.getColsName());
					merge.setColsDesc1(sysDbmsTabsColsInfo1.getColsDesc());
					merge.setColsUuid1(sysDbmsTabsColsInfo1.getUuid());
					
					merge.setTableUuid2(vo.getInfo().getTableUuid2());
					merge.setTabsName2(vo.getInfo().getTabsName2());
					merge.setColsName2(sysDbmsTabsColsInfo2.getColsName());
					merge.setColsDesc2(sysDbmsTabsColsInfo2.getColsDesc());
					merge.setColsUuid2(sysDbmsTabsColsInfo2.getUuid());
					merge.setUuid(UUID.randomUUID().toString());
					merge.setDeleteFlag(0);
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
		if (StringUtils.isEmpty(vo.getTableUuid1()) || StringUtils.isEmpty(vo.getTableUuid2())) {
			return "";
		}
		List<SysDbmsTabsMergeInfo> mergeInfos = findAll(vo);
		if (mergeInfos == null || mergeInfos.size() == 0) {
			return "";
		}
		SysDbmsTabsInfo tabsInfo1 = sysDbmsTabsInfoService.findById(vo.getTableUuid1());
		SysDbmsTabsInfo tabsInfo2 = sysDbmsTabsInfoService.findById(vo.getTableUuid2());
		StringBuilder sBuilder = new StringBuilder();
		
		sBuilder.append("-- 合并信息脚本 \r\n");
		
		// 合并人相关的信息
		if ("WTH.SYS_RESUM_USER_BASE_INFO".equals(tabsInfo2.getTabsName())) {
			spellSFZH(mergeInfos, tabsInfo1, tabsInfo2, sBuilder);
		} else
		// 合并人相关的信息
		if ("WTH.SYS_QQ_USER_BASE_INFO".equals(tabsInfo2.getTabsName())) {
			spellQQHM(mergeInfos, tabsInfo1, tabsInfo2, sBuilder);
		} else {
			// qita
			
		}
		
		return sBuilder.toString();
	}
	
	private void spellQQHM(List<SysDbmsTabsMergeInfo> mergeInfos, SysDbmsTabsInfo tabsInfo1, SysDbmsTabsInfo tabsInfo2, StringBuilder sBuilder) {
		SysDbmsTabsColsInfo colsInfo = new SysDbmsTabsColsInfo();
		colsInfo.setTabsUuid(tabsInfo1.getUuid());
		List<SysDbmsTabsColsInfo> colsInfos = sysDbmsTabsColsInfoDao.findAll(Example.of(colsInfo));
		
		// 生成合并语句
		sBuilder.append("-- 创建存储过程合并数据 \r\n");
		sBuilder.append("CREATE OR REPLACE PROCEDURE SP_" + tabsInfo1.getUuid() + " \r\n");
		sBuilder.append("IS \r\n");
		sBuilder.append("  V_LOGID   VARCHAR2(40); --写日志准备 \r\n");
		sBuilder.append("  V_SQLCODE INTEGER; \r\n");
		sBuilder.append("  V_SQLERRM VARCHAR2(2000); \r\n");
		sBuilder.append("  r_num INTEGER; -- 行个数 \r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("  rowdata " + tabsInfo1.getTabsName() + "%rowtype; \r\n");
		sBuilder.append("   \r\n");
		// sBuilder.append(" \r\n");
		sBuilder.append("  CURSOR tab IS \r\n");
		sBuilder.append("    SELECT *\r\n      ");
		sBuilder.append("     FROM " + tabsInfo1.getTabsName());
		sBuilder.append(";  \r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("  p_id varchar2(36); \r\n");
		String qqNameString = null;
		for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : colsInfos) {
			// 有身份证那个配置的处理身份证号
			if ("QQHM".equals(sysDbmsTabsColsInfo.getUserIndex())) {
				qqNameString = sysDbmsTabsColsInfo.getColsName();
			}
			
		}
		for (SysDbmsTabsMergeInfo sysDbmsTabsMergeInfo : mergeInfos) {
			// 如果有电话邮箱等信息需要,合并到对应表中
			sBuilder.append("  p_" + sysDbmsTabsMergeInfo.getColsName2() + " varchar2(2000); \r\n");
		}
		sBuilder.append("   \r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("BEGIN \r\n");
		sBuilder.append("   \r\n");
		// sBuilder.append(" -- 查询合并表数据 \r\n");
		sBuilder.append("  r_num := 0; \r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("  --写日志 \r\n");
		sBuilder.append("  SP_LOG('SP_TABLE_TASK', V_LOGID); \r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("  --循环处理数据 \r\n");
		sBuilder.append("  --开启游标\r\n");
		sBuilder.append("  OPEN tab;\r\n");
		sBuilder.append("  --loop循环\r\n");
		sBuilder.append("  LOOP \r\n");
		sBuilder.append("  --循环条件\r\n");
		sBuilder.append("    EXIT WHEN tab%notfound; \r\n");
		sBuilder.append("    --游标值赋值到rowtype\r\n");
		sBuilder.append("    FETCH tab INTO rowdata; \r\n");
		sBuilder.append("    --输出 \r\n");
		sBuilder.append("    --DBMS_OUTPUT.PUT_LINE(rowdata.sfzh18);\r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("   begin \r\n");
		sBuilder.append("     p_id :=rowdata.uuid; \r\n");
		
		sBuilder.append("   begin \r\n");
		sBuilder.append("   r_num :=r_num+1; \r\n");
		sBuilder.append("   SELECT \r\n        ");
		
		for (int i = 0; i < mergeInfos.size(); i++) {
			if (i > 0) {
				sBuilder.append("        ,");
			}
			// 如果有电话邮箱等信息需要,合并到对应表中
			sBuilder.append(mergeInfos.get(i).getColsName2() + " \r\n");
		}
		sBuilder.append("       INTO  \r\n        ");
		for (int i = 0; i < mergeInfos.size(); i++) {
			if (i > 0) {
				sBuilder.append("        ,");
			}
			// 如果有电话邮箱等信息需要,合并到对应表中
			sBuilder.append("p_" + mergeInfos.get(i).getColsName2() + "   \r\n");
		}
		sBuilder.append("       FROM " + tabsInfo2.getTabsName() + "   \r\n");
		sBuilder.append("       WHERE uuid = p_uuid ;    \r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("  IF(p_SFZH18 IS NOT NULL or TRIM(p_SFZH18) !='' ) THEN \r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("    -- DBMS_OUTPUT.PUT_LINE('found'|| rowdata.SFZH18);\r\n");
		for (int i = 0; i < mergeInfos.size(); i++) {
			String cols2 = mergeInfos.get(i).getColsName2();
			
			// 如果有电话邮箱等信息需要,合并到对应表中
			sBuilder.append("     if rowdata." + mergeInfos.get(i).getColsName1() + " is not null then \r\n");
			sBuilder.append("         p_" + cols2 + ":= rowdata." + mergeInfos.get(i).getColsName1() + ";\r\n");
			for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : colsInfos) {
				if (sysDbmsTabsColsInfo.getColsName().equals(mergeInfos.get(i).getColsName1()) && "DHHM".equals(sysDbmsTabsColsInfo.getUserIndex())) {
					sBuilder.append("     INSERT INTO sys_resum_user_phone_more(uuid,phone,insert_date) VALUES(p_uuid,rowdata." + mergeInfos.get(i).getColsName1() + ",SYSDATE); \r\n");
				}
				
				if (sysDbmsTabsColsInfo.getColsName().equals(mergeInfos.get(i).getColsName1()) && "QQHM".equals(sysDbmsTabsColsInfo.getUserIndex())) {
					sBuilder.append("     INSERT INTO sys_resum_user_qq_more(uuid,qq,insert_date) VALUES(p_uuid,rowdata." + mergeInfos.get(i).getColsName1() + ",SYSDATE); \r\n");
				}
			}
			sBuilder.append("     end if;\r\n");
		}
		sBuilder.append("     \r\n");
		sBuilder.append("     update wth.sys_resum_user_base_info  \r\n");
		sBuilder.append("       set  ");
		for (int i = 0; i < mergeInfos.size(); i++) {
			if ("UUID".equals(mergeInfos.get(i).getColsName2())) {
				continue;
			}
			if (i > 0 && !sBuilder.toString().trim().endsWith("set")) {
				sBuilder.append("\r\n        ,");
			}
			// 如果有电话邮箱等信息需要,合并到对应表中
			sBuilder.append(mergeInfos.get(i).getColsName2() + "=p_" + mergeInfos.get(i).getColsName2());
		}
		sBuilder.append("\r\n        ,update_date=sysdate     \r\n");
		sBuilder.append("      where uuid = p_uuid; \r\n");
		
		sBuilder.append("     delete from " + tabsInfo1.getTabsName() + " where uuid =rowdata.uuid ;\r\n");
		sBuilder.append("     \r\n");
		sBuilder.append("  END IF; \r\n");
		sBuilder.append("  EXCEPTION \r\n");
		sBuilder.append("    WHEN NO_DATA_FOUND THEN \r\n");
		sBuilder.append("    --  DBMS_OUTPUT.PUT_LINE('not found'|| rowdata.sfzh18);\r\n");
		sBuilder.append("      \r\n");
		sBuilder.append("      -- 插入数据  \r\n");
		sBuilder.append("      insert into wth.sys_resum_user_base_info(uuid,");
		for (int i = 0; i < mergeInfos.size(); i++) {
			
			if (i > 0 && !sBuilder.toString().endsWith(",")) {
				sBuilder.append(",");
			}
			// 如果有电话邮箱等信息需要,合并到对应表中
			sBuilder.append(mergeInfos.get(i).getColsName2());
		}
		
		sBuilder.append(",insert_date)      \r\n");
		sBuilder.append("      values(p_uuid,");
		
		for (int i = 0; i < mergeInfos.size(); i++) {
			
			if (i > 0 && !sBuilder.toString().endsWith(",")) {
				sBuilder.append(",");
			}
			// 如果有电话邮箱等信息需要,合并到对应表中
			sBuilder.append("rowdata." + mergeInfos.get(i).getColsName1());
		}
		
		sBuilder.append(",sysdate);      \r\n");
		
		for (int i = 0; i < mergeInfos.size(); i++) {
			// 如果有电话邮箱等信息需要,合并到对应表中
			for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : colsInfos) {
				if (sysDbmsTabsColsInfo.getColsName().equals(mergeInfos.get(i).getColsName1()) && "QQHM".equals(sysDbmsTabsColsInfo.getUserIndex())) {
					sBuilder.append("     if rowdata." + mergeInfos.get(i).getColsName1() + " is not null then \r\n");
					sBuilder.append("        INSERT INTO sys_resum_user_qq_more(uuid,qq,insert_date) VALUES(p_uuid,rowdata." + mergeInfos.get(i).getColsName1() + ",SYSDATE); \r\n");
					sBuilder.append("     end if;\r\n");
				}
			}
		}
		sBuilder.append("      \r\n");
		sBuilder.append("     delete from " + tabsInfo1.getTabsName() + " where uuid =rowdata.uuid ;\r\n");
		sBuilder.append("   END;\r\n");
		
		sBuilder.append("   if mod(r_num, 100000) =0 then   \r\n");
		sBuilder.append("      commit;\r\n");
		sBuilder.append("   end if ;   \r\n");
		
		sBuilder.append("   END IF;\r\n");
		sBuilder.append("--EXCEPTION \r\n");
		sBuilder.append("  --WHEN OTHERS THEN \r\n");
		sBuilder.append("   -- DBMS_OUTPUT.PUT_LINE('证件号或者checkid为空');  \r\n");
		sBuilder.append("END; \r\n");
		sBuilder.append("  --结束循环 \r\n");
		sBuilder.append("  END LOOP; \r\n");
		sBuilder.append("      commit;\r\n");
		sBuilder.append("  --关闭游标 \r\n");
		sBuilder.append("  CLOSE tab; \r\n");
		sBuilder.append("  -- 结束执行 \r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("  --写日志 \r\n");
		sBuilder.append("  SP_LOG('SP_TABLE_TASK', V_LOGID); \r\n");
		sBuilder.append("EXCEPTION \r\n");
		sBuilder.append("  WHEN OTHERS THEN \r\n");
		sBuilder.append("    V_SQLCODE := sqlcode; \r\n");
		sBuilder.append("    V_SQLERRM := SUBSTR(sqlerrm, 1, 2000); \r\n");
		sBuilder.append("    ROLLBACK; \r\n");
		sBuilder.append("    --记录日志 \r\n");
		sBuilder.append("    SP_LOG('SP_TABLE_TASK', V_LOGID, TO_CHAR(V_SQLCODE) || ' ' || V_SQLERRM); \r\n");
		sBuilder.append("    DBMS_OUTPUT.PUT_LINE(' err '||p_uuid||' where sfzh=''' ||p_SFZH18  ||''' and uuid='''||p_id||'''');  \r\n");
		
		sBuilder.append("END; \r\n");
		sBuilder.append("      \r\n");
		sBuilder.append("-- 调用    \r\n");
		sBuilder.append("call SP_" + tabsInfo1.getUuid() + "();    \r\n");
		sBuilder.append("      \r\n");
		sBuilder.append("-- 删除sp    \r\n");
		sBuilder.append("drop procedure SP_" + tabsInfo1.getUuid() + ";    \r\n");
		
	}
	
	private void spellSFZH(List<SysDbmsTabsMergeInfo> mergeInfos, SysDbmsTabsInfo tabsInfo1, SysDbmsTabsInfo tabsInfo2, StringBuilder sBuilder) {
		SysDbmsTabsColsInfo colsInfo = new SysDbmsTabsColsInfo();
		colsInfo.setTabsUuid(tabsInfo1.getUuid());
		List<SysDbmsTabsColsInfo> colsInfos = sysDbmsTabsColsInfoDao.findAll(Example.of(colsInfo));
		boolean uuidflag = true;
		boolean sfzh18flag = false;
		String sfzhNameString = null;
		String indexNameString = null;
		for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : colsInfos) {
			if (sysDbmsTabsColsInfo.getColsName().equals("UUID")) {
				uuidflag = false;
			}
			
			if ("SFZH18".equals(sysDbmsTabsColsInfo.getColsName())) {
				sfzh18flag = true;
			}
			// 有身份证那个配置的处理身份证号
			if ("SFZH".equals(sysDbmsTabsColsInfo.getUserIndex())) {
				sfzhNameString = sysDbmsTabsColsInfo.getColsName();
			}
			
		}
		if (uuidflag) {
			// 添加主键
			sBuilder.append("-- 创建主键 \r\n");
			sBuilder.append("　alter　table " + tabsInfo1.getTabsName() + " add uuid varchar2(36); \r\n");
			indexNameString = "idx_" + UUID.randomUUID().toString().replace("-", "").substring(0, 18);
			sBuilder.append("　update " + tabsInfo1.getTabsName() + " set uuid=SYS_GUID(); \r\n");
			sBuilder.append("　create index " + indexNameString + " on " + tabsInfo1.getTabsName() + "(UUID) tablespace WTH_INDEX; \r\n");
			sBuilder.append("　 commit;\r\n\r\n");
		}
		
		// 生成合并语句
		sBuilder.append("-- 创建存储过程合并数据 \r\n");
		sBuilder.append("CREATE OR REPLACE PROCEDURE SP_" + tabsInfo1.getUuid() + " \r\n");
		sBuilder.append("IS \r\n");
		sBuilder.append("  V_LOGID   VARCHAR2(40); --写日志准备 \r\n");
		sBuilder.append("  V_SQLCODE INTEGER; \r\n");
		sBuilder.append("  V_SQLERRM VARCHAR2(2000); \r\n");
		sBuilder.append("  r_num INTEGER; -- 行个数 \r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("  rowdata " + tabsInfo1.getTabsName() + "%rowtype; \r\n");
		sBuilder.append("   \r\n");
		// sBuilder.append(" \r\n");
		sBuilder.append("  CURSOR tab IS \r\n");
		sBuilder.append("    SELECT *\r\n      ");
		sBuilder.append("     FROM " + tabsInfo1.getTabsName());
		sBuilder.append(";  \r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("  p_id varchar2(36); \r\n");
		for (SysDbmsTabsMergeInfo sysDbmsTabsMergeInfo : mergeInfos) {
			// 如果有电话邮箱等信息需要,合并到对应表中
			sBuilder.append("  p_" + sysDbmsTabsMergeInfo.getColsName2() + " varchar2(2000); \r\n");
			if (sfzhNameString == null && sysDbmsTabsMergeInfo.getColsName2().equals("SFZH18")) {
				sfzhNameString = sysDbmsTabsMergeInfo.getColsName1();
			}
		}
		if (!sfzh18flag) {
			sBuilder.append("  p_chksfzh18 varchar2(2); \r\n");
			sBuilder.append("  p_id_出生日期  varchar2(20); \r\n");
			sBuilder.append("  p_id_星座  varchar2(20); \r\n");
			sBuilder.append("  p_id_性别  varchar2(20); \r\n");
			sBuilder.append("  p_id_生肖  varchar2(20); \r\n");
		}
		if (uuidflag) {
			sBuilder.append("  p_uuid varchar2(36); \r\n");
		}
		sBuilder.append("   \r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("BEGIN \r\n");
		sBuilder.append("   \r\n");
		// sBuilder.append(" -- 查询合并表数据 \r\n");
		sBuilder.append("  r_num := 0; \r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("  --写日志 \r\n");
		sBuilder.append("  SP_LOG('SP_TABLE_TASK', V_LOGID); \r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("  --循环处理数据 \r\n");
		sBuilder.append("  --开启游标\r\n");
		sBuilder.append("  OPEN tab;\r\n");
		sBuilder.append("  --loop循环\r\n");
		sBuilder.append("  LOOP \r\n");
		sBuilder.append("  --循环条件\r\n");
		sBuilder.append("    EXIT WHEN tab%notfound; \r\n");
		sBuilder.append("    --游标值赋值到rowtype\r\n");
		sBuilder.append("    FETCH tab INTO rowdata; \r\n");
		sBuilder.append("    --输出 \r\n");
		sBuilder.append("    --DBMS_OUTPUT.PUT_LINE(rowdata.sfzh18);\r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("   begin \r\n");
		sBuilder.append("     p_id :=rowdata.uuid; \r\n");
		if (!sfzh18flag) {
			
			sBuilder.append("   p_sfzh18 := idcard15to18(rowdata." + sfzhNameString + "); \r\n");
			sBuilder.append("   p_chksfzh18 := fun_checkidcard(p_sfzh18); \r\n");
			sBuilder.append("   IF(p_chksfzh18 is not null and p_chksfzh18 =1) THEN \r\n");
			sBuilder.append("     p_id_出生日期 := id_britherday(p_sfzh18);\r\n");
			sBuilder.append("     p_id_星座  := id_xingzuo(p_sfzh18);\r\n");
			sBuilder.append("     p_id_性别  := id_sex(p_sfzh18); \r\n");
			sBuilder.append("     p_id_生肖  := id_shengxiao(p_sfzh18); \r\n");
			sBuilder.append("     p_uuid  := md5(trim(p_sfzh18)); \r\n");
		} else {
			sBuilder.append("   IF(rowdata.CHKSFZH18 is not null and rowdata.CHKSFZH18 =1) THEN \r\n");
			sBuilder.append("     p_uuid  := md5(trim(rowdata.sfzh18)); \r\n");
		}
		// sBuilder.append(" --用 execute immediate 动态执行 SQL 语句 \r\n");
		// sBuilder.append(" --注意其后的 into 字段值到变量的写法，还有 using 来代入参数 \r\n");
		// sBuilder.append(" execute immediate v_select_resum into mergedata using rowdata.sfzh18; \r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("   begin \r\n");
		sBuilder.append("   r_num :=r_num+1; \r\n");
		sBuilder.append("   SELECT \r\n        ");
		
		for (int i = 0; i < mergeInfos.size(); i++) {
			if (i > 0) {
				sBuilder.append("        ,");
			}
			// 如果有电话邮箱等信息需要,合并到对应表中
			sBuilder.append(mergeInfos.get(i).getColsName2() + " \r\n");
		}
		sBuilder.append("       INTO  \r\n        ");
		for (int i = 0; i < mergeInfos.size(); i++) {
			if (i > 0) {
				sBuilder.append("        ,");
			}
			// 如果有电话邮箱等信息需要,合并到对应表中
			sBuilder.append("p_" + mergeInfos.get(i).getColsName2() + "   \r\n");
		}
		sBuilder.append("       FROM " + tabsInfo2.getTabsName() + "   \r\n");
		sBuilder.append("       WHERE uuid = p_uuid ;    \r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("  IF(p_SFZH18 IS NOT NULL or TRIM(p_SFZH18) !='' ) THEN \r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("    -- DBMS_OUTPUT.PUT_LINE('found'|| rowdata.SFZH18);\r\n");
		for (int i = 0; i < mergeInfos.size(); i++) {
			String cols2 = mergeInfos.get(i).getColsName2();
			if ("UUID".equals(cols2) || "SFZH18".equals(cols2) || "ID_出生日期".equals(cols2) || "ID_性别".equals(cols2) || "ID_生肖".equals(cols2) || "ID_星座".equals(cols2)) {
				continue;
			}
			// 如果有电话邮箱等信息需要,合并到对应表中
			sBuilder.append("     if rowdata." + mergeInfos.get(i).getColsName1() + " is not null then \r\n");
			sBuilder.append("         p_" + cols2 + ":= rowdata." + mergeInfos.get(i).getColsName1() + ";\r\n");
			for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : colsInfos) {
				if (sysDbmsTabsColsInfo.getColsName().equals(mergeInfos.get(i).getColsName1()) && "DHHM".equals(sysDbmsTabsColsInfo.getUserIndex())) {
					sBuilder.append("     INSERT INTO sys_resum_user_phone_more(uuid,phone,insert_date) VALUES(p_uuid,rowdata." + mergeInfos.get(i).getColsName1() + ",SYSDATE); \r\n");
				}
				
				if (sysDbmsTabsColsInfo.getColsName().equals(mergeInfos.get(i).getColsName1()) && "QQHM".equals(sysDbmsTabsColsInfo.getUserIndex())) {
					sBuilder.append("     INSERT INTO sys_resum_user_qq_more(uuid,qq,insert_date) VALUES(p_uuid,rowdata." + mergeInfos.get(i).getColsName1() + ",SYSDATE); \r\n");
				}
			}
			sBuilder.append("     end if;\r\n");
		}
		sBuilder.append("     \r\n");
		sBuilder.append("     update wth.sys_resum_user_base_info  \r\n");
		sBuilder.append("       set  ");
		for (int i = 0; i < mergeInfos.size(); i++) {
			if ("UUID".equals(mergeInfos.get(i).getColsName2())) {
				continue;
			}
			if (i > 0 && !sBuilder.toString().trim().endsWith("set")) {
				sBuilder.append("\r\n        ,");
			}
			// 如果有电话邮箱等信息需要,合并到对应表中
			sBuilder.append(mergeInfos.get(i).getColsName2() + "=p_" + mergeInfos.get(i).getColsName2());
		}
		sBuilder.append("\r\n        ,update_date=sysdate     \r\n");
		sBuilder.append("      where uuid = p_uuid; \r\n");
		
		sBuilder.append("     delete from " + tabsInfo1.getTabsName() + " where uuid =rowdata.uuid ;\r\n");
		sBuilder.append("     \r\n");
		sBuilder.append("  END IF; \r\n");
		sBuilder.append("  EXCEPTION \r\n");
		sBuilder.append("    WHEN NO_DATA_FOUND THEN \r\n");
		sBuilder.append("    --  DBMS_OUTPUT.PUT_LINE('not found'|| rowdata.sfzh18);\r\n");
		sBuilder.append("      \r\n");
		sBuilder.append("      -- 插入数据  \r\n");
		sBuilder.append("      insert into wth.sys_resum_user_base_info(uuid,");
		for (int i = 0; i < mergeInfos.size(); i++) {
			if ("UUID".equals(mergeInfos.get(i).getColsName2()) || (!sfzh18flag && sfzhNameString.equals(mergeInfos.get(i).getColsName1()))) {
				continue;
			}
			if (i > 0 && !sBuilder.toString().endsWith(",")) {
				sBuilder.append(",");
			}
			// 如果有电话邮箱等信息需要,合并到对应表中
			sBuilder.append(mergeInfos.get(i).getColsName2());
		}
		if (!sfzh18flag) {
			sBuilder.append(",sfzh18,id_出生日期,id_星座, id_性别,id_生肖,insert_date)      \r\n");
			sBuilder.append("      values(p_uuid,");
		} else {
			sBuilder.append(",insert_date)      \r\n");
			sBuilder.append("      values(p_uuid,");
		}
		
		for (int i = 0; i < mergeInfos.size(); i++) {
			if ("UUID".equals(mergeInfos.get(i).getColsName2()) || (!sfzh18flag && sfzhNameString.equals(mergeInfos.get(i).getColsName1()))) {
				continue;
			}
			if (i > 0 && !sBuilder.toString().endsWith(",")) {
				sBuilder.append(",");
			}
			// 如果有电话邮箱等信息需要,合并到对应表中
			sBuilder.append("rowdata." + mergeInfos.get(i).getColsName1());
		}
		
		if (!sfzh18flag) {
			sBuilder.append(",p_sfzh18,p_id_出生日期,p_id_星座, p_id_性别,p_id_生肖,sysdate);      \r\n");
		} else {
			sBuilder.append(",sysdate);      \r\n");
		}
		
		for (int i = 0; i < mergeInfos.size(); i++) {
			// 如果有电话邮箱等信息需要,合并到对应表中
			for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : colsInfos) {
				if (sysDbmsTabsColsInfo.getColsName().equals(mergeInfos.get(i).getColsName1()) && "QQHM".equals(sysDbmsTabsColsInfo.getUserIndex())) {
					sBuilder.append("     if rowdata." + mergeInfos.get(i).getColsName1() + " is not null then \r\n");
					sBuilder.append("        INSERT INTO sys_resum_user_qq_more(uuid,qq,insert_date) VALUES(p_uuid,rowdata." + mergeInfos.get(i).getColsName1() + ",SYSDATE); \r\n");
					sBuilder.append("     end if;\r\n");
				}
			}
		}
		sBuilder.append("      \r\n");
		sBuilder.append("     delete from " + tabsInfo1.getTabsName() + " where uuid =rowdata.uuid ;\r\n");
		sBuilder.append("   END;\r\n");
		
		sBuilder.append("   if mod(r_num, 100000) =0 then   \r\n");
		sBuilder.append("      commit;\r\n");
		sBuilder.append("   end if ;   \r\n");
		
		sBuilder.append("   END IF;\r\n");
		sBuilder.append("--EXCEPTION \r\n");
		sBuilder.append("  --WHEN OTHERS THEN \r\n");
		sBuilder.append("   -- DBMS_OUTPUT.PUT_LINE('证件号或者checkid为空');  \r\n");
		sBuilder.append("END; \r\n");
		sBuilder.append("  --结束循环 \r\n");
		sBuilder.append("  END LOOP; \r\n");
		sBuilder.append("      commit;\r\n");
		sBuilder.append("  --关闭游标 \r\n");
		sBuilder.append("  CLOSE tab; \r\n");
		sBuilder.append("  -- 结束执行 \r\n");
		sBuilder.append("   \r\n");
		sBuilder.append("  --写日志 \r\n");
		sBuilder.append("  SP_LOG('SP_TABLE_TASK', V_LOGID); \r\n");
		sBuilder.append("EXCEPTION \r\n");
		sBuilder.append("  WHEN OTHERS THEN \r\n");
		sBuilder.append("    V_SQLCODE := sqlcode; \r\n");
		sBuilder.append("    V_SQLERRM := SUBSTR(sqlerrm, 1, 2000); \r\n");
		sBuilder.append("    ROLLBACK; \r\n");
		sBuilder.append("    --记录日志 \r\n");
		sBuilder.append("    SP_LOG('SP_TABLE_TASK', V_LOGID, TO_CHAR(V_SQLCODE) || ' ' || V_SQLERRM); \r\n");
		sBuilder.append("    DBMS_OUTPUT.PUT_LINE(' err '||p_uuid||' where sfzh=''' ||p_SFZH18  ||''' and uuid='''||p_id||'''');  \r\n");
		
		sBuilder.append("END; \r\n");
		sBuilder.append("      \r\n");
		sBuilder.append("-- 调用    \r\n");
		sBuilder.append("call SP_" + tabsInfo1.getUuid() + "();    \r\n");
		sBuilder.append("      \r\n");
		sBuilder.append("-- 删除sp    \r\n");
		sBuilder.append("drop procedure SP_" + tabsInfo1.getUuid() + ";    \r\n");
		sBuilder.append("      \r\n");
		if (sfzh18flag) {
			sBuilder.append(" alter table " + tabsInfo1.getTabsName() + " DROP COLUMN SFZH18;     \r\n");
			sBuilder.append(" alter table " + tabsInfo1.getTabsName() + " DROP COLUMN CHKSFZH18;     \r\n");
			sBuilder.append(" alter table " + tabsInfo1.getTabsName() + " DROP COLUMN ID_出生日期;     \r\n");
			sBuilder.append(" alter table " + tabsInfo1.getTabsName() + " DROP COLUMN ID_星座;     \r\n");
			sBuilder.append(" alter table " + tabsInfo1.getTabsName() + " DROP COLUMN ID_性别;     \r\n");
			sBuilder.append(" alter table " + tabsInfo1.getTabsName() + " DROP COLUMN ID_生肖;     \r\n");
			sBuilder.append("      \r\n");
			sBuilder.append(" delete from  sys_dbms_tabs_cols_info where tabs_uuid = '" + tabsInfo1.getUuid() + "'  and cols_name='SFZH18' ;     \r\n");
			sBuilder.append(" delete from  sys_dbms_tabs_cols_info where tabs_uuid = '" + tabsInfo1.getUuid() + "'  and cols_name='CHKSFZH18' ;     \r\n");
			sBuilder.append(" delete from  sys_dbms_tabs_cols_info where tabs_uuid = '" + tabsInfo1.getUuid() + "'  and cols_name='ID_出生日期' ;     \r\n");
			sBuilder.append(" delete from  sys_dbms_tabs_cols_info where tabs_uuid = '" + tabsInfo1.getUuid() + "'  and cols_name='ID_星座' ;     \r\n");
			sBuilder.append(" delete from  sys_dbms_tabs_cols_info where tabs_uuid = '" + tabsInfo1.getUuid() + "'  and cols_name='ID_性别' ;     \r\n");
			sBuilder.append(" delete from  sys_dbms_tabs_cols_info where tabs_uuid = '" + tabsInfo1.getUuid() + "'  and cols_name='ID_生肖' ;     \r\n");
		}
		if (uuidflag) {
			sBuilder.append(" drop index  " + indexNameString + " ;     \r\n");
		}
		sBuilder.append("      \r\n");
		sBuilder.append("      \r\n");
	}
	
}
