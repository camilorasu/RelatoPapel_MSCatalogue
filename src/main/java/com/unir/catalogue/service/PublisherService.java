package com.unir.catalogue.service;

import com.unir.catalogue.controller.model.AuthorResponseDto;
import com.unir.catalogue.controller.model.PublisherResponseDto;
import com.unir.catalogue.mapper.PublisherMapper;
import com.unir.catalogue.repository.PublisherJpaRepository;
import com.unir.catalogue.repository.model.Author;
import com.unir.catalogue.repository.model.Publisher;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PublisherService {

    private final PublisherJpaRepository publisherJpaRepository;

    @Transactional(readOnly = true)
    public List<PublisherResponseDto> getPublishers()
    {
      List<Publisher> publishers = publisherJpaRepository.findAll();
      return PublisherMapper.toResponseList(publishers);
    }

    @Transactional(readOnly = true)
    public Publisher getPublisher (Integer id)
    {
        Publisher publisher = publisherJpaRepository.findById(id)
                .orElseThrow(()-> new EntityNotFoundException());
        return PublisherMapper.toResponse(publisher);
    }
}
