package com.unir.catalogue.exception;

public class PublisherNotFountException extends RuntimeException{
    public PublisherNotFountException(int id) {
        super("Editorial no encontrada con id: " + id);
    }
}
