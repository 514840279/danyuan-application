package org.danyuan.application.xiaoshuo.book.controller;

import org.danyuan.application.common.base.BaseController;
import org.danyuan.application.common.base.BaseControllerImpl;
import org.danyuan.application.xiaoshuo.book.po.BookList;
import org.danyuan.application.xiaoshuo.book.service.BookListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @文件名 BookListController.java
 * @包名 org.danyuan.application.xiaoshuo.book.controller
 * @描述 controller层
 * @时间 2019年01月18日 14:24:42
 * @author admin
 * @版本 V1.0
 */
@RestController
@RequestMapping("/bookList")
public class BookListController extends BaseControllerImpl<BookList> implements BaseController<BookList> {

	@Autowired
	BookListService bookListService;

}
