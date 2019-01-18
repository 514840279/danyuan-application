package org.danyuan.application.xiaoshuo.book.service;

import org.danyuan.application.common.base.BaseService;
import org.danyuan.application.common.base.BaseServiceImpl;
import org.danyuan.application.xiaoshuo.book.po.BookList;
import org.danyuan.application.xiaoshuo.book.dao.BookListDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @文件名 BookListService.java
 * @包名 org.danyuan.application.xiaoshuo.book.service
 * @描述 service层
 * @时间 2019年01月18日 14:24:42
 * @author admin
 * @版本 V1.0
 */
@Service
public class BookListService extends BaseServiceImpl<BookList> implements BaseService<BookList> {
	@Autowired
	private BookListDao	bookListDao;

}

