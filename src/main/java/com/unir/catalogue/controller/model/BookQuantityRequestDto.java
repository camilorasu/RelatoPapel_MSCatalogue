package com.unir.catalogue.controller.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import jakarta.validation.constraints.NotNull;
import lombok.*;

import java.io.Serializable;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({
        "id",
        "quantity"
})
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class BookQuantityRequestDto implements Serializable {

    @NotNull(message = "Debe ir el id del libro")
    @JsonProperty("id")
    private Integer id;

    @NotNull(message = "La cantidad es requerida")
    @JsonProperty("quantity")
    private Integer quantity;
}
