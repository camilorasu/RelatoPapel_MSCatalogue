package com.unir.catalogue.controller.model;

import lombok.*;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.List;

@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class BookPatchDto implements Serializable {
    private String title;

    private String description;

    private Integer pages;

    private String isbn;

    private BigDecimal price;

    private Integer stock;

    private Integer idPublisher;

    private List<Integer> idAuthors;

    private List<Integer> idCategories;

    private List<String> urlImages;
}
