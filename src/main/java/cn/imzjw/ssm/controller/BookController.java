package cn.imzjw.ssm.controller;

import cn.imzjw.ssm.entity.Book;
import cn.imzjw.ssm.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * @author https://blog.imzjw.cn
 * @date 2020/12/21 17:20
 */
@Controller
public class BookController {

    @Autowired
    private BookService bookService;

    /**
     * 启动Tomcat的时候，直接重定向到所有书籍列表
     *
     * @return
     */
    @GetMapping("/")
    public String index() {
        return "redirect:listBook";
    }

    /**
     * 查询全部书籍，并且返回到一个书籍展示页面
     *
     * @param model
     * @return
     */
    @RequestMapping("listBook")
    public String list(Model model) {
        model.addAttribute("list", bookService.selectAllBook());
        return "allBook";
    }

    /**
     * 跳转到增加书籍页面
     *
     * @return
     */
    @RequestMapping("/toAddBook")
    public String toAddPaper() {
        return "addBook";
    }

    /**
     * 添加书籍
     *
     * @param book
     * @return
     */
    @PostMapping("/addBook")
    public String addBook(Book book) {
        bookService.addBook(book);
        return "redirect:listBook";
    }

    /**
     * 跳转到修改页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/toUpdate")
    public String toUpdatePaper(int id, Model model) {
        model.addAttribute("toBook", bookService.selectBookById(id));
        return "updateBook";
    }

    /**
     * 修改书籍
     *
     * @param book
     * @return
     */
    @PostMapping("/updateBook")
    public String updateBook(Book book) {
        bookService.updateBook(book);
        return "redirect:listBook";
    }

    /**
     * 删除书籍
     *
     * @param id
     * @return
     */
    @RequestMapping("delBook")
    public String delBook(int id) {
        bookService.deleteBookById(id);
        return "redirect:listBook";
    }

    /**
     * 查询书籍
     *
     * @param bookName
     * @param model
     * @return
     */
    @RequestMapping("/selectBook")
    public String selectBook(String bookName, Model model) {
        Book book = bookService.selectBookName("%" + bookName);
        List<Book> list = new ArrayList<>();
        list.add(book);
        if (book == null) {
            model.addAttribute("error", "*未查询到相关数据");
        }
        model.addAttribute("list", list);
        return "allBook";
    }
}
