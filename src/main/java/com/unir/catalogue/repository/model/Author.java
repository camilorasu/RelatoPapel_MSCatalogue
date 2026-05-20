package com.unir.catalogue.repository.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.*;

import java.util.List;

@Entity
@Table(name = "author")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Author {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_author")
    private Integer id;

    @NotBlank(message = "El nombre de autor es requerido")
    @Size(max = 100)
    @Column(name = "name", nullable = false,length = 100)
    private String name;

    @ManyToMany(mappedBy = "authors", fetch = FetchType.LAZY)
    private List<Book> books;
}
