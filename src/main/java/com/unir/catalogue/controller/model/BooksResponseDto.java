package com.unir.catalogue.controller.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import lombok.*;

import java.io.Serializable;
import java.util.List;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({
        "books",
        "page",
        "size",
        "totalElements",
        "totalPages"
})
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class BooksResponseDto implements Serializable {

    @JsonProperty("books")
    private List<BookResponseDto> books;

    @JsonProperty("page")
    private Integer page;

    @JsonProperty("size")
    private Integer size;

    @JsonProperty("totalElements")
    private Long totalElements;

    @JsonProperty("totalPages")
    private Integer totalPages;
}
