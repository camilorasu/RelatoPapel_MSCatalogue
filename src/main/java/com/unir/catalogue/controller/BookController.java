package com.unir.catalogue.controller;

import com.unir.catalogue.controller.model.BookPatchDto;
import com.unir.catalogue.controller.model.BookRequestDto;
import com.unir.catalogue.controller.model.BookResponseDto;
import com.unir.catalogue.controller.model.BooksQuantityRequestDto;
import com.unir.catalogue.service.BookService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.math.BigDecimal;
import java.util.List;

@RestController
@RequestMapping("/api/v1/")
@RequiredArgsConstructor
public class BookController {
    private final BookService bookService;

    @GetMapping("books/{id}")
    public ResponseEntity<BookResponseDto> getBook(@PathVariable Integer id){
        return ResponseEntity.ok(
            bookService.getBook(id)
        );
    }

    @PostMapping("books")
    public ResponseEntity<BookResponseDto>  createBook(@RequestBody BookRequestDto request){
        return ResponseEntity.status(HttpStatus.CREATED).body(
                bookService.createBook(request));

    }

    @PutMapping("books/{id}")
    public ResponseEntity<BookResponseDto> updateBook(@PathVariable Integer id,
                                                      @RequestBody BookRequestDto requestDto){
        return ResponseEntity.ok(
                bookService.updateBook(id, requestDto));
    }

    @PatchMapping("books/{id}")
    public ResponseEntity<BookResponseDto> updateBook(@PathVariable Integer id,
                                                      @RequestBody BookPatchDto requestDto){
        return ResponseEntity.ok(
                bookService.updateBook(id, requestDto));
    }

    @DeleteMapping("books/{id}")
    public ResponseEntity<Void> deleteBook(@PathVariable Integer id){
        bookService.deleteBook(id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("internal/books/{id}/detail")
    public ResponseEntity<BookResponseDto> getDetailsBook(@PathVariable Integer id){
        return ResponseEntity.ok(
                bookService.getBookIncludingInactive(id)
        );
    }

    /*
    @GetMapping("books")
    public  ResponseEntity<List<BookResponseDto>> getBooks(
            @RequestParam(required = false) Integer size,
            @RequestParam(required = false) Integer page){
        return ResponseEntity.ok(
                bookService.getBooks(page,size)
        );
    }*/

    /*
    @GetMapping("books")
    public ResponseEntity<List<BookResponseDto>> getBooks(
            @RequestParam(required = false) String title,
            @RequestParam(required = false) String description,
            @RequestParam(required = false) Integer pages,
            @RequestParam(required = false) String isbn,
            @RequestParam(required = false) BigDecimal price,
            @RequestParam(required = false) Integer stock){
        return ResponseEntity.ok(
                bookService.SearchBooks(title,description,pages,isbn,price,stock)
        );
    }*/

    @GetMapping("books")
    public ResponseEntity<List<BookResponseDto>> getBooks(
            @RequestParam(required = false) String title,
            @RequestParam(required = false) String description,
            @RequestParam(required = false) Integer pages,
            @RequestParam(required = false) String isbn,
            @RequestParam(required = false) BigDecimal price,
            @RequestParam(required = false) Integer stock,
            @RequestParam(required = false , defaultValue = "0") Integer numberPage,
            @RequestParam(required = false, defaultValue = "10") Integer sizePage,
            @RequestParam(required = false) String category,
            @RequestParam(required = false) String author,
            @RequestParam(required = false) String publisher){
        return ResponseEntity.ok(
                bookService.SearchBooks(title,description,pages,isbn,price,stock,sizePage,numberPage,category, author, publisher)
        );
    }

    @PostMapping("internal/books/stock/increase")
    public ResponseEntity<Void> increaseStock(
            @RequestBody BooksQuantityRequestDto requestDto
            ){
            bookService.increaseStock(requestDto);

            return ResponseEntity.noContent().build();
    }

    @PostMapping("internal/books/stock/decrease")
    public ResponseEntity<Void> decreaseStock(
            @RequestBody BooksQuantityRequestDto requestDto
    ){
        bookService.decreaseStock(requestDto);

        return ResponseEntity.noContent().build();
    }

}
