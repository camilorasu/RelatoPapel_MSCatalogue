package com.unir.catalogue.exception;

public class CategoryNotFoundException extends RuntimeException{

    public CategoryNotFoundException(int id) {
        super("Categoria no encontrada con id: " + id);
    }

}
