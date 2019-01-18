package org.danyuan.application.common.config;

import java.io.File;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;

import javax.sql.DataSource;

import org.danyuan.application.common.utils.files.FileDelete;
import org.danyuan.application.dbms.tabs.dao.SysDbmsAdviMessInfoDao;
import org.danyuan.application.dbms.tabs.dao.SysDbmsTabsColsInfoDao;
import org.danyuan.application.dbms.tabs.dao.SysDbmsTabsInfoDao;
import org.danyuan.application.dbms.tabs.dao.SysDbmsTabsJdbcInfoDao;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsColsInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsInfo;
import org.danyuan.application.dbms.tabs.po.SysDbmsTabsJdbcInfo;
import org.danyuan.application.dbms.tabs.service.ZhcxAdviceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.data.domain.Example;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

/**
 * 文件名 ： LogsClearScheduled.java
 * 包 名 ： com.shumeng.application.common.config
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年4月23日 下午2:45:13
 * 版 本 ： V1.0
 */
@Component
public class LogsClearScheduled {
	private static final Logger				logger		= LoggerFactory.getLogger(LogsClearScheduled.class);
	@Autowired
	JdbcTemplate							jdbcTemplate;
	@Autowired
	SysDbmsTabsColsInfoDao					sysDbmsTabsColsInfoDao;
	@Autowired
	SysDbmsTabsJdbcInfoDao					sysDbmsTabsJdbcInfoDao;
	@Autowired
	SysDbmsAdviMessInfoDao					sysDbmsAdviMessInfoDao;
	@Autowired
	SysDbmsTabsInfoDao						sysDbmsTabsInfoDao;
	@Value(value = "${user.file.outputfile}")
	public String							OUTPUTFILE;
	private static final SimpleDateFormat	dateFormat	= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	long									nd			= 1000 * 60 * 60 * 24;
	long									nh			= 1000 * 60 * 60;
	
	@Scheduled(cron = "1 0 0 * * *")
	// @Scheduled(fixedDelay = 1000)
	public void delete() {
		String sql = "DELETE FROM sys_comn_logs WHERE TIMESTAMPDIFF(DAY,create_time,NOW())>30";
		jdbcTemplate.update(sql);

		File file = new File(OUTPUTFILE);
		File[] files = file.listFiles();
		for (File file2 : files) {
			if (file2.isDirectory()) {
				FileDelete.delFolder(file2.getAbsolutePath());
			} else {
				file2.delete();
			}
		}
	}
	
	@Scheduled(cron = "0 8-18/1 * * * *")
	// @Scheduled(fixedDelay = 10000000)
	public void zhcxConfix() throws ClassNotFoundException {
		sysDbmsAdviMessInfoDao.deleteAllInBatch();
		List<SysDbmsTabsInfo> list = sysDbmsTabsInfoDao.findByAddrUuidIsNotNullAndUpdateTimeGreaterThan();
		Map<String, DataSource> multiDatasource = getMultiDatasource();
		for (SysDbmsTabsInfo sysZhcxTab : list) {
			Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("GMT+8"));
			logger.info("当前时间：" + dateFormat.format(calendar.getTime()));
			if ("oracle".equals(sysZhcxTab.getDbType().toLowerCase())) {
				// if (calendar.get(Calendar.HOUR_OF_DAY) <= 8 || calendar.get(Calendar.HOUR_OF_DAY) > 16) {
				// 表配置比较建议修正 (表修改，表配置修改)
				ZhcxAdviceService.startConfixOracleTableConfig(sysZhcxTab, multiDatasource, sysDbmsAdviMessInfoDao, jdbcTemplate);
				SysDbmsTabsColsInfo info = new SysDbmsTabsColsInfo();
				info.setTabsUuid(sysZhcxTab.getUuid());
				Example<SysDbmsTabsColsInfo> example = Example.of(info);
				List<SysDbmsTabsColsInfo> colList = sysDbmsTabsColsInfoDao.findAll(example);
				// 列配置比较建议修正(列修改，列配置修改,列统计配置修改，列长度修改)
				ZhcxAdviceService.startConfixOracleTableColumnsConfig(sysZhcxTab, multiDatasource, sysDbmsAdviMessInfoDao, jdbcTemplate, colList);

				// }
			} else if ("mysql".equals(sysZhcxTab.getDbType().toLowerCase())) {
				// 表配置比较建议修正 (表修改，表配置修改)
				ZhcxAdviceService.startConfixMysqlTableConfig(sysZhcxTab, multiDatasource, sysDbmsAdviMessInfoDao, jdbcTemplate);
				SysDbmsTabsColsInfo info = new SysDbmsTabsColsInfo();
				info.setTabsUuid(sysZhcxTab.getUuid());
				Example<SysDbmsTabsColsInfo> example = Example.of(info);
				List<SysDbmsTabsColsInfo> colList = sysDbmsTabsColsInfoDao.findAll(example);
				// 列配置比较建议修正(列修改，列配置修改,列统计配置修改，列长度修改)
				ZhcxAdviceService.startConfixMysqlTableColumnsConfig(sysZhcxTab, multiDatasource, sysDbmsAdviMessInfoDao, jdbcTemplate, colList);

			}
		}
		destroyMultiDatasource(multiDatasource);
		System.err.println("本次处理配置表信息执行完毕！");
	}
	
	/**
	 * @方法名 destroyMultiDatasource
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param multiDatasource
	 * @返回 void
	 * @author Administrator
	 * @throws
	 */
	private void destroyMultiDatasource(Map<String, DataSource> multiDatasource) {
		Set<String> keySet = multiDatasource.keySet();
		for (String string : keySet) {
			DataSource dataSource = multiDatasource.get(string);
			try {
				dataSource.getConnection().close();
			} catch (SQLException e) {
				System.err.println(e.getMessage());
			}
		}
	}

	private Map<String, DataSource> getMultiDatasource() throws ClassNotFoundException {
		List<SysDbmsTabsJdbcInfo> list = sysDbmsTabsJdbcInfoDao.findAll();
		Map<String, DataSource> map = new HashMap<>();
		@SuppressWarnings("unchecked")
		Class<? extends DataSource> type = (Class<? extends DataSource>) Class.forName("org.apache.tomcat.jdbc.pool.DataSource");
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
