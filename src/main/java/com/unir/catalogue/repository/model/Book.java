package com.unir.catalogue.repository.model;

import com.unir.catalogue.exception.BookInsufficientStockException;
import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "book")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Book {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_book")
    private Integer id;

    @NotBlank(message = "Titulo del libro requerido")
    @Size(max = 100)
    @Column(name = "title", nullable = false, length = 100)
    private String title;

    @Column(name = "description", columnDefinition = "TEXT")
    private String description;

    @NotNull(message = "Numero de paginas requerido")
    @Positive
    @Column(name = "pages", nullable = false)
    private Integer pages;

    @NotBlank(message = "ISBN requerido")
    @Size(max = 30)
    @Column(name = "isbn", nullable = false, length = 30, unique = true)
    private String isbn;

    @NotNull(message = "precio  requerido")
    @DecimalMin("0.0")
    @Column(name = "price", nullable = false)
    private BigDecimal price;

    @NotNull(message = "Stock requerido")
    @Min(0)
    @Column(name = "stock", nullable = false)
    private Integer stock;

    @ManyToOne(fetch = FetchType.LAZY)
    @NotNull(message = "Editorial requerida")
    @JoinColumn(name = "id_publisher", nullable = false)
    private Publisher publisher;

    @CreationTimestamp
    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt;

    @UpdateTimestamp
    @Column(name = "updated_at", nullable = false)
    private LocalDateTime updatedAt;

    @Column(name = "is_active", nullable = false)
    private Boolean isActive;

    @OneToMany(mappedBy = "book", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<Image> images;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "book_category",
            joinColumns = @JoinColumn(name = "id_book"),
            inverseJoinColumns = @JoinColumn(name = "id_category")
    )
    private List <Category> categories;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "book_author",
            joinColumns = @JoinColumn(name = "id_book"),
            inverseJoinColumns = @JoinColumn(name = "id_author")
    )
    private List <Author> authors;

    public void decreaseStock(int quantity){
        if(quantity<0){
            throw new IllegalArgumentException("La cantidad debe ser positiva");
        }
        if (stock < quantity) {
            throw new BookInsufficientStockException(this.id);
        }

        this.stock -= quantity;
    }

    public void increaseStock(int quantity) {

        if (quantity <= 0) {
            throw new IllegalArgumentException("La cantidad debe ser positiva");
        }

        this.stock += quantity;
    }
}
