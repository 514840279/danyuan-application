package org.danyuan.application.dbms.tabs.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.common.config.MultiDatasourceConfig;
import org.danyuan.application.dbms.tabs.po.VSysDbmsTableDis;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
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
	 * @方法名 runsql
	 * @功能 TODO(这里用一句话描述这个方法的作用)
	 * @参数 @param sVSysDbmsTableDis
	 * @参数 @return
	 * @返回 String
	 * @author Administrator
	 * @throws
	 */
	public String runsql(VSysDbmsTableDis sVSysDbmsTableDis) {
		Map<String, DataSource> map = multiDatasourceConfig.multiDatasource();
		DataSource dataSource = map.get(sVSysDbmsTableDis.getJdbcUuid());
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		jdbcTemplate.execute(sVSysDbmsTableDis.getDisSql());
		List<String> sqList = new ArrayList<>();
//		sqList.add(sVSysDbmsTableDis.getDisSql());
		sqList.add(sVSysDbmsTableDis.getDropSql());
		sqList.add(sVSysDbmsTableDis.getRenameSql());
		sqList.add(sVSysDbmsTableDis.getResetSql());
		jdbcTemplate.batchUpdate(sqList.toArray(new String[sqList.size()]));
		return "1";
	}
	
}
