/**
 * 文件名：SysPlantLableConfService.java 版本信息： 日期：2018年5月18日 Copyright 足下 Corporation 2018 版权所有
 */
package org.danyuan.application.dbms.echarts.service;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.dbms.echarts.dao.SysPlantLableConfDao;
import org.danyuan.application.dbms.echarts.po.SysPlantLableConf;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 文件名 ： SysPlantLableConfService.java
 * 包 名 ： com.shumeng.application.application.plant.service
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年5月18日 下午3:08:09
 * 版 本 ： V1.0
 */
@Service
public class SysPlantLableConfService extends BaseServiceImpl<SysPlantLableConf> implements BaseService<SysPlantLableConf> {
	
	@Autowired
	SysPlantLableConfDao sysPlantLableConfDao;
	
}
