package com.javaee.news.services;

import com.javaee.news.models.Image;
import com.javaee.news.models.News;
import com.javaee.news.repositories.NewsRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class NewsService {
    private final NewsRepository newsRepository;

    public List<News> listNews(String title) {
        if (title != null) return newsRepository.findByTitle(title);
        return newsRepository.findAll();
    }

    public void saveNews(News news) throws IOException {
//        , MultipartFile file1
//        Image image1;
//        if (file1.getSize() != 0) {
//            image1 = toImageEntity(file1);
//            image1.setPreviewImage(true);
//            news.addImageToProduct(image1);
//        }
        log.info("Saving new Product. Title: {}; Author: {}", news.getTitle(), news.getAuthor());
//        News newsFromDb = newsRepository.save(news);
//        newsFromDb.setPreviewImageId(newsFromDb.getImages().get(0).getId());
        newsRepository.save(news);
    }

    private Image toImageEntity(MultipartFile file) throws IOException {
        Image image = new Image();
        image.setName(file.getName());
        image.setOriginalFileName(file.getOriginalFilename());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setBytes(file.getBytes());
        return image;
    }

    public void deleteNews(Long id) {
        newsRepository.deleteById(id);
    }

    public News getNewsById(Long id) {
        return newsRepository.findById(id).orElse(null);
    }
}