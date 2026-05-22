package com.unir.catalogue.repository;

import com.unir.catalogue.repository.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface BookJpaRepository extends JpaRepository<Book, Integer>, JpaSpecificationExecutor<Book> {

    @Query("SELECT DISTINCT b FROM Book b " +
            "LEFT JOIN  b.publisher " +
            "LEFT JOIN  b.authors " +
            "LEFT JOIN  b.categories " +
            "LEFT JOIN  b.images " +
            "WHERE b.isActive = true")
    List<Book> findAllActiveWithDetails();


    @Query("SELECT b FROM Book b " +
           "LEFT JOIN  b.publisher " +
            "LEFT JOIN  b.authors " +
            "LEFT JOIN  b.categories " +
            "LEFT JOIN  b.images " +
            "WHERE b.id = :id and b.isActive = true ")
    Optional<Book> findByIdWithDetails(@Param("id") Integer id);

    @Query("SELECT DISTINCT b FROM Book b " +
            "LEFT JOIN  b.publisher " +
            "LEFT JOIN  b.authors " +
            "LEFT JOIN  b.categories " +
            "LEFT JOIN  b.images " +
            "WHERE b.id = :id")
    Optional<Book> findByIdIncludingInactive(@Param("id") Integer id    );
}
