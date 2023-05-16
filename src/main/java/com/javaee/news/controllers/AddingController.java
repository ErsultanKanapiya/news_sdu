package com.javaee.news.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AddingController {
    @RequestMapping("/add")
    public String addNews(){
        return "add";
    }
}
