package com.unir.catalogue.exception;

public class BookInsufficientStockException extends RuntimeException{
 public BookInsufficientStockException(Integer id){
     super("Stock insuficiente en el libro con id: " +id);
 }
 public BookInsufficientStockException(){
     super("Stock insuficiente");
 }
}
