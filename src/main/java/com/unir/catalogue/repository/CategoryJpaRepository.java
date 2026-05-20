package com.unir.catalogue.repository;

import com.unir.catalogue.repository.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryJpaRepository extends JpaRepository<Category,Integer> {
}
