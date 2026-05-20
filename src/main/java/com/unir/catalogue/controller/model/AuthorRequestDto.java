package com.unir.catalogue.controller.model;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import jakarta.validation.constraints.NotBlank;
import lombok.*;

import java.io.Serializable;

@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonPropertyOrder({
        "name"
})
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class AuthorRequestDto implements Serializable {

    @NotBlank(message = "El nombre es requerido")
    @JsonProperty("name")
    private String name;
}
