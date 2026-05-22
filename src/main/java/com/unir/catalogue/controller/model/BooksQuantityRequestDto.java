package com.unir.catalogue.controller.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import jakarta.validation.constraints.NotEmpty;
import lombok.*;

import java.io.Serializable;
import java.util.List;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder("Books")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class BooksQuantityRequestDto implements Serializable {
    @NotEmpty(message = "Se requiere los libros")
    @JsonProperty("books")
    private List<BookQuantityRequestDto> books;
}
