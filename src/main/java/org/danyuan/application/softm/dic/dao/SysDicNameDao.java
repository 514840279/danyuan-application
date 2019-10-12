/**
 * 文件名：SysDicNameDao.java
 *
 * 版本信息：
 * 日期：2018年5月16日
 * Copyright 足下 Corporation 2018
 * 版权所有
 */
package org.danyuan.application.softm.dic.dao;

import org.danyuan.application.common.base.BaseDao;
import org.danyuan.application.softm.dic.po.SysDicName;
import org.springframework.stereotype.Repository;

/**
 * 文件名 ： SysDicNameDao.java
 * 包 名 ： com.shumeng.application.softm.dic.dao
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 机能名称：
 * 技能ID ：
 * 作 者 ： Administrator
 * 时 间 ： 2018年5月16日 上午9:28:09
 * 版 本 ： V1.0
 */
@Repository(value = "sysDicNameDao")
public interface SysDicNameDao extends BaseDao<SysDicName> {
	
}
