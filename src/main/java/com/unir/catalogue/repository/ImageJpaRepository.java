package com.unir.catalogue.repository;

import com.unir.catalogue.repository.model.Image;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ImageJpaRepository extends JpaRepository<Image, Integer> {
    List<Image> findByBookId(Integer bookId);
}
