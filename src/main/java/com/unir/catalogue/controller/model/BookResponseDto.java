package com.unir.catalogue.controller.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import lombok.*;

import java.io.Serializable;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({
        "id",
        "title",
        "description",
        "pages",
        "isbn",
        "price",
        "stock",
        "publisher",
        "imageUrls",
        "authors",
        "categories",
        "createdAt",
        "updatedAt",
        "isActive"
})
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class BookResponseDto implements Serializable {

    @JsonProperty("id")
    private Integer id;

    @JsonProperty("title")
    private String title;

    @JsonProperty("description")
    private String description;

    @JsonProperty("pages")
    private Integer pages;

    @JsonProperty("isbn")
    private String isbn;

    @JsonProperty("price")
    private BigDecimal price;

    @JsonProperty("stock")
    private Integer stock;

    @JsonProperty("publisher")
    private PublisherResponseDto publisher;

    @JsonProperty("imageUrls")
    private List<String> imageUrls;

    @JsonProperty("authors")
    private List<AuthorResponseDto> authors;

    @JsonProperty("categories")
    private List<CategoryResponseDto> categories;

    @JsonProperty("isActive")
    private Boolean isActive;

    @JsonProperty("createdAt")
    private LocalDateTime createdAt;

    @JsonProperty("updatedAt")
    private LocalDateTime updatedAt;
}