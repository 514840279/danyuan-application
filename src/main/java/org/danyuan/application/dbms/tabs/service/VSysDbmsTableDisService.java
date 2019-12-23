package org.danyuan.application.dbms.tabs.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.common.config.MultiDatasourceConfig;
import org.danyuan.application.dbms.tabs.po.VSysDbmsTableDis;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @文件名 VSysDbmsTableDisService.java
 * @包名 org.danyuan.application.dbms.tabs.service
 * @描述 service层
 * @时间 2019年11月18日 13:19:27
 * @author test
 * @版本 V1.0
 */
@Service
public class VSysDbmsTableDisService extends BaseServiceImpl<VSysDbmsTableDis> implements BaseService<VSysDbmsTableDis> {

	@Autowired
	MultiDatasourceConfig multiDatasourceConfig;

	/**
	 * @throws SQLException
	 * @方法名 runsql
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param sVSysDbmsTableDis
	 * @参数 @return
	 * @返回 String
	 * @author Administrator
	 * @throws
	 */
	public String runsql(VSysDbmsTableDis sVSysDbmsTableDis) throws SQLException {
		Connection connection = multiDatasourceConfig.getConnection(sVSysDbmsTableDis.getJdbcUuid());
		Statement statement = connection.createStatement();
		statement.execute(sVSysDbmsTableDis.getDisSql());
		statement.close();
		statement = connection.createStatement();
		statement.addBatch(sVSysDbmsTableDis.getDropSql());
		statement.addBatch(sVSysDbmsTableDis.getRenameSql());
		statement.addBatch(sVSysDbmsTableDis.getResetSql());
		statement.executeBatch();
		return "1";
	}
	
}
