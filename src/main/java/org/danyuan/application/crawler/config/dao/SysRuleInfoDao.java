package org.danyuan.application.crawler.config.dao;

import java.io.Serializable;

import org.danyuan.application.crawler.config.po.SysRuleInfo;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

/**
 * @文件名 SysRuleInfoDao.java
 * @包名 org.danyuan.application.crawler.config.dao
 * @描述 TODO(用一句话描述该文件做什么)
 * @时间 2019年7月19日 下午1:32:57
 * @author Administrator
 * @版本 V1.0
 */
@Repository
public interface SysRuleInfoDao extends MongoRepository<SysRuleInfo, Serializable> {

}
