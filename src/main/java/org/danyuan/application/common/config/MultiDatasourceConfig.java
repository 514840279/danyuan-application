package org.danyuan.application.common.config;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.danyuan.application.dbms.tabs.dao.SysDbmsTabsJdbcInfoDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsJdbcInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MultiDatasourceConfig {
	@Autowired
	SysDbmsTabsJdbcInfoDao sysDbmsTabsJdbcInfoDao;

	public Map<String, DataSource> multiDatasource() throws ClassNotFoundException {
		List<SysDbmsTabsJdbcInfo> list = sysDbmsTabsJdbcInfoDao.findAll();
		Map<String, DataSource> map = new HashMap<>();
		@SuppressWarnings("unchecked")
		Class<DataSource> type = (Class<DataSource>) Class.forName("org.apache.tomcat.jdbc.pool.DataSource");
		for (SysDbmsTabsJdbcInfo sysZhcxAddr : list) {
			String driverClassName = "";
			String url = "";
			switch (sysZhcxAddr.getDbType()) {
				case "oracle":
					driverClassName = "oracle.jdbc.driver.OracleDriver";
					url = "jdbc:oracle:thin:@" + sysZhcxAddr.getIp() + ":" + sysZhcxAddr.getPort() + ":" + sysZhcxAddr.getDatabaseName();
					break;
				case "mysql":
					driverClassName = "com.mysql.jdbc.Driver";
					url = "jdbc:mysql://" + sysZhcxAddr.getIp() + ":" + sysZhcxAddr.getPort() + "/" + sysZhcxAddr.getDatabaseName() + "?useUnicode=true&characterEncoding=UTF-8&useSSL=false&zeroDateTimeBehavior=convertToNull";
					break;
				default:
					driverClassName = "oracle.jdbc.driver.OracleDriver";
					url = "jdbc:oracle:thin:@" + sysZhcxAddr.getIp() + ":" + sysZhcxAddr.getPort() + ":" + sysZhcxAddr.getDatabaseName();
					break;
			}
			DataSource dataSource = DataSourceBuilder.create().driverClassName(driverClassName).url(url).username(sysZhcxAddr.getUsername()).password(sysZhcxAddr.getPassword()).type(type).build();
			
			map.put(sysZhcxAddr.getUuid(), dataSource);
		}
		return map;
	}
}
