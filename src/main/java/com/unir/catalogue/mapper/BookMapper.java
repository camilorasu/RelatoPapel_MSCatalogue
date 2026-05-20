package com.unir.catalogue.mapper;

import com.unir.catalogue.controller.model.*;
import com.unir.catalogue.repository.model.*;

import java.util.List;

public class BookMapper {

    private BookMapper() {}

    public static BookResponseDto toResponse(Book book){
        return BookResponseDto.builder()
                .id(book.getId())
                .title(book.getTitle())
                .description(book.getDescription())
                .pages(book.getPages())
                .isbn(book.getIsbn())
                .price(book.getPrice())
                .stock(book.getStock())
                .isActive(book.getIsActive())
                .createdAt(book.getCreatedAt())
                .updatedAt(book.getUpdatedAt())
                .publisher(
                        PublisherMapper.toResponse(book.getPublisher())
                )
                .imageUrls(
                        book.getImages().stream()
                                .map(Image::getUrlImage)
                                .toList()
                )
                .authors(
                        AuthorMapper.toResponseList(book.getAuthors())
                )
                .categories(
                        CategoryMapper.toResponseList(book.getCategories())
                )
                .build();
    }

    public static List<BookResponseDto> toResponseList(List<Book> books)
    {
        return books.stream()
                .map(BookMapper::toResponse)
                .toList();
    }

    public static Book toEntity(BookRequestDto dto,
                                Publisher publisher,
                                List<Category> categories,
                                List<Author> authors,
                                List<Image> images)
    {
      return   Book.builder()
                .title(dto.getTitle())
                .description(dto.getDescription())
                .pages(dto.getPages())
                .isbn(dto.getIsbn())
                .price(dto.getPrice())
                .stock(dto.getStock())
                .isActive(true)
                .publisher(publisher)
                .categories(categories)
                .authors(authors)
                .images(images)
                .build();
    }
}
