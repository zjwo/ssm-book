package cn.imzjw.ssm.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author https://blog.imzjw.cn
 * @date 2020/12/21 17:20
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Book {
    /**
     * 书籍编号
     */
    private int bookId;
    /**
     * 书籍名称
     */
    private String bookName;
    /**
     * 书籍个数
     */
    private int bookCounts;
    /**
     * 描述
     */
    private String detail;
}