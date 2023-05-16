package com.javaee.news.controllers;

import com.javaee.news.models.News;
import com.javaee.news.services.NewsService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
@RequiredArgsConstructor
public class NewsController {
    private final NewsService newsService;

    @GetMapping("/")
    public String news(@RequestParam(name = "title", required = false) String title, Model model) {
        model.addAttribute("news", newsService.listNews(title));
        return "news";
    }

    @GetMapping("/news/{id}")
    public String newsInfo(@PathVariable Long id, Model model) {
        News news = newsService.getNewsById(id);
        model.addAttribute("news", news);
        model.addAttribute("images", news.getImages());
        return "news-info";
    }

    @PostMapping("/news/create")
    public String createNews(@RequestParam("file1") MultipartFile file1, News news) throws IOException {
        newsService.saveNews(news);
        return "redirect:/";
    }

    @PostMapping("/news/delete/{id}")
    public String deleteNews(@PathVariable Long id) {
        newsService.deleteNews(id);
        return "redirect:/";
    }
}