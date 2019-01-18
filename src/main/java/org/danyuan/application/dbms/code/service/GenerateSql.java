package org.danyuan.application.dbms.code.service;

import java.util.List;

import org.danyuan.application.common.utils.files.TxtFilesWriter;
import org.danyuan.application.common.utils.string.StringUtils;
import org.danyuan.application.dbms.code.po.SysDbmsGenerateCodeInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsColsInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;

/**
 * @文件名 GenerateSql.java
 * @包名 org.danyuan.application.dbms.code.service
 * @描述 TODO(用一句话描述该文件做什么)
 * @时间 2019年1月17日 下午2:27:52
 * @author Administrator
 * @版本 V1.0
 */
public class GenerateSql {
	
	/**
	 * @方法名 generate
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param sysDbmsGenerateCodeInfo
	 * @参数 @param tabsInfo
	 * @参数 @param colsInfos
	 * @参数 @param username
	 * @参数 @param pathString
	 * @返回 void
	 * @author Administrator
	 * @throws
	 */
	public static void generate(SysDbmsGenerateCodeInfo sysDbmsGenerateCodeInfo, SysDbmsTabsInfo tabsInfo, List<SysDbmsTabsColsInfo> colsInfos, String username, String pathString) {
		StringBuilder stringBuilder = new StringBuilder();

		// 创建表
		stringBuilder.append("-- 表创建 表创建语句并不完全正确，需要确认后在执行 \r\n");
		stringBuilder.append("create table (\r\n");
		stringBuilder.append(" uuid varchar(36) NOT NULL COMMENT '主键' primary key,\r\n");
		
		for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : colsInfos) {
			String colsTypeString = sysDbmsTabsColsInfo.getColsType();
			if (colsTypeString.contains("char")) {
				colsTypeString = colsTypeString + "(500)";
			} else if (colsTypeString.contains("int") || colsTypeString.contains("double") || colsTypeString.contains("decimal") || colsTypeString.contains("float")) {
				colsTypeString = colsTypeString + "(8)";
			}
			String colsDescString = sysDbmsTabsColsInfo.getColsDesc();
			if (colsDescString != null && !"".equals(colsDescString)) {
				colsDescString = " COMMENT '" + colsDescString + "'";
			}
			stringBuilder.append(" " + sysDbmsTabsColsInfo.getColsName() + " " + colsTypeString + colsDescString + ",\r\n");
		}
		
		// fda VARCHAR(20) NOT NULL DEFAULT '1' COMMENT 'fdsa'
		stringBuilder.append(" create_time timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '记录时间',\r\n");
		stringBuilder.append(" update_time timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '更新时间',\r\n");
		stringBuilder.append(" create_user varchar(50) NOT NULL default 'system' COMMENT '记录人',\r\n");
		stringBuilder.append(" update_user varchar(50) NOT NULL default 'system' COMMENT '更新人',\r\n");
		stringBuilder.append(" delete_flag tinyint NOT NULL default 0 COMMENT '应用标识',\r\n");
		stringBuilder.append(" discription varchar(200) COMMENT '数据描述',\r\n");
		stringBuilder.append(");\r\n");

		// 修改字段非空
		stringBuilder.append("-- 修改字段非空 \r\n");
		stringBuilder.append(" update tabsInfo.getTabsName() set uuid = UUID();\r\n");
		stringBuilder.append(" alter table " + tabsInfo.getTabsName() + " add primary key(uuid); \r\n");
		stringBuilder.append(" alter table " + tabsInfo.getTabsName() + "  MODIFY `create_time` TIMESTAMP  NOT NULL;\r\n");
		stringBuilder.append(" alter table " + tabsInfo.getTabsName() + "  MODIFY `update_time` TIMESTAMP  NOT NULL;\r\n");
		stringBuilder.append(" alter table " + tabsInfo.getTabsName() + "  MODIFY `create_user` varchar(50)  NOT NULL;\r\n");
		stringBuilder.append(" alter table " + tabsInfo.getTabsName() + "  MODIFY `update_user` varchar(50)  NOT NULL;\r\n");
		stringBuilder.append(" alter table " + tabsInfo.getTabsName() + "  MODIFY `delete_flag` int  NOT NULL;\r\n");
		stringBuilder.append("\r\n");
		// 表注释
		stringBuilder.append("-- 表注释 \r\n");
		if (tabsInfo.getTabsDesc() != null && !"".equals(tabsInfo.getTabsDesc())) {
			stringBuilder.append(" alter table " + tabsInfo.getTabsName() + " comment '" + tabsInfo.getTabsDesc() + "'; \r\n");
		}
		stringBuilder.append("\r\n");
		// 修改字段 注释
		stringBuilder.append("-- 修改字段 注释 \r\n");
		for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : colsInfos) {
			if (sysDbmsTabsColsInfo.getColsDesc() != null && !"".equals(sysDbmsTabsColsInfo.getColsDesc())) {
				stringBuilder.append(" --" + sysDbmsTabsColsInfo.getColsName() + "注释 \r\n ");
				stringBuilder.append(" alter table " + tabsInfo.getTabsName() + "  modify column " + sysDbmsTabsColsInfo.getColsName() + "  comment '" + sysDbmsTabsColsInfo.getColsDesc() + "'; \r\n");
				stringBuilder.append("\r\n");
			}
		}
		stringBuilder.append("\r\n");
		// 生成索引命令
		stringBuilder.append("-- 生成索引命令 \r\n");
		for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : colsInfos) {
			if (sysDbmsTabsColsInfo.getUserIndex() != null && !"".equals(sysDbmsTabsColsInfo.getUserIndex())) {
				stringBuilder.append(" --" + sysDbmsTabsColsInfo.getColsDesc() + "索引\r\n ");
				stringBuilder.append(" alter table " + tabsInfo.getTabsName() + " add index index_" + StringUtils.genRandomNum(16) + " (" + sysDbmsTabsColsInfo.getColsName() + ") ; \r\n");
				stringBuilder.append("\r\n");
			}
		}
		stringBuilder.append("\r\n");
		// 文件写入
		String fineName = pathString + "/" + tabsInfo.getTabsName() + "_ddl.sql";
		TxtFilesWriter.writeToFile(stringBuilder.toString(), fineName);
	}

}
