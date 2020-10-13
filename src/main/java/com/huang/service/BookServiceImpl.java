package com.huang.service;

import com.huang.dao.BookMapper;
import com.huang.pojo.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author :huangao
 */
@Service
public class BookServiceImpl implements BookService{

    @Autowired
    private BookMapper bookMapper;

    public List<Book> getAllBooks() {
        return bookMapper.getAllBooks();
    }
}
