package org.danyuan.application.dbms.code.service;

import java.util.List;
import java.util.UUID;

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
	 * @功能 生成数据定义语句
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
		stringBuilder.append("-- ================" + tabsInfo.getTabsName() + "(" + tabsInfo.getTabsDesc() + ")配置开始======================= \r\n");
		// 创建表
		stringBuilder.append("-- 表创建 表创建语句并不完全正确，需要确认后在执行 \r\n");
		stringBuilder.append("create table " + tabsInfo.getTabsName() + "(\r\n");
		stringBuilder.append(" uuid varchar(36) NOT NULL COMMENT '主键' primary key,\r\n");
		
		for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : colsInfos) {
			String colsName = sysDbmsTabsColsInfo.getColsName().toLowerCase();
			if ("uuid".equals(colsName) || "discription".equals(colsName) || "create_time".equals(colsName) || "create_user".equals(colsName) || "update_time".equals(colsName) || "update_user".equals(colsName) || "delete_flag".equals(colsName)) {
				continue;
			}
			String colsTypeString = sysDbmsTabsColsInfo.getColsType();
			Integer length = sysDbmsTabsColsInfo.getColsLength() == null ? 255 : sysDbmsTabsColsInfo.getColsLength();
			if (colsTypeString.contains("int") || colsTypeString.contains("char")) {
				colsTypeString = colsTypeString + "(" + length.intValue() + ")";
			} else if (colsTypeString.contains("double") || colsTypeString.contains("decimal") || colsTypeString.contains("float")) {
				Integer precision = sysDbmsTabsColsInfo.getDataPrecision() == null ? 11 : sysDbmsTabsColsInfo.getDataPrecision();
				Integer scale = sysDbmsTabsColsInfo.getDataScale() == null ? 0 : sysDbmsTabsColsInfo.getDataScale();
				colsTypeString = colsTypeString.contains("(") ? colsTypeString : colsTypeString + "(" + precision.intValue() + "," + scale.intValue() + ")";
			}
			String colsDescString = sysDbmsTabsColsInfo.getColsDesc() == null ? "" : sysDbmsTabsColsInfo.getColsDesc();
			if (!"".equals(colsDescString)) {
				colsDescString = " COMMENT '" + colsDescString + "'";
			}
			String colsdefault = sysDbmsTabsColsInfo.getColsDefault() == null ? "" : sysDbmsTabsColsInfo.getColsDefault();
			if (!"".equals(colsdefault)) {
				colsdefault = " default " + colsdefault;
			}
			String nullable = sysDbmsTabsColsInfo.getNullable() == null ? "Y" : sysDbmsTabsColsInfo.getNullable();
			if ("N".equals(nullable)) {
				colsdefault = " NOT NULL ";
			} else {
				nullable = "";
			}
			stringBuilder.append(" " + colsName + " " + colsTypeString + nullable + colsdefault + colsDescString + ",\r\n");
		}
		
		// fda VARCHAR(20) NOT NULL DEFAULT '1' COMMENT 'fdsa'
		stringBuilder.append(" create_time timestamp NOT NULL default CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',\r\n");
		stringBuilder.append(" update_time timestamp NOT NULL default CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT  '更新时间',\r\n");
		stringBuilder.append(" create_user varchar(50) NOT NULL default 'system' COMMENT '记录人',\r\n");
		stringBuilder.append(" update_user varchar(50) NOT NULL default 'system' COMMENT '更新人',\r\n");
		stringBuilder.append(" delete_flag tinyint NOT NULL default 0 COMMENT '应用标识',\r\n");
		stringBuilder.append(" discription varchar(200) COMMENT '数据描述',\r\n");
		stringBuilder.append(")  ENGINE=InnoDB DEFAULT CHARSET=utf8;\r\n");
		stringBuilder.append("\r\n");
		
		// 修改字段非空
		stringBuilder.append("-- 修改字段非空 \r\n");
		stringBuilder.append(" update " + tabsInfo.getTabsName() + " set uuid = UUID();\r\n");
		stringBuilder.append(" alter table " + tabsInfo.getTabsName() + " add primary key(uuid); \r\n");
		stringBuilder.append(" alter table " + tabsInfo.getTabsName() + "  MODIFY `create_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL;\r\n");
		stringBuilder.append(" alter table " + tabsInfo.getTabsName() + "  MODIFY `update_time` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP   NOT NULL;\r\n");
		stringBuilder.append(" alter table " + tabsInfo.getTabsName() + "  MODIFY `create_user` varchar(50)  default 'system' NOT NULL;\r\n");
		stringBuilder.append(" alter table " + tabsInfo.getTabsName() + "  MODIFY `update_user` varchar(50)  default 'system' NOT NULL;\r\n");
		stringBuilder.append(" alter table " + tabsInfo.getTabsName() + "  MODIFY `delete_flag` int  NOT NULL default 0 ;\r\n");
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
				stringBuilder.append("-- " + sysDbmsTabsColsInfo.getColsName() + "注释 \r\n ");
				stringBuilder.append("alter table " + tabsInfo.getTabsName() + "  modify column " + sysDbmsTabsColsInfo.getColsName() + " VARCHAR(500) comment '" + sysDbmsTabsColsInfo.getColsDesc() + "'; \r\n");
			}
		}
		stringBuilder.append("\r\n");
		// 生成索引命令
		stringBuilder.append("-- 生成索引命令 \r\n");
		for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : colsInfos) {
			if (sysDbmsTabsColsInfo.getUserIndex() != null && !"".equals(sysDbmsTabsColsInfo.getUserIndex())) {
				stringBuilder.append("-- " + sysDbmsTabsColsInfo.getColsDesc() + "索引\r\n ");
				stringBuilder.append("alter table " + tabsInfo.getTabsName() + " add index index_" + StringUtils.genRandomNum(16) + " (" + sysDbmsTabsColsInfo.getColsName() + ") ; \r\n");
			}
		}
		stringBuilder.append("\r\n");
		stringBuilder.append("-- ================" + tabsInfo.getTabsName() + "(" + tabsInfo.getTabsDesc() + ")配置结束======================= \r\n");
		stringBuilder.append("\r\n");
		// 文件写入
		String fineName = pathString + "/application_ddl.sql";
		TxtFilesWriter.appendWriteToFile(stringBuilder.toString(), fineName);
	}
	
	/**
	 * @方法名 generateConfig
	 * @功能 生成用户权限语句
	 * @参数 @param sysDbmsGenerateCodeInfo
	 * @参数 @param tabsInfo
	 * @参数 @param colsInfos
	 * @参数 @param username
	 * @参数 @param pathtempString
	 * @返回 void
	 * @author Administrator
	 * @throws
	 */
	public static void generateConfig(SysDbmsGenerateCodeInfo sysDbmsGenerateCodeInfo, SysDbmsTabsInfo tabsInfo, List<SysDbmsTabsColsInfo> colsInfos, String username, String pathString) {
		StringBuilder stringBuilder = new StringBuilder();
		String thirdString = "";
		String[] subpathString = sysDbmsGenerateCodeInfo.getClassPath().split("\\.");
		for (int i = 0; i < 3; i++) {
			thirdString += subpathString[i] + ".";
		}
		String subPathString = sysDbmsGenerateCodeInfo.getClassPath().toLowerCase().replace(thirdString, "");
		
		// 路径配置
		stringBuilder.append("-- ================" + tabsInfo.getTabsName() + "(" + tabsInfo.getTabsDesc() + ")配置开始======================= \r\n");
		stringBuilder.append("-- 菜单配置 \r\n");
		String id = UUID.randomUUID().toString().replace("-", "");
		stringBuilder.append("INSERT INTO sys_menu_info (uuid,parents_id,name,icon,sort,uri,discription,update_user,update_time, create_user, create_time, delete_flag, home_page) VALUES ('" + id + "','0','" + tabsInfo.getTabsDesc() + "','fa fa-checked','1','/pages/" + subPathString.replace(".", "/") + "/" + sysDbmsGenerateCodeInfo.getClassName().toLowerCase() + ".html','" + tabsInfo.getTabsDesc() + "','system',CURRENT_TIMESTAMP,'system',CURRENT_TIMESTAMP,0,0); \r\n");
		stringBuilder.append("INSERT INTO sys_roles_jurisdiction_info(checked, create_time, create_user, delete_flag, discription, menu_id, role_id) VALUES (1,CURRENT_TIMESTAMP, 'system', 0, '生成语句', '" + id + "', 'BEB0D81B918DD968D24D6F95AC15A753'); \r\n");
		stringBuilder.append("-- ================" + tabsInfo.getTabsName() + "(" + tabsInfo.getTabsDesc() + ")配置结束======================= \r\n");
		stringBuilder.append("\r\n");
		// 文件写入
		String fineName = pathString + "/application_config.sql";
		TxtFilesWriter.appendWriteToFile(stringBuilder.toString(), fineName);
		
	}
	
	public static void generateOracle(SysDbmsGenerateCodeInfo sysDbmsGenerateCodeInfo, SysDbmsTabsInfo tabsInfo, List<SysDbmsTabsColsInfo> colsInfos, String username, String pathString) {
		StringBuilder stringBuilder = new StringBuilder();
		String tableNameString = tabsInfo.getTabsName().substring(tabsInfo.getTabsName().indexOf(".") + 1);
		
		stringBuilder.append("-- ================" + tableNameString + "(" + tabsInfo.getTabsDesc() + ")配置开始======================= \r\n");
		// 创建表
		stringBuilder.append("-- 表创建 表创建语句并不完全正确，需要确认后在执行 \r\n");
		stringBuilder.append("create table " + tableNameString + "(\r\n");
		stringBuilder.append(" uuid varchar(36) NOT NULL primary key,\r\n");
		
		for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : colsInfos) {
			String colsName = sysDbmsTabsColsInfo.getColsName().toLowerCase();
			if ("uuid".equals(colsName) || "discription".equals(colsName) || "create_time".equals(colsName) || "create_user".equals(colsName) || "update_time".equals(colsName) || "update_user".equals(colsName) || "delete_flag".equals(colsName)) {
				continue;
			}
			String colsTypeString = sysDbmsTabsColsInfo.getColsType();
			Integer length = sysDbmsTabsColsInfo.getColsLength() == null ? 255 : sysDbmsTabsColsInfo.getColsLength();
			if (colsTypeString.contains("int") || colsTypeString.contains("char")) {
				colsTypeString = colsTypeString + "(" + length.intValue() + ")";
			} else if (colsTypeString.contains("double") || colsTypeString.contains("decimal") || colsTypeString.contains("float")) {
				Integer precision = sysDbmsTabsColsInfo.getDataPrecision() == null ? 11 : sysDbmsTabsColsInfo.getDataPrecision();
				Integer scale = sysDbmsTabsColsInfo.getDataScale() == null ? 0 : sysDbmsTabsColsInfo.getDataScale();
				colsTypeString = colsTypeString.contains("(") ? colsTypeString : colsTypeString + "(" + precision.intValue() + "," + scale.intValue() + ")";
			}
			
			String colsdefault = sysDbmsTabsColsInfo.getColsDefault() == null ? "" : sysDbmsTabsColsInfo.getColsDefault();
			if (!"".equals(colsdefault)) {
				colsdefault = " default " + colsdefault;
			}
			String nullable = sysDbmsTabsColsInfo.getNullable() == null ? "Y" : sysDbmsTabsColsInfo.getNullable();
			if ("N".equals(nullable)) {
				colsdefault = " NOT NULL ";
			} else {
				nullable = "";
			}
			stringBuilder.append(" " + colsName + " " + colsTypeString + nullable + colsdefault + ",\r\n");
		}
		
		// fda VARCHAR(20) NOT NULL DEFAULT '1' COMMENT 'fdsa'
		stringBuilder.append(" create_time timestamp NOT NULL DEFAULT sysdate ,\r\n");
		stringBuilder.append(" update_time timestamp NOT NULL DEFAULT sysdate ,\r\n");
		stringBuilder.append(" create_user varchar(50) NOT NULL default 'system' ,\r\n");
		stringBuilder.append(" update_user varchar(50) NOT NULL default 'system' ,\r\n");
		stringBuilder.append(" delete_flag tinyint NOT NULL default 0 ,\r\n");
		stringBuilder.append(" discription varchar(200) COMMENT '数据描述',\r\n");
		stringBuilder.append(");\r\n");
		stringBuilder.append("\r\n");
		
		// 修改字段非空
		stringBuilder.append("-- 修改字段非空 \r\n");
		stringBuilder.append(" update " + tableNameString + " set uuid = SYS_GUID();\r\n");
		stringBuilder.append(" alter table " + tableNameString + " add primary key(uuid); \r\n");
		stringBuilder.append(" alter table " + tableNameString + "  MODIFY create_time TIMESTAMP DEFAULT sysdate NOT NULL;\r\n");
		stringBuilder.append(" alter table " + tableNameString + "  MODIFY update_time TIMESTAMP DEFAULT sysdate NOT NULL;\r\n");
		stringBuilder.append(" alter table " + tableNameString + "  MODIFY create_user varchar(50) default 'system' NOT NULL;\r\n");
		stringBuilder.append(" alter table " + tableNameString + "  MODIFY update_user varchar(50) default 'system' NOT NULL;\r\n");
		stringBuilder.append(" alter table " + tableNameString + "  MODIFY delete_flag int  NOT NULL default 0 ;\r\n");
		stringBuilder.append("\r\n");
		// 表注释
		stringBuilder.append("-- 表注释 \r\n");
		if (tabsInfo.getTabsDesc() != null && !"".equals(tabsInfo.getTabsDesc())) {
			stringBuilder.append(" comment on table  " + tableNameString + " is '" + tabsInfo.getTabsDesc() + "'; \r\n");
		}
		stringBuilder.append("\r\n");
		// 修改字段 注释
		stringBuilder.append("-- 修改字段 注释 \r\n");
		for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : colsInfos) {
			if (sysDbmsTabsColsInfo.getColsDesc() != null && !"".equals(sysDbmsTabsColsInfo.getColsDesc())) {
				stringBuilder.append("-- " + sysDbmsTabsColsInfo.getColsName() + "注释 \r\n ");
				stringBuilder.append(" comment on column " + tableNameString + "." + sysDbmsTabsColsInfo.getColsName() + " is '" + sysDbmsTabsColsInfo.getColsDesc() + "'; \r\n");
			}
		}
		stringBuilder.append("\r\n");
		// 生成索引命令
		stringBuilder.append("-- 生成索引命令 \r\n");
		for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : colsInfos) {
			if (sysDbmsTabsColsInfo.getUserIndex() != null && !"".equals(sysDbmsTabsColsInfo.getUserIndex())) {
				stringBuilder.append("-- " + sysDbmsTabsColsInfo.getColsDesc() + "索引\r\n ");
				stringBuilder.append("create index index_" + StringUtils.genRandomNum(16) + " on " + tableNameString + "  (" + sysDbmsTabsColsInfo.getColsName() + ")  tablespace " + tableNameString.substring(0, tableNameString.indexOf(".")).toUpperCase() + "_INDEX; \r\n");
			}
		}
		stringBuilder.append("\r\n");
		stringBuilder.append("-- ================" + tableNameString + "(" + tabsInfo.getTabsDesc() + ")配置结束======================= \r\n");
		stringBuilder.append("\r\n");
		// 文件写入
		String fineName = pathString + "/application_oracle_ddl.sql";
		TxtFilesWriter.appendWriteToFile(stringBuilder.toString(), fineName);
		
	}
	
}
