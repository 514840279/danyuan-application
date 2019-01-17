package org.danyuan.application.dbms.code.service;

import java.io.File;
import java.util.List;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.dbms.code.po.SysDbmsGenerateCodeInfo;
import org.danyuan.application.dbms.tabs.dao.SysDbmsTabsColsInfoDao;
import org.danyuan.application.dbms.tabs.dao.SysDbmsTabsInfoDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsColsInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

/**
 * @文件名 SysDbmsGenerateCodeInfoService.java
 * @包名 org.danyuan.application.dbms.code.service
 * @描述 TODO(用一句话描述该文件做什么)
 * @时间 2019年1月16日 下午1:25:04
 * @author Administrator
 * @版本 V1.0
 */
@Service
public class SysDbmsGenerateCodeInfoService extends BaseServiceImpl<SysDbmsGenerateCodeInfo> implements BaseService<SysDbmsGenerateCodeInfo> {
	@Autowired
	private SysDbmsTabsColsInfoDao	sysDbmsTabsColsInfoDao;
	@Autowired
	private SysDbmsTabsInfoDao		sysDbmsTabsInfoDao;

	@Value(value = "${user.file.outputfile}")
	public String					OUTPUTFILE;

	/**
	 * @方法名 generate
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param list
	 * @参数 @param username
	 * @参数 @param pathString
	 * @返回 void
	 * @author Administrator
	 * @throws
	 */
	public void generate(List<SysDbmsGenerateCodeInfo> list, String username, String pathString) {
		String path = OUTPUTFILE + "/" + pathString + "/";
		File file = new File(path);
		if (!file.exists()) {
			file.mkdirs();
		}
		for (SysDbmsGenerateCodeInfo sysDbmsGenerateCodeInfo : list) {
			String pathtempString = path + "/src/" + sysDbmsGenerateCodeInfo.getClassPath().replace(".", "/");
			file = new File(path);
			if (!file.exists()) {
				file.mkdirs();
			}
			SysDbmsTabsColsInfo colsInfo = new SysDbmsTabsColsInfo();
			colsInfo.setTabsUuid(sysDbmsGenerateCodeInfo.getUuid());
			Example<SysDbmsTabsColsInfo> example = Example.of(colsInfo);
			List<SysDbmsTabsColsInfo> colsInfos = sysDbmsTabsColsInfoDao.findAll(example);
			
			SysDbmsTabsInfo tabsInfo = new SysDbmsTabsInfo();
			tabsInfo = sysDbmsTabsInfoDao.findById(sysDbmsGenerateCodeInfo.getUuid()).get();
			
			// 实体类生成
			if (sysDbmsGenerateCodeInfo.getGenerateEntity() == 1) {
				file = new File(pathtempString + "/po");
				if (!file.exists()) {
					file.mkdirs();
				}
				GenerateEntity.generate(sysDbmsGenerateCodeInfo, tabsInfo, colsInfos, username, pathtempString + "/po");
			}
			// dao类生成
			if (sysDbmsGenerateCodeInfo.getGenerateDao() == 1) {
				file = new File(pathtempString + "/dao");
				if (!file.exists()) {
					file.mkdirs();
				}
				getGenerateDao(sysDbmsGenerateCodeInfo, tabsInfo, colsInfos, username, pathtempString + "/dao");
			}
			// service类生成
			if (sysDbmsGenerateCodeInfo.getGenerateService() == 1) {
				file = new File(pathtempString + "/service");
				if (!file.exists()) {
					file.mkdirs();
				}
				getGenerateService(sysDbmsGenerateCodeInfo, tabsInfo, colsInfos, username, pathtempString + "/service");
			}
			// controller类生成
			if (sysDbmsGenerateCodeInfo.getGenerateController() == 1) {
				file = new File(pathtempString + "/controller");
				if (!file.exists()) {
					file.mkdirs();
				}
				getGenerateController(sysDbmsGenerateCodeInfo, tabsInfo, colsInfos, username, pathtempString + "/controller");
			}

			pathtempString = path + "/resources/" + sysDbmsGenerateCodeInfo.getClassName().toLowerCase();
			file = new File(pathtempString);
			if (!file.exists()) {
				file.mkdirs();
			}

			// html类生成
			if (sysDbmsGenerateCodeInfo.getGenerateHtml() == 1) {

				GenerateHtml.generate(sysDbmsGenerateCodeInfo, tabsInfo, colsInfos, username, pathtempString);
			}
			// js类生成
			if (sysDbmsGenerateCodeInfo.getGenerateJs() == 1) {
				GenerateJs.generate(sysDbmsGenerateCodeInfo, tabsInfo, colsInfos, username, pathtempString);
			}
			pathtempString = path + "/sql/";
			file = new File(pathtempString);
			if (!file.exists()) {
				file.mkdirs();
			}

			// Sql ddl 语句
			if (sysDbmsGenerateCodeInfo.getGenerateSql() == 1) {
				GenerateSql.generate(sysDbmsGenerateCodeInfo, tabsInfo, colsInfos, username, pathtempString);
			}
			
		}

		// 打包文件

	}

	/**
	 * @方法名 getGenerateController
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
	private void getGenerateController(SysDbmsGenerateCodeInfo sysDbmsGenerateCodeInfo, SysDbmsTabsInfo tabsInfo, List<SysDbmsTabsColsInfo> colsInfos, String username, String pathString) {
		// TODO Auto-generated method stub

	}

	/**
	 * @方法名 getGenerateService
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
	private void getGenerateService(SysDbmsGenerateCodeInfo sysDbmsGenerateCodeInfo, SysDbmsTabsInfo tabsInfo, List<SysDbmsTabsColsInfo> colsInfos, String username, String pathString) {
		// TODO Auto-generated method stub

	}

	/**
	 * @方法名 getGenerateDao
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
	private void getGenerateDao(SysDbmsGenerateCodeInfo sysDbmsGenerateCodeInfo, SysDbmsTabsInfo tabsInfo, List<SysDbmsTabsColsInfo> colsInfos, String username, String pathString) {
		// TODO Auto-generated method stub

	}

}
