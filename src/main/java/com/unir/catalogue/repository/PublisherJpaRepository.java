package com.unir.catalogue.repository;

import com.unir.catalogue.repository.model.Publisher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PublisherJpaRepository extends JpaRepository<Publisher,Integer> {
}
