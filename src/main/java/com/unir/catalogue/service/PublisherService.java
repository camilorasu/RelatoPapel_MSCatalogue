package com.unir.catalogue.service;

import com.unir.catalogue.controller.model.PublisherRequestDto;
import com.unir.catalogue.controller.model.PublisherResponseDto;
import com.unir.catalogue.exception.PublisherNotFoundException;
import com.unir.catalogue.mapper.PublisherMapper;
import com.unir.catalogue.repository.PublisherJpaRepository;
import com.unir.catalogue.repository.model.Publisher;
import lombok.RequiredArgsConstructor;
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
    public PublisherResponseDto getPublisher (Integer id)
    {
        Publisher publisher = publisherJpaRepository.findById(id)
                .orElseThrow(()-> new PublisherNotFoundException(id));
        return PublisherMapper.toResponse(publisher);
    }

    @Transactional
    public PublisherResponseDto createPublisher (PublisherRequestDto dto)
    {
        Publisher publisher = PublisherMapper.toEntity(dto);
        Publisher savePublisher = publisherJpaRepository.save(publisher);
        return PublisherMapper.toResponse(savePublisher);
    }

    @Transactional
    public PublisherResponseDto updatePublisher(Integer id, PublisherRequestDto dto)
    {
        Publisher publisher = publisherJpaRepository.findById(id)
                .orElseThrow(()-> new PublisherNotFoundException(id));
        publisher.setName(dto.getName());

        Publisher updatePublisher = publisherJpaRepository.save(publisher);

        return PublisherMapper.toResponse(updatePublisher);
    }

    @Transactional
    public void deletePublisher(int id)
    {
        Publisher publisher = publisherJpaRepository.findById(id)
                .orElseThrow(()-> new PublisherNotFoundException(id));

        if (!publisher.getBooks().isEmpty()) {
            throw new IllegalStateException(
                    "No se puede eliminar la editorial porque tiene libros asociados"
            );
        }

        publisherJpaRepository.delete(publisher);
    }
}
