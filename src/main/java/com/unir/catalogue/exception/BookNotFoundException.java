package com.unir.catalogue.exception;

public class BookNotFoundException extends RuntimeException{


    public BookNotFoundException(int id) {
        super("Libro no encontrado con id: " + id);
    }

}
