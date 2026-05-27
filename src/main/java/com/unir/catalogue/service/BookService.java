package com.unir.catalogue.service;


import com.unir.catalogue.controller.model.*;
import com.unir.catalogue.exception.*;
import com.unir.catalogue.mapper.BookMapper;
import com.unir.catalogue.repository.*;
import com.unir.catalogue.repository.model.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.ArrayList;
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
                                              Integer stock,
                                              String category,
                                              String author,
                                              String publisher){

        List<Book> books = bookRepository.getBooks(title,description,pages,isbn,price,stock, category, author, publisher);

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
                                              Integer pageNumber,
                                              String category,
                                              String author,
                                              String publisher
                                              ){

        List<Book> books = bookRepository.getBooks(title,description,pages,isbn,price,stock,pageSize,pageNumber, category,author,publisher);

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

        List<Author> authors = new ArrayList<>(
                authorJpaRepository.findAllById(dto.getIdAuthors())
        );

        List<Category> categories = new ArrayList<>(
                categoryJpaRepository.findAllById(dto.getIdCategories())
        );

        List<Image> images = new ArrayList<>(
                dto.getUrlImages().stream()
                        .map(url -> Image.builder()
                                .urlImage(url)
                                .book(book)
                                .build()).toList()
        );

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
    public BookResponseDto updateBook(Integer id, BookPatchDto dto)
    {
       Book book = bookJpaRepository.findById(id)
               .orElseThrow(()-> new BookNotFoundException(id));
       if(dto.getTitle() != null){
           book.setTitle(dto.getTitle());
       }
       if(dto.getDescription()!=null){
           book.setDescription(dto.getDescription());
       }
       if(dto.getPages()!=null){
           book.setPages(dto.getPages());
       }
       if(dto.getIsbn()!=null){
           book.setIsbn(dto.getIsbn());
       }
       if(dto.getPrice()!=null){
           book.setPrice(dto.getPrice());
       }
       if(dto.getStock()!=null){
           book.setStock(dto.getStock());
       }

       if(dto.getIdPublisher()!=null){
           Publisher publisher = publisherJpaRepository
                   .findById(dto.getIdPublisher())
                   .orElseThrow(()->new PublisherNotFoundException(
                           dto.getIdPublisher()
                   ));
           book.setPublisher(publisher);
       }

        if (dto.getIdAuthors() != null) {
            List<Author> authors =
                    authorJpaRepository.findAllById(
                            dto.getIdAuthors()
                    );
            if (authors.size() != dto.getIdAuthors().size()) {
                throw new AuthorNotFoundException();
            }
            book.setAuthors(authors);
        }

        if(dto.getIdCategories()!=null){
            List<Category> categories =
                    categoryJpaRepository.findAllById(
                            dto.getIdCategories()
                    );
            if(categories.size() != dto.getIdCategories().size()) {
                throw  new CategoryNotFoundException();
            }
            book.setCategories(categories);
        }

        if(dto.getUrlImages()!=null){
            List<Image> images = dto.getUrlImages()
                    .stream().map(
                            url-> Image.builder()
                                    .urlImage(url)
                                    .book(book)
                                    .build()
                    ).toList();

            book.setImages(images);
        }

        Book updateBook = bookJpaRepository.save(book);

        return BookMapper.toResponse(updateBook);
    }

    @Transactional
    public void deleteBook(Integer id) {

        Book book = bookJpaRepository.findById(id)
                .orElseThrow(() -> new BookNotFoundException(id));

        book.setIsActive(false);

        bookJpaRepository.save(book);
    }

    @Transactional
    public void increaseStock(BooksQuantityRequestDto dto){

        for(BookQuantityRequestDto item : dto.getBooks()){

            Book book = bookJpaRepository.findById(item.getId())
                    .orElseThrow(()-> new BookNotFoundException(item.getId()));


            book.increaseStock(item.getQuantity());
            bookJpaRepository.save(book);
        }
    }

    @Transactional
    public void decreaseStock(BooksQuantityRequestDto dto){

        for(BookQuantityRequestDto item : dto.getBooks()){

            Book book = bookJpaRepository.findById(item.getId())
                    .orElseThrow(()-> new BookNotFoundException(item.getId()));

            book.decreaseStock(item.getQuantity());
            bookJpaRepository.save(book);
        }
    }
}
