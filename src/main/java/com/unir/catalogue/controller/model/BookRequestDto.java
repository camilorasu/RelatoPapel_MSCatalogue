package com.unir.catalogue.controller.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.unir.catalogue.repository.model.Author;
import com.unir.catalogue.repository.model.Category;
import com.unir.catalogue.repository.model.Image;
import com.unir.catalogue.repository.model.Publisher;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.io.Serializable;
import java.util.List;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({
        "title",
        "description",
        "pages",
        "isbn",
        "price",
        "stock",
        "publisher",
        "image",
        "authors",
        "categories"
})
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class BookRequestDto implements Serializable {

    @NotBlank(message = "Title requerido")
    @JsonProperty("title")
    private String title;

    @JsonProperty("description")
    private String description;

    @NotNull(message = "Pages requerido")
    @JsonProperty("pages")
    private Integer pages;

    @NotBlank(message = "ISBN requerido")
    @JsonProperty("isbn")
    private String isbn;

    @NotNull(message = "Price requerido")
    @JsonProperty("price")
    private Double price;

    @NotNull(message = "Stock requerido")
    @JsonProperty("stock")
    private Integer stock;

    @NotNull(message = "Publisher requerido")
    @JsonProperty("publisher")
    private Integer idPublisher;

    @NotEmpty(message = "Images requerido")
    @JsonProperty("image")
    private List<String> urlImages;

    @NotEmpty(message = "Authors requerido")
    @JsonProperty("authors")
    private List<Integer> idAuthors;

    @NotEmpty(message = "Categories requerido")
    @JsonProperty("categories")
    private List<Integer> idCategories;
}
