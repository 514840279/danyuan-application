package org.danyuan.application.common.config;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;

import javax.sql.DataSource;

import org.danyuan.application.common.utils.dbutils.MysqlConnUtils;
import org.danyuan.application.common.utils.dbutils.OracleConnUtils;
import org.danyuan.application.dbms.tabs.dao.SysDbmsTabsJdbcInfoDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsJdbcInfo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MultiDatasourceConfig {
	
	private static final Logger	logger	= LoggerFactory.getLogger(MultiDatasourceConfig.class);

	@Autowired
	SysDbmsTabsJdbcInfoDao		sysDbmsTabsJdbcInfoDao;
	
	@SuppressWarnings("unchecked")
	public Map<String, DataSource> multiDatasource() {
		Map<String, DataSource> map = new HashMap<>();
		try {
			List<SysDbmsTabsJdbcInfo> list = sysDbmsTabsJdbcInfoDao.findAll();
			Class<DataSource> type = (Class<DataSource>) Class.forName("org.apache.tomcat.jdbc.pool.DataSource");
			for (SysDbmsTabsJdbcInfo sysZhcxAddr : list) {
				String driverClassName = "";
				String url = "";
				switch (sysZhcxAddr.getType()) {
					case "oracle":
						driverClassName = "oracle.jdbc.driver.OracleDriver";
						url = "jdbc:oracle:thin:@" + sysZhcxAddr.getIp() + ":" + sysZhcxAddr.getPort() + ":" + sysZhcxAddr.getDatabaseName();
						break;
					case "mysql":
//						driverClassName = "com.mysql.jdbc.Driver";
						driverClassName = "com.mysql.cj.jdbc.Driver";
						url = "jdbc:mysql://" + sysZhcxAddr.getIp() + ":" + sysZhcxAddr.getPort() + "/" + sysZhcxAddr.getDatabaseName() + "?useUnicode=true&characterEncoding=UTF-8&useSSL=false&serverTimezone=UTC&zeroDateTimeBehavior=convertToNull&autoReconnect=true&failOverReadOnly=false&allowPublicKeyRetrieval=true&rewriteBatchedStatements=true";
						break;
					default:
						driverClassName = "oracle.jdbc.driver.OracleDriver";
						url = "jdbc:oracle:thin:@" + sysZhcxAddr.getIp() + ":" + sysZhcxAddr.getPort() + ":" + sysZhcxAddr.getDatabaseName();
						break;
				}
				DataSource dataSource = DataSourceBuilder.create().driverClassName(driverClassName).url(url).username(sysZhcxAddr.getUsername()).password(sysZhcxAddr.getPassword()).type(type).build();

				map.put(sysZhcxAddr.getUuid(), dataSource);
			}
		} catch (ClassNotFoundException e) {
			logger.error("程序未发现jar包 《tomcat-jdbc》 ，springboot2之后默认数据源使用 “com.zaxxer.hikari.HikariDataSource”，使用其他数据源需要单独引入包", LogsClearScheduled.class);
		}
		return map;
	}
	
	/**
	 * @throws SQLException
	 * @方法名 destroyMultiDatasource
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param multiDatasource
	 * @返回 void
	 * @author Administrator
	 * @throws
	 */
	public void destroyMultiDatasource(Map<String, DataSource> multiDatasource) throws SQLException {
		Set<String> keySet = multiDatasource.keySet();
		for (String string : keySet) {
			multiDatasource.get(string).getConnection().close();
		}
	}

	/**
	 * @throws ClassNotFoundException
	 * @方法名 getDataSource
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param uuid
	 * @参数 @return
	 * @返回 DataSource
	 * @author Administrator
	 * @throws
	 */
	@SuppressWarnings("unchecked")
	public DataSource getDataSource(String uuid) {
		Optional<SysDbmsTabsJdbcInfo> optional = sysDbmsTabsJdbcInfoDao.findById(uuid);
		if (optional.isPresent()) {
			try {
				SysDbmsTabsJdbcInfo sysZhcxAddr = optional.get();
				Class<DataSource> type = (Class<DataSource>) Class.forName("org.apache.tomcat.jdbc.pool.DataSource");
				String driverClassName = "";
				String url = "";
				switch (sysZhcxAddr.getType()) {
					case "oracle":
						driverClassName = "oracle.jdbc.driver.OracleDriver";
						url = "jdbc:oracle:thin:@" + sysZhcxAddr.getIp() + ":" + sysZhcxAddr.getPort() + ":" + sysZhcxAddr.getDatabaseName();
						break;
					case "mysql":
						// driverClassName = "com.mysql.jdbc.Driver";
						driverClassName = "com.mysql.cj.jdbc.Driver";
						url = "jdbc:mysql://" + sysZhcxAddr.getIp() + ":" + sysZhcxAddr.getPort() + "/" + sysZhcxAddr.getDatabaseName() + "?useUnicode=true&characterEncoding=UTF-8&useSSL=false&serverTimezone=UTC&zeroDateTimeBehavior=convertToNull&autoReconnect=true&failOverReadOnly=false&allowPublicKeyRetrieval=true&rewriteBatchedStatements=true";
						break;
					default:
						driverClassName = "oracle.jdbc.driver.OracleDriver";
						url = "jdbc:oracle:thin:@" + sysZhcxAddr.getIp() + ":" + sysZhcxAddr.getPort() + ":" + sysZhcxAddr.getDatabaseName();
						break;
				}
				return DataSourceBuilder.create().driverClassName(driverClassName).url(url).username(sysZhcxAddr.getUsername()).password(sysZhcxAddr.getPassword()).type(type).build();
			} catch (ClassNotFoundException e) {
				logger.error("程序未发现jar包 《tomcat-jdbc》 ，springboot2之后默认数据源使用 “com.zaxxer.hikari.HikariDataSource”，使用其他数据源需要单独引入包", LogsClearScheduled.class);
			}
		}
		return null;
		
	}
	
	/**
	 * @throws SQLException
	 * @方法名 getConnection
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param uuid
	 * @参数 @return
	 * @返回 Connection
	 * @author Administrator
	 * @throws
	 */
	public Connection getConnection(String uuid) throws SQLException {
		Optional<SysDbmsTabsJdbcInfo> optional = sysDbmsTabsJdbcInfoDao.findById(uuid);
		if (optional.isPresent()) {
			SysDbmsTabsJdbcInfo sysZhcxAddr = optional.get();
			String url = "";
			String username = sysZhcxAddr.getUsername();
			String password = sysZhcxAddr.getPassword();
			String dbtypeString = sysZhcxAddr.getType().toLowerCase();
			if ("oracle".equals(dbtypeString)) {
				url = "jdbc:oracle:thin:@" + sysZhcxAddr.getIp() + ":" + sysZhcxAddr.getPort() + ":" + sysZhcxAddr.getDatabaseName();
				return OracleConnUtils.getConnection(url, username, password);
			} else if ("mysql".equals(dbtypeString)) {
				// driverClassName = "com.mysql.jdbc.Driver";
				url = "jdbc:mysql://" + sysZhcxAddr.getIp() + ":" + sysZhcxAddr.getPort() + "/" + sysZhcxAddr.getDatabaseName() + "?useUnicode=true&characterEncoding=UTF-8&useSSL=false&serverTimezone=UTC&zeroDateTimeBehavior=convertToNull&autoReconnect=true&failOverReadOnly=false&allowPublicKeyRetrieval=true&rewriteBatchedStatements=true";
				return MysqlConnUtils.getConnection(url, username, password);
			} else if ("sqlserver".equals(dbtypeString)) {
				// driverClassName = "com.mysql.jdbc.Driver";
				url = "jdbc:sqlserver://" + sysZhcxAddr.getIp() + ":" + sysZhcxAddr.getPort() + ";DatabaseName=" + sysZhcxAddr.getDatabaseName();
				return MysqlConnUtils.getConnection(url, username, password);
			}
		}
		return null;
	}
}
