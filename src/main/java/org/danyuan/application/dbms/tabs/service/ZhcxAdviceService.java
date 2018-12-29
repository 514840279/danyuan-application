package org.danyuan.application.dbms.tabs.service;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.sql.DataSource;

import org.danyuan.application.dbms.tabs.dao.SysDbmsAdviMessInfoDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsAdviMessInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsColsInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： ZhcxAdviceService.java
 * 包 名 ： com.shumeng.application.application.zhcx.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月26日 下午1:52:03
 * 版 本 ： V1.0
 */
@Service
public class ZhcxAdviceService {
	private static final Logger logger = LoggerFactory.getLogger(ZhcxAdviceService.class);
	
	/**
	 * @param sysZhcxCol
	 * @param jdbcTemplate2
	 * @param sysAdviceMessDao
	 * @param multiDatasource
	 * @param sysZhcxTab
	 * 方法名： startConfixTableCloumnIndexAndCloumnLengthConfig
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数：
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public static void startConfixTableCloumnIndexConfig(SysDbmsTabsInfo sysZhcxTab, Map<String, DataSource> multiDatasource, SysDbmsAdviMessInfoDao sysAdviceMessDao, JdbcTemplate jdbcTemplate2, SysDbmsTabsColsInfo sysZhcxCol) {
		logger.info("startConfixTableCloumnIndexAndCloumnLengthConfig", ZhcxAdviceService.class);
		// 列数据统计建议添加索引，(索引修改或重建，索引添加，)
		// 索引修改 一般发现索引创建位置处于数据空间下或者处于其他用户下的索引空间 给出建议修改
		// 索引添加主要提醒当配置表中有userIndex列配置上数据时 索引没有及时创建的给出创建的提示信息
		String tableName = sysZhcxTab.getTabsName();
		if (tableName.contains("@")) {
			tableName = sysZhcxTab.getTabsName().substring(0, sysZhcxTab.getTabsName().indexOf("@"));
		}
		JdbcTemplate jdbcTemplate = new JdbcTemplate(multiDatasource.get(sysZhcxTab.getJdbcUuid()));
		NamedParameterJdbcTemplate template = new NamedParameterJdbcTemplate(jdbcTemplate);
		SysDbmsAdviMessInfo advice = null;
		StringBuffer sBuffer = new StringBuffer();
		sBuffer.append(" select i.owner,i.index_name,i.table_owner,i.table_name,ic.column_name,i.tablespace_name from all_indexes i ");
		sBuffer.append(" inner join all_ind_columns ic on i.index_name = ic.index_name and i.owner = ic.index_owner and i.table_name = ic.table_name ");
		sBuffer.append(" where i.table_owner||'.'||i.table_name  = :tablename ");
		sBuffer.append(" and ic.column_name = :colName ");
		Map<String, String> map = new HashMap<>();
		map.put("tablename", tableName);
		map.put("colName", sysZhcxCol.getColsName());
		StringBuilder sBuilder = new StringBuilder();
		List<Map<String, Object>> resultlist = template.queryForList(sBuffer.toString(), map);
		String expactUser = tableName.substring(0, tableName.indexOf("."));
		String expactIndexSpaces = expactUser + "_INDEX";
		if (resultlist != null && resultlist.size() > 0) {
			Map<String, Object> resultmap = resultlist.get(0);
			if (!expactUser.equals(resultmap.get("owner")) || !expactIndexSpaces.equals(resultmap.get("tablespace_name"))) {
				advice = new SysDbmsAdviMessInfo(UUID.randomUUID().toString(), "索引重建", sysZhcxTab.getTabsDesc(), sysZhcxTab.getTabsName(), sysZhcxTab.getJdbcUuid());
				sBuilder.append("-- 由于索引信息并不是期望的值，建议充建索引信息：\n");
				String indexName = "IND_" + UUID.randomUUID().toString().replace("-", "").substring(4, 20) + "_" + sysZhcxCol.getColsOrder();
				sBuilder.append("-- 预期值：\t 索引所属：" + expactUser + "\t索引的表空间：" + expactIndexSpaces + "\n");
				sBuilder.append("-- 实际值：\t 索引所属：" + resultmap.get("owner") + "\t索引的表空间：" + resultmap.get("tablespace_name") + "\n");
				sBuilder.append("drop index " + resultmap.get("owner") + "." + resultmap.get("index_name") + ";\n");
				sBuilder.append(" create index " + expactUser + "." + indexName + " on " + tableName + " (" + sysZhcxCol.getColsName() + ")  tablespace " + expactIndexSpaces + ";");
				
			} else {
				return;
			}
		} else if (sysZhcxCol.getUserIndex() != null && !"".equals(sysZhcxCol.getUserIndex())) {
			advice = new SysDbmsAdviMessInfo(UUID.randomUUID().toString(), "索引添加", sysZhcxTab.getTabsDesc(), sysZhcxTab.getTabsName(), sysZhcxTab.getJdbcUuid());
			sBuilder.append("-- 由于配置中userIndex不为空，并且期望的索引信息未找到，建议建索引信息：\n");
			String indexName = "IND_" + UUID.randomUUID().toString().replace("-", "").substring(4, 20) + "_" + sysZhcxCol.getColsOrder();
			sBuilder.append(" create index " + expactUser + "." + indexName + " on " + tableName + " (" + sysZhcxCol.getColsName() + ")  tablespace " + expactIndexSpaces + ";");
		} else {
			return;
		}
		advice.setMessage(sBuilder.toString());
		advice.setDeleteFlag(0);
		sysAdviceMessDao.save(advice);
		
	}
	
	/**
	 * @param sysZhcxCol
	 * @param sysAdviceMessDao
	 * @param multiDatasource
	 * @param sysZhcxTab
	 * 方法名： startConfixTableColumnsConfig
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数：
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public static void startConfixTableColumnsConfig(SysDbmsTabsInfo sysZhcxTab, Map<String, DataSource> multiDatasource, SysDbmsAdviMessInfoDao sysAdviceMessDao, JdbcTemplate jdbcTemplate2, List<SysDbmsTabsColsInfo> list) {
		// 列配置比较建议修正,平台隐藏，实际长度修改(列修改，列配置修改,列统计信息)
		// 列信息处理会有多个同时执行，遮里配置和列的注释都有可能为空，需要对比
		// 统计信息包含陪的实际最大长度 给出建议缩小列的长度类型， 列空值比例，当空超过60% 给出建议平台默认不展示
		// 实际长度暂不处理
		JdbcTemplate jdbcTemplate = new JdbcTemplate(multiDatasource.get(sysZhcxTab.getJdbcUuid()));
		NamedParameterJdbcTemplate template = new NamedParameterJdbcTemplate(jdbcTemplate);
		String tableName = sysZhcxTab.getTabsName();
		if (tableName.contains("@")) {
			tableName = sysZhcxTab.getTabsName().substring(0, sysZhcxTab.getTabsName().indexOf("@"));
		}
		SysDbmsAdviMessInfo advice = null;
		for (SysDbmsTabsColsInfo sysZhcxCol : list) {
			StringBuffer sBuffer = new StringBuffer();
			sBuffer.append(" select tc.OWNER,tc.TABLE_NAME,tc.COLUMN_NAME,cc.comments,tc.NUM_NULLS,tc.DATA_TYPE from all_tab_columns tc ");
			sBuffer.append(" inner join all_col_comments cc on tc.OWNER = cc.owner and tc.TABLE_NAME = cc.table_name and tc.COLUMN_NAME = cc.column_name ");
			sBuffer.append(" where tc.owner||'.'||tc.table_name = :tablename");
			sBuffer.append(" and tc.COLUMN_NAME = :colName");
			Map<String, String> map = new HashMap<>();
			map.put("tablename", tableName);
			map.put("colName", sysZhcxCol.getColsName());
			List<Map<String, Object>> resultlist = template.queryForList(sBuffer.toString(), map);
			if (resultlist != null && resultlist.size() > 0) {
				Map<String, Object> resultmap = resultlist.get(0);
				// 配置列类型
				if (!resultmap.get("DATA_TYPE").equals(sysZhcxCol.getColsType())) {
					advice = new SysDbmsAdviMessInfo(UUID.randomUUID().toString(), "列配置修改", sysZhcxTab.getTabsDesc(), sysZhcxTab.getTabsName(), sysZhcxTab.getJdbcUuid());
					String executeSql = "update sys_zhcx_cols1 t set  t.COLD_TYPE = '" + resultmap.get("DATA_TYPE") + "',t.update_time = sysdate where t.uuid='" + sysZhcxCol.getUuid() + "'";
					advice.setExecuteSql(executeSql + ";");
					jdbcTemplate2.execute(executeSql);
					advice.setDeleteFlag(1);
					sysAdviceMessDao.save(advice);
				}
				// 配置列展示
				if (sysZhcxTab.getTabsRows() != null && sysZhcxTab.getTabsRows() > 10000) {
					BigDecimal numNulls = (BigDecimal) resultmap.get("NUM_NULLS");
					if (numNulls != null && numNulls.intValue() != 0) {
						if (numNulls.subtract(new BigDecimal(sysZhcxTab.getTabsRows()).multiply(new BigDecimal(0.6f))).intValue() > 0 && 1 == sysZhcxCol.getPageList().intValue()) {
							advice = new SysDbmsAdviMessInfo(UUID.randomUUID().toString(), "列配置修改", sysZhcxTab.getTabsDesc(), tableName, sysZhcxTab.getJdbcUuid());
							StringBuilder sBuilder = new StringBuilder();
							sBuilder.append("-- 表中的空值超过 60% 建议默认列表不展示");
							advice = new SysDbmsAdviMessInfo(UUID.randomUUID().toString(), "列配置修改", sysZhcxTab.getTabsDesc(), sysZhcxTab.getTabsName(), sysZhcxTab.getJdbcUuid());
							sBuilder.append("update sys_zhcx_cols1 t set  t.PAGE_LIST = '0',t.update_time = sysdate where t.uuid='" + sysZhcxCol.getUuid() + "'");
							advice.setMessage(sBuilder.toString() + ";");
							advice.setDeleteFlag(0);
							sysAdviceMessDao.save(advice);
						}
					}
				}
				// 注释和翻译
				if (sysZhcxCol.getColsDesc() != null && resultmap.get("comments") != null) {
					StringBuilder sBuilder = new StringBuilder();
					advice = new SysDbmsAdviMessInfo(UUID.randomUUID().toString(), "列配置修改", sysZhcxTab.getTabsDesc(), sysZhcxTab.getTabsName(), sysZhcxTab.getJdbcUuid());
					if (sysZhcxTab.getTabsDesc() == null || "".equals(sysZhcxTab.getTabsDesc())) {
						sBuilder.append("-- 由于配置中的信息没有，建议执行以下语句进行统一：\n");
						sBuilder.append("update SYS_ZHCX_COLS1 t set t.COLS_DESC ='" + resultmap.get("comments") + "' ,t.update_time = sysdate where t.uuid='" + sysZhcxCol.getUuid() + "'; \n");
					} else if (resultmap.get("comments") == null || "".equals(resultmap.get("comments"))) {
						sBuilder.append("-- 由于表中字段注释信息没有，建议执行以下语句进行统一：\n");
						sBuilder.append("comment on table " + tableName + "." + sysZhcxCol.getColsName() + "  is '" + sysZhcxCol.getColsDesc() + "';\n");
					} else if (!sysZhcxCol.getColsDesc().equals(resultmap.get("comments"))) {
						sBuilder.append("-- 由于表中字段注释信息和配置中的信息不一致，建议执行以下语句进行统一：\n");
						sBuilder.append("-- 建议 一 根据表信息 更新配置表中的信息.\n");
						sBuilder.append("--  update SYS_ZHCX_COLS1 t set t.COLS_DESC ='" + resultmap.get("comments") + "' ,t.update_time = sysdate where t.uuid='" + sysZhcxCol.getUuid() + "'; \n");
						sBuilder.append("-- 建议 二 根据配置表中的信息更新表信息 .\n");
						sBuilder.append("comment on table " + tableName + "." + sysZhcxCol.getColsName() + "  is '" + sysZhcxCol.getColsDesc() + "';\n");
					} else {
						return;
					}
					
					advice.setMessage(sBuilder.toString());
					advice.setDeleteFlag(0);
					sysAdviceMessDao.save(advice);
				}
			}
			
			// 列数据统计建议添加索引，平台隐藏，实际长度修改(索引修改或重建，索引添加，)
			startConfixTableCloumnIndexConfig(sysZhcxTab, multiDatasource, sysAdviceMessDao, jdbcTemplate2, sysZhcxCol);
			
		}
		
	}
	
	/**
	 * @param jdbcTemplate2
	 * @param sysAdviceMessDao
	 * @param multiDatasource
	 * @param sysZhcxTab
	 * 方法名： startConfixTableConfig
	 * 功 能： TODO(这里用一句话描述这个方法的作用)
	 * 参 数：
	 * 返 回： void
	 * 作 者 ： Administrator
	 * @throws
	 */
	public static void startConfixTableConfig(SysDbmsTabsInfo sysZhcxTab, Map<String, DataSource> multiDatasource, SysDbmsAdviMessInfoDao sysAdviceMessDao, JdbcTemplate jdbcTemplate2) {
		logger.info("startConfixTableConfig", ZhcxAdviceService.class);
		// 表配置比较建议修正 (表修改，表配置修改)
		// 表修改需要人工确认，所以当前不会生成表修改的类型
		// 表配置修改包括： 修改注释翻译对照的mess和 更新配置表中的数据两块大小
		
		StringBuffer sBuffer = new StringBuffer();
		sBuffer.append(" select t.owner,t.table_name,t.num_rows,t.blocks*8*1024 as table_space ,tc.comments  from all_tables t ");
		sBuffer.append(" inner join all_tab_comments tc on t.owner = tc.owner and t.table_name = tc.table_name ");
		sBuffer.append(" where t.owner||'.'||t.table_name = :tablename");
		Map<String, String> map = new HashMap<>();
		String tableName = sysZhcxTab.getTabsName();
		if (tableName.contains("@")) {
			tableName = sysZhcxTab.getTabsName().substring(0, sysZhcxTab.getTabsName().indexOf("@"));
		}
		map.put("tablename", tableName);
		SysDbmsAdviMessInfo advice = new SysDbmsAdviMessInfo(UUID.randomUUID().toString(), "表配置修改", sysZhcxTab.getTabsDesc(), tableName, sysZhcxTab.getJdbcUuid());
		JdbcTemplate jdbcTemplate = new JdbcTemplate(multiDatasource.get(sysZhcxTab.getJdbcUuid()));
		NamedParameterJdbcTemplate template = new NamedParameterJdbcTemplate(jdbcTemplate);
		System.err.println(sysZhcxTab.getTabsName());
		List<Map<String, Object>> list = template.queryForList(sBuffer.toString(), map);
		if (list != null && list.size() > 0) {
			Map<String, Object> resultmap = list.get(0);
			// 表数据量更新
			if (sysZhcxTab.getTabsRows() == null || sysZhcxTab.getTabsSpace() == null || sysZhcxTab.getTabsRows() != resultmap.get("num_rows") || sysZhcxTab.getTabsSpace() != resultmap.get("table_space")) {
				String executeSql = "update sys_zhcx_tabs1 t set  t.table_rows = " + resultmap.get("num_rows") + ",t.table_space = " + resultmap.get("table_space") + ",t.update_time = sysdate where t.uuid='" + sysZhcxTab.getUuid() + "'";
				advice.setExecuteSql(executeSql + ";");
				jdbcTemplate2.execute(executeSql);
				advice.setDeleteFlag(1);
				sysAdviceMessDao.save(advice);
				
			}
			// 表注释和翻译
			if (sysZhcxTab.getTabsDesc() != null && resultmap.get("comments") != null) {
				StringBuilder sBuilder = new StringBuilder();
				if (sysZhcxTab.getTabsDesc() == null || "".equals(sysZhcxTab.getTabsDesc())) {
					sBuilder.append("-- 由于配置中的信息没有，建议执行以下语句进行统一：\n");
					sBuilder.append("update sys_zhcx_tabs1 t set t.table_desc ='" + resultmap.get("comments") + "' ,t.update_time = sysdate where t.uuid='" + sysZhcxTab.getUuid() + "'; \n");
				} else if (resultmap.get("comments") == null || "".equals(resultmap.get("comments"))) {
					sBuilder.append("-- 由于表中注释信息没有，建议执行以下语句进行统一：\n");
					sBuilder.append("comment on table " + tableName + "  is '" + sysZhcxTab.getTabsDesc() + "';\n");
				} else if (!sysZhcxTab.getTabsDesc().equals(resultmap.get("comments"))) {
					sBuilder.append("-- 由于表中注释信息和配置中的信息不一致，建议执行以下语句进行统一：\n");
					sBuilder.append("-- 建议 一 根据表信息 更新配置表中的信息.\n");
					sBuilder.append("--  update sys_zhcx_tabs1 t set t.table_desc ='" + resultmap.get("comments") + "' ,t.update_time = sysdate where t.uuid='" + sysZhcxTab.getUuid() + "'; \n");
					sBuilder.append("-- 建议 二 根据配置表中的信息更新表信息 .\n");
					sBuilder.append("comment on table " + tableName + "  is '" + sysZhcxTab.getTabsDesc() + "';\n");
				} else {
					return;
				}
				advice.setMessage(sBuilder.toString());
				advice.setDeleteFlag(0);
				sysAdviceMessDao.save(advice);
			}
		}
		
	}
	
}
