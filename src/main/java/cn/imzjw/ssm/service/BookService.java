package cn.imzjw.ssm.service;

import cn.imzjw.ssm.entity.Book;

import java.util.List;

/**
 * @author https://blog.imzjw.cn
 * @date 2020/12/21 17:19
 */
public interface BookService {

    /**
     * 增加书籍
     *
     * @param book
     * @return
     */
    int addBook(Book book);

    /**
     * 删除书籍
     *
     * @param bookId
     * @return
     */
    int deleteBookById(int bookId);

    /**
     * 更新书籍
     *
     * @param book
     * @return
     */
    int updateBook(Book book);

    /**
     * 根据书籍ID查询
     *
     * @param bookId
     * @return
     */
    Book selectBookById(int bookId);

    /**
     * 查询全部
     *
     * @return
     */
    List<Book> selectAllBook();

    /**
     * 搜索
     *
     * @param bookName
     * @return
     */
    Book selectBookName(String bookName);
}