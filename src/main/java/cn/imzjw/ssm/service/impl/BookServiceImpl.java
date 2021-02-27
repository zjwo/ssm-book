package cn.imzjw.ssm.service.impl;

import cn.imzjw.ssm.entity.Book;
import cn.imzjw.ssm.mapper.BookMapper;
import cn.imzjw.ssm.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author https://blog.imzjw.cn
 * @date 2020/12/21 17:29
 */
@Service
public class BookServiceImpl implements BookService {

	@Autowired
	private BookMapper bookMapper;

	@Override
	public int addBook(Book book) {
		return bookMapper.addBook(book);
	}

	@Override
	public int deleteBookById(int bookId) {
		return bookMapper.deleteBookById(bookId);
	}

	@Override
	public int updateBook(Book book) {
		return bookMapper.updateBook(book);
	}

	@Override
	public Book selectBookById(int bookId) {
		return bookMapper.selectBookById(bookId);
	}

	@Override
	public List<Book> selectAllBook() {
		return bookMapper.selectAllBook();
	}

	@Override
	public Book selectBookName(String bookName) {
		return bookMapper.selectBookName(bookName);
	}
}