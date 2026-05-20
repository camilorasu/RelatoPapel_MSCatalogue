package com.unir.catalogue.exception;

public class PublisherNotFoundException extends RuntimeException{
    public PublisherNotFoundException(int id) {
        super("Editorial no encontrada con id: " + id);
    }

    public PublisherNotFoundException() {
        super("Editorial no encontrada");
    }
}
