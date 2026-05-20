package com.unir.catalogue.exception;

import com.unir.supplies.orders.controller.model.ErrorResponse;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.time.LocalDateTime;

@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler(BookNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public ErrorResponse handleBookNotFound(BookNotFoundException ex) {

        return ErrorResponse.builder()
                .message(ex.getMessage())
                .status(404)
                .date(LocalDateTime.now())
                .build();
    }

    @ExceptionHandler(CategoryNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public ErrorResponse handleBookNotFound(CategoryNotFoundException ex) {

        return ErrorResponse.builder()
                .message(ex.getMessage())
                .status(404)
                .date(LocalDateTime.now())
                .build();
    }

    @ExceptionHandler(AuthorNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public ErrorResponse handleBookNotFound(AuthorNotFoundException ex) {

        return ErrorResponse.builder()
                .message(ex.getMessage())
                .status(404)
                .date(LocalDateTime.now())
                .build();
    }

    @ExceptionHandler(PublisherNotFoundException.class)
    @ResponseStatus(HttpStatus.NOT_FOUND)
    public ErrorResponse handleBookNotFound(PublisherNotFoundException ex) {

        return ErrorResponse.builder()
                .message(ex.getMessage())
                .status(404)
                .date(LocalDateTime.now())
                .build();
    }
}
