package com.huang.controller;

import com.huang.pojo.Book;
import com.huang.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author :huangao
 */
@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    @GetMapping("/allBooks")
    public String getAllBooks(Model model){

       List<Book> bookList = bookService.getAllBooks();
       model.addAttribute("list", bookList);
       return "allbooks";
    }
}
