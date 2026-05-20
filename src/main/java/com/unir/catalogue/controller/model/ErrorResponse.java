package com.unir.supplies.orders.controller.model;

import lombok.*;

import java.io.Serializable;
import java.time.LocalDateTime;

@Builder
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ErrorResponse implements Serializable {

    private String message;

    private Integer status;

    private LocalDateTime date;
}