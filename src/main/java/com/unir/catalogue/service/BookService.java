package com.unir.catalogue.service;

import com.unir.catalogue.controller.model.BookRequestDto;
import com.unir.catalogue.controller.model.BookResponseDto;
import com.unir.catalogue.controller.model.BooksResponseDto;
import com.unir.catalogue.exception.AuthorNotFoundException;
import com.unir.catalogue.exception.BookNotFoundException;
import com.unir.catalogue.exception.CategoryNotFoundException;
import com.unir.catalogue.exception.PublisherNotFoundException;
import com.unir.catalogue.mapper.BookMapper;
import com.unir.catalogue.repository.*;
import com.unir.catalogue.repository.model.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.List;

@Service
@RequiredArgsConstructor
public class BookService {
    private final BookRepository bookRepository;
    private final BookJpaRepository bookJpaRepository;
    private final AuthorJpaRepository authorJpaRepository;
    private final CategoryJpaRepository categoryJpaRepository;
    private final PublisherJpaRepository publisherJpaRepository;

    @Transactional(readOnly = true)
    public List<BookResponseDto> getBooks(){
        List<Book> books = bookRepository.getBooks();
        return BookMapper.toResponseList(books);
    }

    @Transactional(readOnly = true)
    public List<BookResponseDto> getBooks(Integer page, Integer size){
        List<Book> books = bookRepository.getBooks(size,page);
        return BookMapper.toResponseList(books);
    }

    @Transactional(readOnly = true)
    public  List<BookResponseDto> SearchBooks(String title,
                                              String description,
                                              Integer pages,
                                              String isbn,
                                              BigDecimal price,
                                              Integer stock){

        List<Book> books = bookRepository.getBooks(title,description,pages,isbn,price,stock);

        return BookMapper.toResponseList(books);
    }

    @Transactional(readOnly = true)
    public  List<BookResponseDto> SearchBooks(String title,
                                              String description,
                                              Integer pages,
                                              String isbn,
                                              BigDecimal price,
                                              Integer stock,
                                              Integer pageSize,
                                              Integer pageNumber
                                              ){

        List<Book> books = bookRepository.getBooks(title,description,pages,isbn,price,stock,pageSize,pageNumber);

        return BookMapper.toResponseList(books);
    }

    @Transactional(readOnly = true)
    public BookResponseDto getBook(Integer id){
        Book book= bookJpaRepository.findByIdWithDetails(id)
                .orElseThrow(()-> new BookNotFoundException(id));

        return BookMapper.toResponse(book);
    }

    @Transactional(readOnly = true)
    public BookResponseDto getBookIncludingInactive(Integer id){
        Book book = bookJpaRepository.findByIdIncludingInactive(id)
                .orElseThrow(()-> new BookNotFoundException(id));
        return BookMapper.toResponse(book);
    }

    @Transactional
    public BookResponseDto createBook(BookRequestDto dto){
        Publisher publisher = publisherJpaRepository.findById(dto.getIdPublisher())
                .orElseThrow(()-> new PublisherNotFoundException(dto.getIdPublisher()));

        List<Author> authors = authorJpaRepository.findAllById(dto.getIdAuthors());

        if (authors.size() != dto.getIdAuthors().size()) {
            throw new AuthorNotFoundException();
        }

        List<Category> categories = categoryJpaRepository.findAllById(dto.getIdCategories());

        if(categories.size() != dto.getIdCategories().size()){
            throw new CategoryNotFoundException();
        }

        List<Image> images = dto.getUrlImages().stream()
                .map(url-> Image.builder()
                        .urlImage(url)
                        .build())
                .toList();

        Book book = BookMapper.toEntity(dto, publisher, categories, authors, images);

        images.forEach(image -> image.setBook(book));

        book.setIsActive(true);

        Book saveBook = bookJpaRepository.save(book);

        return BookMapper.toResponse(saveBook);

    }

    @Transactional
    public BookResponseDto updateBook(Integer id, BookRequestDto dto) {

        Book book = bookJpaRepository.findById(id)
                .orElseThrow(() -> new BookNotFoundException(id));

        Publisher publisher = publisherJpaRepository.findById(dto.getIdPublisher())
                .orElseThrow(() ->
                        new PublisherNotFoundException(dto.getIdPublisher()));

        List<Author> authors = authorJpaRepository.findAllById(dto.getIdAuthors());

        List<Category> categories = categoryJpaRepository.findAllById(dto.getIdCategories());

        List<Image> images = dto.getUrlImages().stream()
                .map(url -> Image.builder()
                        .urlImage(url)
                        .book(book)
                        .build())
                .toList();

        book.setTitle(dto.getTitle());
        book.setDescription(dto.getDescription());
        book.setPages(dto.getPages());
        book.setIsbn(dto.getIsbn());
        book.setPrice(dto.getPrice());
        book.setStock(dto.getStock());
        book.setPublisher(publisher);
        book.setAuthors(authors);
        book.setCategories(categories);
        book.setImages(images);

        Book updatedBook = bookJpaRepository.save(book);

        return BookMapper.toResponse(updatedBook);
    }

    @Transactional
    public void deleteBook(Integer id) {

        Book book = bookJpaRepository.findById(id)
                .orElseThrow(() -> new BookNotFoundException(id));

        book.setIsActive(false);

        bookJpaRepository.save(book);
    }
}
