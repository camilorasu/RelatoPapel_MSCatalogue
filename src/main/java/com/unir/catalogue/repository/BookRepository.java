package com.unir.catalogue.repository;

import com.unir.catalogue.repository.model.Book;
import com.unir.catalogue.repository.predicate.SearchCriteria;
import com.unir.catalogue.repository.predicate.SearchFields;
import com.unir.catalogue.repository.predicate.SearchOperation;
import com.unir.catalogue.repository.predicate.SearchStatement;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.math.BigDecimal;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class BookRepository {
    private final BookJpaRepository bookJpaRepository;

    public List<Book> getBooks (String title, String description, Integer pages, String isbn, BigDecimal price, Integer stock, String category, String author, String publisher){

        SearchCriteria<Book> spec = buildCriteria(title, description, pages, isbn, price, stock, category, author, publisher);

        return  bookJpaRepository.findAll(spec);
    }

    public  List<Book> getBooks() {
        return bookJpaRepository.findAllActiveWithDetails();
    }

    public  List<Book> getBooks(Integer size, Integer page) {
        if(page < 0 || size <=0) {
            throw  new IllegalArgumentException("Page number must be non-negative and size must be positive.");
        }
        return  bookJpaRepository.findAll(Pageable.ofSize(size).withPage(page)).getContent();
    }

    public List<Book> getBooks (String title, String description, Integer pages, String isbn, BigDecimal price, Integer stock, Integer pageSize, Integer numberPage, String category, String author, String publisher) {

        SearchCriteria<Book> spec = buildCriteria(title, description, pages, isbn, price, stock, category, author, publisher);

        return  bookJpaRepository.findAll(spec, Pageable.ofSize(pageSize).withPage(numberPage)).getContent();
    }

    private SearchCriteria<Book> buildCriteria(String title, String description,
                                               Integer pages, String isbn,
                                               BigDecimal price, Integer stock, String category, String author, String publisher) {

        SearchCriteria<Book> spec = new SearchCriteria<>();

        if (StringUtils.hasText(title)) {
            spec.add(new SearchStatement(SearchFields.TITLE, title, SearchOperation.MATCH));
        }

        if (StringUtils.hasText(description)) {
            spec.add(new SearchStatement(SearchFields.DESCRIPTION, description, SearchOperation.MATCH));
        }

        if (pages != null && pages > 0) {
            spec.add(new SearchStatement(SearchFields.PAGES, pages, SearchOperation.GREATER_THAN_EQUAL));
        }

        if (StringUtils.hasText(isbn)) {
            spec.add(new SearchStatement(SearchFields.ISBN, isbn, SearchOperation.MATCH));
        }

        if (price != null && price.compareTo(BigDecimal.ZERO) > 0) {
            spec.add(new SearchStatement(SearchFields.PRICE, price, SearchOperation.LESS_THAN_EQUAL));
        }

        if (stock != null && stock > 0) {
            spec.add(new SearchStatement(SearchFields.STOCK, stock, SearchOperation.GREATER_THAN_EQUAL));
        }

        if(StringUtils.hasText(category)){
            spec.add(new SearchStatement(SearchFields.CATEGORIES, category, SearchOperation.MATCH));
        }

        if(StringUtils.hasText(author)){
            spec.add(new SearchStatement(SearchFields.AUTHORS, author, SearchOperation.MATCH));
        }

        if(StringUtils.hasText(publisher)){
            spec.add(new SearchStatement(SearchFields.PUBLISHER, publisher, SearchOperation.MATCH));
        }
        return spec;
    }
}
