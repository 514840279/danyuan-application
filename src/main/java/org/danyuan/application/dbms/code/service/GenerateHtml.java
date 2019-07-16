package org.danyuan.application.dbms.code.service;

import java.util.List;

import org.danyuan.application.common.utils.files.TxtFilesWriter;
import org.danyuan.application.dbms.code.po.SysDbmsGenerateCodeInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsColsInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;

/**
 * @文件名 GenerateHtml.java
 * @包名 org.danyuan.application.dbms.code.service
 * @描述 TODO(用一句话描述该文件做什么)
 * @时间 2019年1月17日 下午2:26:35
 * @author Administrator
 * @版本 V1.0
 */
public class GenerateHtml {

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
		String thirdString = "";
		String[] subpathString = sysDbmsGenerateCodeInfo.getClassPath().split("\\.");
		for (int i = 0; i < 3; i++) {
			thirdString += subpathString[i] + ".";
		}
		String subPathString = sysDbmsGenerateCodeInfo.getClassPath().toLowerCase().replace(thirdString, "");
		String subNameIdString = subPathString.replace(".", "_") + "_" + sysDbmsGenerateCodeInfo.getClassName().substring(0, 1).toLowerCase() + sysDbmsGenerateCodeInfo.getClassName().substring(1);
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.append("<!DOCTYPE html>\r\n");
		stringBuilder.append("<html>\r\n");
		stringBuilder.append("<head>\r\n");
		stringBuilder.append("<title></title>\r\n");
		stringBuilder.append("<meta charset=\"UTF-8\">\r\n");
		stringBuilder.append("\r\n");
		stringBuilder.append("</head>\r\n");
		stringBuilder.append("<body id=\"body\">\r\n");
		stringBuilder.append("	<!-- 头部设计 -->\r\n");
		stringBuilder.append("	<section class=\"content-header\">\r\n");
		stringBuilder.append("		<h1>\r\n");
		stringBuilder.append("			" + tabsInfo.getTabsDesc() + "<small>系统管理</small>\r\n");
		stringBuilder.append("		</h1>\r\n");
		stringBuilder.append("		<ol class=\"breadcrumb\">\r\n");
		stringBuilder.append("			<li><a href=\"index.html\"><i class=\"fa fa-dashboard\"></i>首页</a></li>\r\n");
		stringBuilder.append("			<li><a href=\"#\">系统管理 </a></li>\r\n");
		stringBuilder.append("			<li class=\"active\">" + tabsInfo.getTabsDesc() + "</li>\r\n");
		stringBuilder.append("		</ol>\r\n");
		stringBuilder.append("	</section>\r\n");
		stringBuilder.append("\r\n");
		stringBuilder.append("	<!-- Main content -->\r\n");
		stringBuilder.append("	<section class=\"content\">\r\n");
		
		// 表格展示区域
		stringBuilder.append("		<div class=\"box\">\r\n");
		stringBuilder.append("			<div class=\"box-header with-border\">\r\n");
		String titleString = tabsInfo.getTabsDesc();
		if (titleString == null || "".equals(titleString)) {
			titleString = tabsInfo.getTabsName();
		}
		stringBuilder.append("				<h3 class=\"box-title\">" + titleString + "</h3>\r\n");
		stringBuilder.append("\r\n");
		stringBuilder.append("				<div class=\"box-tools pull-right\">\r\n");
		stringBuilder.append("					<button type=\"button\" class=\"btn btn-box-tool\" data-widget=\"collapse\">\r\n");
		stringBuilder.append("						<i class=\"fa fa-minus\"></i>\r\n");
		stringBuilder.append("					</button>\r\n");
		stringBuilder.append("					<button type=\"button\" class=\"btn btn-box-tool\" data-widget=\"remove\">\r\n");
		stringBuilder.append("						<i class=\"fa fa-times\"></i>\r\n");
		stringBuilder.append("					</button>\r\n");
		stringBuilder.append("				</div>\r\n");
		stringBuilder.append("			</div>\r\n");
		stringBuilder.append("			<div class=\"box-body\">\r\n");

		// 条件查询区域
		stringBuilder.append("				<div class=\"row\">\r\n");
		for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : colsInfos) {
			if (sysDbmsTabsColsInfo.getUserIndex() != null && !"".equals(sysDbmsTabsColsInfo.getUserIndex())) {
				String[] colsNames = sysDbmsTabsColsInfo.getColsName().toLowerCase().split("_");
				String colsNameString = "";
				for (int i = 0; i < colsNames.length; i++) {
					if (i > 0) {
						colsNameString += colsNames[i].substring(0, 1).toUpperCase() + colsNames[i].substring(1);
					} else {
						colsNameString = colsNames[i];
					}
				}
				String colsDescString = sysDbmsTabsColsInfo.getColsDesc();
				if (colsDescString == null || "".equals(colsDescString)) {
					colsDescString = colsNameString;
				}
				stringBuilder.append("					<div class=\" col-md-6\">\r\n");
				stringBuilder.append("						<div class=\" col-md-12 form-group\">\r\n");
				stringBuilder.append("							<label class=\"col-sm-3 control-label text-right font16\">" + colsDescString + ":</label>\r\n");
				stringBuilder.append("							<div class=\"col-sm-9\">\r\n");
				stringBuilder.append("								<input type=\"text\" class=\"form-control\" id=\"search_" + subNameIdString + "_" + colsNameString + "\" name=\"" + colsNameString + "\" placeholder=\"" + colsDescString + "\" />\r\n");
				stringBuilder.append("							</div>\r\n");
				stringBuilder.append("						</div>\r\n");
				stringBuilder.append("					</div>\r\n");
			}
		}
		stringBuilder.append("					<div class=\" col-md-1 text-right\">\r\n");
		stringBuilder.append("						<button class=\"btn btn-primary\" id=\"make_sure_search_" + subNameIdString + "_button_id\">确定</button>\r\n");
		stringBuilder.append("					</div>\r\n");
		stringBuilder.append("				</div>\r\n");

		stringBuilder.append("				<div id=\"" + subNameIdString + "_toolbar\" class=\"btn-group\">\r\n");
		stringBuilder.append("					<button type=\"button\" class=\"btn btn-default\" id=\"addnew_" + subNameIdString + "\">\r\n");
		stringBuilder.append("						<i class=\"glyphicon glyphicon-plus\"></i> 新增\r\n");
		stringBuilder.append("					</button>\r\n");
		stringBuilder.append("					<button type=\"button\" class=\"btn btn-default\" id=\"editold_" + subNameIdString + "\">\r\n");
		stringBuilder.append("						<i class=\"glyphicon glyphicon-pencil\"></i> 修改\r\n");
		stringBuilder.append("					</button>\r\n");
		stringBuilder.append("					<button type=\"button\" class=\"btn btn-default\" id=\"deleteold_" + subNameIdString + "\">\r\n");
		stringBuilder.append("						<i class=\"glyphicon glyphicon-remove\"></i> 删除\r\n");
		stringBuilder.append("					</button>\r\n");
		stringBuilder.append("				</div>\r\n");
		stringBuilder.append("				<table class=\"table table-striped table-bordered\" id=\"" + subNameIdString + "_datagrid\" data-toggle=\"" + subNameIdString + "_datagrid\"></table>\r\n");
		stringBuilder.append("			</div>\r\n");
		stringBuilder.append("		</div>\r\n");
		stringBuilder.append("	</section>\r\n");
		stringBuilder.append("	\r\n");
		// 模态框
		stringBuilder.append("	<!-- 添加模态框 -->\r\n");
		stringBuilder.append("	<div class=\"modal fade\" id=\"" + subNameIdString + "_modal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"my_" + subNameIdString + "\" aria-hidden=\"true\">\r\n");
		stringBuilder.append("		<div class=\"modal-dialog\">\r\n");
		stringBuilder.append("			<div class=\"modal-content\" style=\"width:85%\">\r\n");
		stringBuilder.append("				<div class=\"modal-header\">\r\n");
		stringBuilder.append("					<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>\r\n");
		stringBuilder.append("					<h4 class=\"modal-title\" id=\"my_" + subNameIdString + "\">编辑信息</h4>\r\n");
		stringBuilder.append("				</div>\r\n");
		stringBuilder.append("				<div class=\"modal-body\">\r\n");
		stringBuilder.append("					<input type=\"text\" style=\"display:none;\" id=\"" + subNameIdString + "_uuid\" name=\"uuid\" />\r\n");
		stringBuilder.append("					<input type=\"text\" style=\"display:none;\" id=\"" + subNameIdString + "_deleteFlag\" name=\"deleteFlag\" />\r\n");
		stringBuilder.append("					<input type=\"text\" style=\"display:none;\" id=\"" + subNameIdString + "_discription\" name=\"discription\" />\r\n");
		for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : colsInfos) {
			// 属性
			String colsName = sysDbmsTabsColsInfo.getColsName().toLowerCase();
			if ("uuid".equals(colsName) || "discription".equals(colsName) || "create_time".equals(colsName) || "create_user".equals(colsName) || "update_time".equals(colsName) || "update_user".equals(colsName) || "delete_flag".equals(colsName)) {
				continue;
			}
			String[] colsNames = sysDbmsTabsColsInfo.getColsName().toLowerCase().split("_");
			String colsNameString = "";
			for (int i = 0; i < colsNames.length; i++) {
				if (i > 0) {
					colsNameString += colsNames[i].substring(0, 1).toUpperCase() + colsNames[i].substring(1);
				} else {
					colsNameString = colsNames[i];
				}
			}
			String colsDescString = sysDbmsTabsColsInfo.getColsDesc();
			if (colsDescString == null || "".equals(colsDescString)) {
				colsDescString = colsNameString;
			}
			
			stringBuilder.append("					<div class=\" row form-group\">\r\n");
			stringBuilder.append("						<label class=\"col-sm-3 control-label text-right font16\" style=\"height: 34px;padding-top: 5px;\">" + colsDescString + ":</label>\r\n");
			stringBuilder.append("						<div class=\"col-sm-9\">\r\n");
			stringBuilder.append("							<input type=\"text\" class=\"form-control\" id=\"" + subNameIdString + "_" + colsNameString + "\" name=\"" + colsNameString + "\" placeholder=\"" + colsDescString + "\"/>\r\n");
			stringBuilder.append("						</div>\r\n");
			stringBuilder.append("					</div>\r\n");
		}

		stringBuilder.append("				</div>\r\n");
		stringBuilder.append("				<div class=\"modal-footer\">\r\n");
		stringBuilder.append("					<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">关闭</button>\r\n");
		stringBuilder.append("					<button type=\"button\" class=\"btn btn-primary\" id=\"" + subNameIdString + "_save_button\">提交</button>\r\n");
		stringBuilder.append("				</div>\r\n");
		stringBuilder.append("			</div>\r\n");
		stringBuilder.append("		</div>\r\n");
		stringBuilder.append("	</div>\r\n");
		stringBuilder.append("	\r\n");
		// 右键菜单区域
		stringBuilder.append("	<!-- context menu -->\r\n");
		stringBuilder.append("	<ul id=\"context-menu\" class=\"dropdown-menu\">\r\n");
		stringBuilder.append("		<li data-item=\"edit\"><a>待定。。。</a></li>\r\n");
		stringBuilder.append("	</ul>\r\n");
		// 结尾
		stringBuilder.append("	<script type=\"text/javascript\" src=\"/pages/" + subPathString.replace(".", "/") + "/" + sysDbmsGenerateCodeInfo.getClassName().toLowerCase() + ".js\"></script>\r\n");
		stringBuilder.append("</body>\r\n");
		stringBuilder.append("</html>\r\n");
		stringBuilder.append("\r\n");

		// 文件写入
		String fineName = pathString + "/" + sysDbmsGenerateCodeInfo.getClassName().toLowerCase() + ".html";
		TxtFilesWriter.writeToFile(stringBuilder.toString(), fineName);
	}

	/**
	 * @方法名 generateDetail
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param sysDbmsGenerateCodeInfo
	 * @参数 @param tabsInfo
	 * @参数 @param colsInfos
	 * @参数 @param username
	 * @参数 @param pathtempString
	 * @返回 void
	 * @author Administrator
	 * @throws
	 */
	public static void generateDetail(SysDbmsGenerateCodeInfo sysDbmsGenerateCodeInfo, SysDbmsTabsInfo tabsInfo, List<SysDbmsTabsColsInfo> colsInfos, String username, String pathString) {
		String thirdString = "";
		String[] subpathString = sysDbmsGenerateCodeInfo.getClassPath().split("\\.");
		for (int i = 0; i < 3; i++) {
			thirdString += subpathString[i] + ".";
		}
		String subPathString = sysDbmsGenerateCodeInfo.getClassPath().toLowerCase().replace(thirdString, "");
		String tabsNameString = sysDbmsGenerateCodeInfo.getClassName().substring(0, 1).toLowerCase() + sysDbmsGenerateCodeInfo.getClassName().substring(1);
		String subNameIdString = subPathString.replace(".", "_") + "_" + tabsNameString;
		StringBuilder stringBuilder = new StringBuilder();
		stringBuilder.append("<!DOCTYPE html>\r\n");
		stringBuilder.append("<html>\r\n");
		stringBuilder.append("<head>\r\n");
		stringBuilder.append("<meta charset=\"UTF-8\" />\r\n");
		stringBuilder.append("<title></title>\r\n");
		stringBuilder.append("</head>\r\n");
		stringBuilder.append("<body>\r\n");
		stringBuilder.append("	<section class=\"content\">\r\n");
		stringBuilder.append("		<div class=\"box box-warning\" id=\"section_" + subNameIdString + "\">\r\n");
		stringBuilder.append("			<div class=\"box-header with-border\">\r\n");
		stringBuilder.append("				<h3 class=\"box-title\">企业信息</h3>\r\n");
		stringBuilder.append("				<div class=\"box-tools pull-right\">\r\n");
		stringBuilder.append("					<button type=\"button\" class=\"btn btn-box-tool\" data-widget=\"collapse\">\r\n");
		stringBuilder.append("						<i class=\"fa fa-minus\"></i>\r\n");
		stringBuilder.append("					</button>\r\n");
		stringBuilder.append("					<button type=\"button\" class=\"btn btn-box-tool\" data-widget=\"remove\">\r\n");
		stringBuilder.append("						<i class=\"fa fa-times\"></i>\r\n");
		stringBuilder.append("					</button>\r\n");
		stringBuilder.append("				</div>\r\n");
		stringBuilder.append("			</div>\r\n");
		stringBuilder.append("			<div class=\"box-body\">\r\n");
		
		stringBuilder.append("				<input type=\"text\" style=\"display:none;\" id=\"" + subNameIdString + "_uuid\" name=\"uuid\" th:value=\"${" + tabsNameString + ".uuid}\"/>\r\n");
		stringBuilder.append("				<input type=\"text\" style=\"display:none;\" id=\"" + subNameIdString + "_deleteFlag\" name=\"deleteFlag\"  th:value=\"${" + tabsNameString + ".deleteFlag}\"/>\r\n");
		stringBuilder.append("				<input type=\"text\" style=\"display:none;\" id=\"" + subNameIdString + "_discription\" name=\"discription\" th:value=\"${" + tabsNameString + ".discription}\"/>\r\n");
		
		for (SysDbmsTabsColsInfo sysDbmsTabsColsInfo : colsInfos) {
			// 属性
			String colsName = sysDbmsTabsColsInfo.getColsName().toLowerCase();
			if ("uuid".equals(colsName) || "discription".equals(colsName) || "create_time".equals(colsName) || "create_user".equals(colsName) || "update_time".equals(colsName) || "update_user".equals(colsName) || "delete_flag".equals(colsName)) {
				continue;
			}
			String[] colsNames = sysDbmsTabsColsInfo.getColsName().toLowerCase().split("_");
			String colsNameString = "";
			for (int i = 0; i < colsNames.length; i++) {
				if (i > 0) {
					colsNameString += colsNames[i].substring(0, 1).toUpperCase() + colsNames[i].substring(1);
				} else {
					colsNameString = colsNames[i];
				}
			}
			
			String colsDescString = sysDbmsTabsColsInfo.getColsDesc();
			if (colsDescString == null || "".equals(colsDescString)) {
				colsDescString = colsNameString;
			}

			stringBuilder.append("					<div class=\" row form-group\">\r\n");
			stringBuilder.append("						<label class=\"col-sm-3 control-label text-right font16\" style=\"height: 34px;padding-top: 5px;\">" + colsDescString + ":</label>\r\n");
			stringBuilder.append("						<div class=\"col-sm-9\">\r\n");
			stringBuilder.append("							<input type=\"text\" class=\"form-control\" id=\"" + subNameIdString + "_" + colsNameString + "\" name=\"" + colsNameString + "\" th:value=\"${" + tabsNameString + "['" + colsNameString + "']}\" placeholder=\"" + colsDescString + "\" disabled=\"disabled\"/>\r\n");
			stringBuilder.append("						</div>\r\n");
			stringBuilder.append("					</div>\r\n");
		}

		stringBuilder.append("				<div class=\"row text-center\">\r\n");
		stringBuilder.append("					<button type=\"button\" class=\"btn btn-primary\" id=\"" + subNameIdString + "_edit_button\">编辑</button>\r\n");
		stringBuilder.append("					<button type=\"button\" class=\"btn btn-primary\" id=\"" + subNameIdString + "_save_button\" style=\"display: none;\">提交</button>\r\n");
		stringBuilder.append("					<button type=\"button\" class=\"btn btn-danger\" id=\"" + subNameIdString + "_exit_button\">关闭</button>\r\n");
		stringBuilder.append("				</div>\r\n");
		stringBuilder.append("			</div>\r\n");
		stringBuilder.append("		</div>\r\n");
		stringBuilder.append("	</section>\r\n");
		stringBuilder.append("	\r\n");
		stringBuilder.append("	\r\n");
		
		// theamleaf传值部分
		stringBuilder.append("	<script th:inline=\"javascript\">\r\n");
		stringBuilder.append("		var " + tabsNameString + " = [[${" + tabsNameString + "}]];\r\n");
		stringBuilder.append("	</script>\r\n");

		// 结尾
		stringBuilder.append("	<script type=\"text/javascript\" src=\"/pages/" + subPathString.replace(".", "/") + "/" + sysDbmsGenerateCodeInfo.getClassName().toLowerCase() + "detail.js\"></script>\r\n");
		stringBuilder.append("</body>\r\n");
		stringBuilder.append("</html>\r\n");
		stringBuilder.append("\r\n");

		// 文件写入
		String fineName = pathString + "/" + sysDbmsGenerateCodeInfo.getClassName().toLowerCase() + "detail.html";
		TxtFilesWriter.writeToFile(stringBuilder.toString(), fineName);

	}
	
}
