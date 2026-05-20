package com.unir.catalogue.repository.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.*;

@Entity
@Table(name = "image")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Image {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_image")
    private Integer id;

    @NotNull(message = "El libro es requerido")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_book", nullable = false)
    private Book book;

    @NotBlank(message = "La url de la imagen es necesaria")
    @Column(name = "url_image", nullable = false, columnDefinition = "TEXT")
    private String urlImage;
}
