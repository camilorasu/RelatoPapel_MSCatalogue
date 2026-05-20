package com.unir.catalogue.exception;

public class AuthorNotFoundException extends RuntimeException{

    public AuthorNotFoundException(int id) {
        super("Autor no encontrado con id: " + id);
    }
}
